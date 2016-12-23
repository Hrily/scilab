var chart_id_list = [];
var points_list = [];
var series_list = [];
var INTERVAL = 10;
var RANGE = 30;
var eventSource;
var clientID;

var create_new_chart = function(id){
	// Function to create a new chart
	$('#charts').append("<div id='chart-"+id.toString()+"'></div>");
	$('#chart-'+id.toString()).highcharts({
		chart: {
			type: 'line',
			animation: false
		},
		title : {
			  text: 'Figure '+id.toString()
		   },
		   xAxis : {
			   title: {
				 text: 'x'
			   },
			   tickInterval: 2
		   },
		   yAxis : {
			  title: {
				 text: 'y'
			  },
			  plotLines: [{
				 width: 1,
				 color: '#808080'
			  }]
		   },
		   plotOptions : {
				marker: {
					enabled: false,
				}
		   },
		   legend : {
			  enabled: false
		   },
		   exporting : {
			  enabled: false
		   },
		   series : []
	});
	chart_id_list.push(id);
	points_list.push(new Queue());
	series_list.push([]);
}
    
function init(){
	var start = new Date().getTime();np=0;
	// Start listening to server
	eventSource = new EventSource("/SendLog?id="+clientID);
	eventSource.addEventListener("log", function(event){
		var data = event.data.split(' ');
		var figure_id = parseInt(data[2]),
			line_id = parseInt(data[6]),
			x  = parseFloat(data[8]),
			y  = parseFloat(data[9]),
			z  = parseFloat(data[10]);
		if(chart_id_list.indexOf(figure_id)<0)
			create_new_chart(figure_id);
		var index = chart_id_list.indexOf(figure_id);
		points_list[index].enqueue([line_id,x,y]);
	}, false);	
	// Stop listening
	eventSource.addEventListener("DONE", function(event){
		eventSource.close(); 	// Close connection
	}, false);
	
	setInterval(function(){
		for(var i=0;i<chart_id_list.length;i++){
			// For each chart
			// Get id and points queue
			var figure_id = chart_id_list[i],
				points = points_list[i];
			// Get chart container	
			var chart = $('#chart-'+figure_id.toString()).highcharts();
			// Add points
			for(var j=0;j<20 && !points.isEmpty();j++){
				var point = points.dequeue();
				var line_id = point[0];
					x = point[1],
					y = point[2];
				// If there is no line with line_id
				// add new line with line_id
				if(series_list[i].indexOf(line_id)<0){
					series_list[i].push(line_id);
					chart.addSeries({
						id : line_id.toString(),
						data: []
					});
				}
				var index = series_list.indexOf(line_id);
				// Get chart data
				var series = chart.get(line_id.toString());
				// If there are more points
				// Remove old points
				if(x>1.5*RANGE)
					series.removePoint(0, false);
				series.addPoint([x,y], false);
			}
			// Shift chart axis to display new values
			if(x>RANGE) chart.xAxis[0].setExtremes(Math.floor(x-RANGE),Math.floor(x));
			// Draw the chart
			chart.redraw();
		}
	}, INTERVAL);
	
}

function upload() {
	var file = document.getElementById("uploadfile");
	// Create a FormData instance 
	var formData = new FormData();
	// Add the file 
	formData.append("file", file.files[0]);

	var xhr = new XMLHttpRequest();
	xhr.open("POST", "/upload", true);
	//xhr.setRequestHeader("Content-Type", "multipart/form-data");
	xhr.send(formData);  /* Send to server */ 
	xhr.addEventListener("log", function(event){
		var data = event.data.split(' ');
		var figure_id = parseInt(data[2]),
			line_id = parseInt(data[6]),
			x  = parseFloat(data[8]),
			y  = parseFloat(data[9]),
			z  = parseFloat(data[10]);
		if(chart_id_list.indexOf(figure_id)<0)
			create_new_chart(figure_id);
		var index = chart_id_list.indexOf(figure_id);
		points_list[index].enqueue([line_id,x,y]);
	}, false);	
	// Stop listening
	xhr.addEventListener("upload_complete", function(event){
		document.getElementById('start').innerHTML = '<button onClick="init()">Start</button>';
	}, false);
	xhr.onload = function(e){
		console.log(this.responseText);
		if(this.responseText!='error'){
			clientID = this.responseText;
			init()
		}else{
			alert("Error");
		}
	}
}