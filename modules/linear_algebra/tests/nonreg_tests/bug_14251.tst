// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Clement DAVID
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 14251 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=14251
//
// <-- Short Description -->
// spec leaks memory

for n=1:10
    a=rand(100,100)+%i*rand(100,100);
    a=a+a';
    [V,D]=spec(a);
end

