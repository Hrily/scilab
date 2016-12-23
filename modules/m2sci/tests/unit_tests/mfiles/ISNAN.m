% Test file for function isnan()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = isnan([]);
% TEST 2
res2 = isnan(m2sciUnknownType([]));
% TEST 3
res3 = isnan(m2sciUnknownDims([]));
% TEST 4
res4 = isnan([1]);
% TEST 5
res5 = isnan([1,2,3]);
% TEST 6
res6 = isnan([1;2;3]);
% TEST 7
res7 = isnan([1,2,3;4,5,6]);
% TEST 8
res8 = isnan(m2sciUnknownType([1]));
% TEST 9
res9 = isnan(m2sciUnknownType([1,2,3]));
% TEST 10
res10 = isnan(m2sciUnknownType([1;2;3]));
% TEST 11
res11 = isnan(m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = isnan(m2sciUnknownDims([1]));
% TEST 13
res13 = isnan(m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = isnan(m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = isnan(m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = isnan([i]);
% TEST 17
res17 = isnan([i,2i,3i]);
% TEST 18
res18 = isnan([i;2i;3i]);
% TEST 19
res19 = isnan([i,2i,3i;4i,5i,6i]);
% TEST 20
res20 = isnan(m2sciUnknownType([i]));
% TEST 21
res21 = isnan(m2sciUnknownType([i,2i,3i]));
% TEST 22
res22 = isnan(m2sciUnknownType([i;2i;3i]));
% TEST 23
res23 = isnan(m2sciUnknownType([i,2i,3i;4i,5i,6i]));
% TEST 24
res24 = isnan(m2sciUnknownDims([i]));
% TEST 25
res25 = isnan(m2sciUnknownDims([i,2i,3i]));
% TEST 26
res26 = isnan(m2sciUnknownDims([i;2i;3i]));
% TEST 27
res27 = isnan(m2sciUnknownDims([i,2i,3i;4i,5i,6i]));
% TEST 28
res28 = isnan(['s']);
% TEST 29
res29 = isnan(['str1']);
% TEST 30
res30 = isnan(['str1','str2','str3']);
% TEST 31
res31 = isnan(['str1';'str2';'str3']);
% TEST 32
res32 = isnan(['str1','str2','str3';'str4','str5','str6']);
% TEST 33
res33 = isnan(m2sciUnknownType(['s']));
% TEST 34
res34 = isnan(m2sciUnknownType(['str1']));
% TEST 35
res35 = isnan(m2sciUnknownType(['str1','str2','str3']));
% TEST 36
res36 = isnan(m2sciUnknownType(['str1';'str2';'str3']));
% TEST 37
res37 = isnan(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 38
res38 = isnan(m2sciUnknownDims(['s']));
% TEST 39
res39 = isnan(m2sciUnknownDims(['str1']));
% TEST 40
res40 = isnan(m2sciUnknownDims(['str1','str2','str3']));
% TEST 41
res41 = isnan(m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 42
res42 = isnan(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));
% TEST 43
res43 = isnan([[1]==[1]]);
% TEST 44
res44 = isnan([[1,2,3]==[1,0,3]]);
% TEST 45
res45 = isnan([[1;2;3]==[1;0;3]]);
% TEST 46
res46 = isnan([[1,2,3;4,5,6]==[1,0,3;4,5,0]]);
% TEST 47
res47 = isnan(m2sciUnknownType([[1]==[1]]));
% TEST 48
res48 = isnan(m2sciUnknownType([[1,2,3]==[1,0,3]]));
% TEST 49
res49 = isnan(m2sciUnknownType([[1;2;3]==[1;0;3]]));
% TEST 50
res50 = isnan(m2sciUnknownType([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 51
res51 = isnan(m2sciUnknownDims([[1]==[1]]));
% TEST 52
res52 = isnan(m2sciUnknownDims([[1,2,3]==[1,0,3]]));
% TEST 53
res53 = isnan(m2sciUnknownDims([[1;2;3]==[1;0;3]]));
% TEST 54
res54 = isnan(m2sciUnknownDims([[1,2,3;4,5,6]==[1,0,3;4,5,0]]));
% TEST 55
res55 = isnan(inf);
% TEST 56
res56 = isnan(nan);
% TEST 57
res57 = isnan([inf,nan,1;nan,inf,-inf]);