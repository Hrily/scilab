// ============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011-2011 - Gsoc 2011 - Iuri SILVIO
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================

// <-- CLI SHELL MODE -->
// ============================================================================
// Unitary tests for mxGetString mex function
// ============================================================================

cd(TMPDIR);
ilib_verbose(0);
mputl(["#include ""mex.h""";
"void mexFunction(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[])";
"{";
"    char string[20];";
"    plhs[0] = mxCreateDoubleScalar(mxGetString(prhs[0], string, 20));";
"    plhs[1] = mxCreateString(string);";
"}"],"mexgetString.c");
ilib_mex_build("libmextest",["getString","mexgetString","cmex"], "mexgetString.c",[]);
exec("loader.sce");

[out1, out2] = getString("String to copy.");
assert_checkequal(out1, 0);
assert_checkequal(out2, "String to copy.");

[out3, out4] = getString("A string bigger than 20 chars.");
assert_checkequal(out3, 1);
assert_checkequal(out4, "A string bigger tha");

[out5, out6] = getString(["multiline"; "string"]);
assert_checkequal(out5, 0);
assert_checkequal(out6, "multilinestring");
