//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 214 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=21'
//
// <-- Short Description -->
//     Note that with a real variable, a null element assignment works.

e=1:10;
if execstr("e([])=0","errcatch")<>0 then pause,end

e=(1:10)<0;
if execstr("e([])=%T","errcatch")<>0 then pause,end
