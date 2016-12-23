// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8329 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=8329
//
// <-- Short Description -->
// fscanfMat crashed with file attached.
//

for i = 1:100
  ierr = execstr("v = fscanfMat(""SCI/modules/fileio/tests/nonreg_tests/bug_8329.txt"");", "errcatch");
  if ierr <> 0 then pause, end
end
