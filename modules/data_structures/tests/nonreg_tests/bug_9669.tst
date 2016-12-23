// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 9669 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/9669
//
// <-- Short Description -->
// Referencing a struct from itself will segfault.

// Without copy
st.a = 1;
st.b = st;
assert_checkequal(st.b.a, 1);

// With copy
clear st
st.a = 1;
stsave=st;
st.b = st;
assert_checkequal(st.b, stsave);
