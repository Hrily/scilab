//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Vladislav TRUBKIN
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- Non-regression test for bug 13605 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=13605
//
// <-- Short Description -->
// There was an inverted result value with parameters "r" or "c".

a = [1:10; 1:10];
withParam = harmean(a, "c");
withoutParam = harmean(a(1, :));
assert_checkequal(withParam(1), withoutParam);
assert_checkequal(withParam(2), withoutParam);
a = [1:10; 1:10]';
withParam = harmean(a, "r");
withoutParam = harmean(a(:, 1));
assert_checkequal(withParam(1), withoutParam);
assert_checkequal(withParam(2), withoutParam);
