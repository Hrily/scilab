// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - Calixte DENIZET
//
// This file is released under the 3-clause BSD license. See COPYING-BSD.

function latex_callback()
    messagebox("LaTeX is beautiful !", "", "info", "modal");
endfunction

function mathml_callback()
    messagebox("MathML is beautiful !", "", "info", "modal");
endfunction

// Create a figure
f = figure( ...
    "figure_name", gettext("Uicontrols demo with LaTeX"), ...
    "infobar_visible", "off", ...
    "toolbar_visible", "off", ...
    "dockable", "off", ...
    "menubar", "none", ...
    "default_axes", "on", ...
    "layout", "grid", ...
    "layout_options", createLayoutOptions("grid", [3 1]), ...
    "figure_position", [50 50]);

// Add custom menus
mlatex=uimenu(f,"label", '$\LaTeX$');
ml1=uimenu(mlatex,"label", '$\int_0^\infty\mathrm{e}^{-x^2}\,dx$', "Callback", "latex_callback()");
ml2=uimenu(mlatex,"label", '$\frac\sqrt{\pi}2$', "Callback", "latex_callback()");

mmathml=uimenu(f,"label", "MathML");
mm1=uimenu(mmathml,"label", "<msup><mn>x</mn><mi>2</mi></msup>", "Callback", "mathml_callback()");
mm2=uimenu(mmathml, "label", "<mrow><msup><mn>a</mn><mi>2</mi></msup><mo>+</mo><msup><mn>b</mn><mi>2</mi></msup><mo>=</mo><msup><mn>c</mn><mi>2</mi></msup></mrow>", ..
"Callback", "mathml_callback()");

demo_viewCode(SCI+ "/modules/gui/demos/uicontrol_LaTeX.dem.sce");

uicontrol(f, ...
    "style", "pushbutton", ...
    "string","<math><mrow><mtext>MathML</mtext><mphantom><mi>a</mi></mphantom><msup><mi>x</mi><mn>2</mn></msup></mrow></math>", ...
    "horizontalalignment", "center", ...
    "Callback", "mathml_callback();", ...
    "Fontsize", 16);

uicontrol(f, ...
    "style", "text", ...
    "string", "$\text{Text: }\Gamma(s)=\int_0^\infty t^{s-1}\mathrm{e}^{-t}\,\mathrm{d}t$", ...
    "horizontalalignment", "center", ...
    "Fontsize", 16);

uicontrol(f, ...
    "style", "pushbutton", ...
    "string",'$\scalebox{2}{\LaTeX\ x^2}$', ...
    "horizontalalignment", "center", ...
    "Callback", "latex_callback();");