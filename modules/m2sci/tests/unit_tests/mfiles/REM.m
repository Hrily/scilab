% Test file for function rem()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = rem([],[]);
% TEST 2
res2 = rem(m2sciUnknownType([]),m2sciUnknownType([]));
% TEST 3
res3 = rem(m2sciUnknownDims([]),m2sciUnknownDims([]));
% TEST 4
res4 = rem([1],[1]);
% TEST 5
res5 = rem([1,2,3],[1,2,3]);
% TEST 6
res6 = rem([1;2;3],[1;2;3]);
% TEST 7
res7 = rem([1,2,3;4,5,6],[1,2,3;4,5,6]);
% TEST 8
res8 = rem(m2sciUnknownType([1]),m2sciUnknownType([1]));
% TEST 9
res9 = rem(m2sciUnknownType([1,2,3]),m2sciUnknownType([1,2,3]));
% TEST 10
res10 = rem(m2sciUnknownType([1;2;3]),m2sciUnknownType([1;2;3]));
% TEST 11
res11 = rem(m2sciUnknownType([1,2,3;4,5,6]),m2sciUnknownType([1,2,3;4,5,6]));
% TEST 12
res12 = rem(m2sciUnknownDims([1]),m2sciUnknownDims([1]));
% TEST 13
res13 = rem(m2sciUnknownDims([1,2,3]),m2sciUnknownDims([1,2,3]));
% TEST 14
res14 = rem(m2sciUnknownDims([1;2;3]),m2sciUnknownDims([1;2;3]));
% TEST 15
res15 = rem(m2sciUnknownDims([1,2,3;4,5,6]),m2sciUnknownDims([1,2,3;4,5,6]));
% TEST 16
res16 = rem(['s'],['s']);
% TEST 17
res17 = rem(['str1'],['str1']);
% TEST 18
res18 = rem(['str1','str2','str3'],['str1','str2','str3']);
% TEST 19
res19 = rem(['str1';'str2';'str3'],['str1';'str2';'str3']);
% TEST 20
res20 = rem(['str1','str2','str3';'str4','str5','str6'],['str1','str2','str3';'str4','str5','str6']);
% TEST 21
res21 = rem(m2sciUnknownType(['s']),m2sciUnknownType(['s']));
% TEST 22
res22 = rem(m2sciUnknownType(['str1']),m2sciUnknownType(['str1']));
% TEST 23
res23 = rem(m2sciUnknownType(['str1','str2','str3']),m2sciUnknownType(['str1','str2','str3']));
% TEST 24
res24 = rem(m2sciUnknownType(['str1';'str2';'str3']),m2sciUnknownType(['str1';'str2';'str3']));
% TEST 25
res25 = rem(m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']),m2sciUnknownType(['str1','str2','str3';'str4','str5','str6']));
% TEST 26
res26 = rem(m2sciUnknownDims(['s']),m2sciUnknownDims(['s']));
% TEST 27
res27 = rem(m2sciUnknownDims(['str1']),m2sciUnknownDims(['str1']));
% TEST 28
res28 = rem(m2sciUnknownDims(['str1','str2','str3']),m2sciUnknownDims(['str1','str2','str3']));
% TEST 29
res29 = rem(m2sciUnknownDims(['str1';'str2';'str3']),m2sciUnknownDims(['str1';'str2';'str3']));
% TEST 30
res30 = rem(m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']),m2sciUnknownDims(['str1','str2','str3';'str4','str5','str6']));
% TEST 31
res31 = rem(0,0);
