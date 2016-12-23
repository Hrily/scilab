// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// unit tests for datenum function
// =============================================================================

if datenum(0,1,1) <> 1 then pause,end

if datenum(1973,8,4) <> 720840 then pause,end
if datenum(1970,1,1) <> 719529 then pause,end

if abs((datenum(2005,12,28,11,49,54) - 732674.49298611108)/ datenum(2005,12,28,11,49,54)) > %eps then pause,end

now_date = getdate();

one_sec = datenum(now_date(1),now_date(2),now_date(6),now_date(7),now_date(8),30) -  datenum(now_date(1),now_date(2),now_date(6),now_date(7),now_date(8),29);
one_sec_ref = 1/(3600*24);
if  abs( (one_sec - one_sec_ref) / one_sec ) > 1e-5 then pause,end

one_min = datenum(now_date(1),now_date(2),now_date(6),now_date(7),18,now_date(9)) -  datenum(now_date(1),now_date(2),now_date(6),now_date(7),17,now_date(9));
one_min_ref = 1/(60*24);
if  abs( (one_min - one_min_ref) / one_min ) > 1e-6 then pause,end

one_hour = datenum(now_date(1),now_date(2),now_date(6),18,now_date(8),now_date(9)) -  datenum(now_date(1),now_date(2),now_date(6),17,now_date(8),now_date(9));
one_hour_ref = 1/24;
if  abs( (one_hour - one_hour_ref) / one_hour ) > 1e-8 then pause,end

if floor(datenum(2005,12,28)) <> datenum(2005,12,28) then pause,end
