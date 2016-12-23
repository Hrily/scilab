// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 6934 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=6934
//
// <-- Short Description -->
// Denormalized floating point numbers are not present in Scilab's master.
x = 3e-308;
if x/2 == 0 then pause,end 
if number_properties("denorm") == %f then pause,end

