//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 129 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=129
//
// <-- Short Description -->
//    Problem with extraction of long lists

a=list();
for k=1:2000
  a($+1) = 1;
end

if execstr("b = list(a(1:1000));", "errcatch")<>0 then pause,end
