// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Cedric Delamarre
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.
//
//
// <-- CLI SHELL MODE -->

a=rand(3,4);
spz = spzeros(a);
assert_checkequal(size(spz), size(a));

spz = spzeros(69, 73);
assert_checkequal(size(spz), [69 73]);

spz = spzeros(["abc"; "def"]);
assert_checkequal(size(spz), [2 1]);

err = execstr("spzeros(list(1,2))", "errcatch");
assert_checktrue(err <> 0);

err = execstr("spzeros("""", """")", "errcatch");
assert_checktrue(err <> 0);
