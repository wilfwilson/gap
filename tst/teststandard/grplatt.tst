#############################################################################
##
#W  grplatt.tst                GAP tests                     Alexander Hulpke
##
##
#Y  Copyright (C)  1997,  Lehrstuhl D für Mathematik,  RWTH Aachen,  Germany
##
##  This  file  tests the subgroup lattice program
##
##  Exclude from testinstall.g as it takes considerable time.
##
gap> START_TEST("grplatt.tst");
gap> g:=PerfectGroup(IsPermGroup,95040);;
gap> l:=ConjugacyClassesSubgroups(g);;
gap> li:=List(l,i->[Size(Representative(i)),Size(i)]);;
gap> Sort(li);
gap> Length(li);
147
gap> Print(List(li,i->i),"\n");
[ [ 1, 1 ], [ 2, 396 ], [ 2, 495 ], [ 3, 880 ], [ 3, 1320 ], [ 4, 495 ], 
  [ 4, 1320 ], [ 4, 1485 ], [ 4, 1485 ], [ 4, 1980 ], [ 4, 2970 ], 
  [ 5, 2376 ], [ 6, 1320 ], [ 6, 2640 ], [ 6, 2640 ], [ 6, 3960 ], 
  [ 6, 3960 ], [ 6, 7920 ], [ 8, 495 ], [ 8, 495 ], [ 8, 495 ], [ 8, 495 ], 
  [ 8, 990 ], [ 8, 1485 ], [ 8, 1485 ], [ 8, 1485 ], [ 8, 2970 ], 
  [ 8, 2970 ], [ 8, 2970 ], [ 8, 2970 ], [ 8, 2970 ], [ 8, 2970 ], 
  [ 8, 2970 ], [ 9, 220 ], [ 9, 220 ], [ 9, 1760 ], [ 10, 2376 ], 
  [ 10, 2376 ], [ 10, 2376 ], [ 11, 1728 ], [ 12, 1320 ], [ 12, 1320 ], 
  [ 12, 1980 ], [ 12, 1980 ], [ 12, 2640 ], [ 12, 3960 ], [ 12, 3960 ], 
  [ 12, 7920 ], [ 16, 495 ], [ 16, 1485 ], [ 16, 1485 ], [ 16, 1485 ], 
  [ 16, 1485 ], [ 16, 1485 ], [ 16, 1485 ], [ 16, 2970 ], [ 16, 2970 ], 
  [ 16, 2970 ], [ 16, 2970 ], [ 16, 2970 ], [ 18, 220 ], [ 18, 220 ], 
  [ 18, 2640 ], [ 18, 2640 ], [ 18, 5280 ], [ 20, 2376 ], [ 20, 2376 ], 
  [ 20, 2376 ], [ 24, 1320 ], [ 24, 1980 ], [ 24, 1980 ], [ 24, 1980 ], 
  [ 24, 1980 ], [ 24, 1980 ], [ 24, 1980 ], [ 24, 1980 ], [ 24, 1980 ], 
  [ 24, 3960 ], [ 27, 880 ], [ 32, 495 ], [ 32, 495 ], [ 32, 1485 ], 
  [ 32, 1485 ], [ 32, 1485 ], [ 32, 1485 ], [ 32, 1485 ], [ 36, 660 ], 
  [ 36, 660 ], [ 36, 1320 ], [ 36, 1320 ], [ 36, 1320 ], [ 40, 2376 ], 
  [ 48, 495 ], [ 48, 1980 ], [ 48, 1980 ], [ 48, 1980 ], [ 48, 1980 ], 
  [ 54, 880 ], [ 54, 880 ], [ 54, 880 ], [ 55, 1728 ], [ 60, 396 ], 
  [ 60, 792 ], [ 60, 792 ], [ 60, 1584 ], [ 64, 1485 ], [ 72, 220 ], 
  [ 72, 220 ], [ 72, 660 ], [ 72, 660 ], [ 72, 660 ], [ 72, 660 ], 
  [ 72, 1320 ], [ 96, 495 ], [ 96, 495 ], [ 96, 495 ], [ 96, 495 ], 
  [ 108, 880 ], [ 120, 396 ], [ 120, 396 ], [ 120, 396 ], [ 120, 792 ], 
  [ 120, 792 ], [ 144, 660 ], [ 144, 660 ], [ 192, 495 ], [ 192, 495 ], 
  [ 216, 220 ], [ 216, 220 ], [ 240, 396 ], [ 360, 66 ], [ 360, 66 ], 
  [ 432, 220 ], [ 432, 220 ], [ 660, 144 ], [ 660, 144 ], [ 720, 66 ], 
  [ 720, 66 ], [ 720, 66 ], [ 720, 66 ], [ 720, 66 ], [ 720, 66 ], 
  [ 1440, 66 ], [ 1440, 66 ], [ 7920, 12 ], [ 7920, 12 ], [ 95040, 1 ] ]
gap> LatticeSubgroups(Group((1,2,3,4,5,6)));;
gap> g:=WreathProduct(g,TransitiveGroup(6,13));;
gap> l:=MaximalSubgroupClassReps(g);;
gap> Collected(List(l,x->Index(g,x)));
[ [ 2, 3 ], [ 9, 1 ], [ 2985984, 2 ], [ 82653950016, 2 ], 
  [ 8916100448256, 1 ], [ 113379904000000, 2 ], [ 3856302691946496, 1 ], 
  [ 14710627334390625, 2 ], [ 5289852801024000000, 1 ], 
  [ 81587891664322560000, 1 ] ]
gap> g := Group( (1,2,3,4)(5,6,7,8), (1,5,3,7)(2,8,4,6) );;
gap> AsSortedList(List(ConjugacyClassesSubgroups(g),i->Size(Representative(i))));
[ 1, 2, 4, 4, 4, 8 ]
gap> AsSortedList(List(NormalSubgroups(g),Size));
[ 1, 2, 4, 4, 4, 8 ]
gap> g:=WreathProduct(SymmetricGroup(5),Group((1,2)));;
gap> l:=SubgroupsTrivialFitting(g);;    
gap> Collected(List(l,Size));
[ [ 1, 1 ], [ 2, 6 ], [ 3, 2 ], [ 4, 23 ], [ 5, 2 ], [ 6, 18 ], [ 8, 43 ], 
  [ 9, 1 ], [ 10, 8 ], [ 12, 46 ], [ 15, 1 ], [ 16, 37 ], [ 18, 10 ], 
  [ 20, 16 ], [ 24, 57 ], [ 25, 1 ], [ 30, 7 ], [ 32, 19 ], [ 36, 28 ], 
  [ 40, 14 ], [ 48, 28 ], [ 50, 3 ], [ 60, 14 ], [ 64, 7 ], [ 72, 26 ], 
  [ 80, 7 ], [ 96, 11 ], [ 100, 7 ], [ 120, 18 ], [ 128, 1 ], [ 144, 15 ], 
  [ 160, 1 ], [ 180, 1 ], [ 192, 2 ], [ 200, 7 ], [ 240, 14 ], [ 288, 5 ], 
  [ 300, 1 ], [ 360, 7 ], [ 400, 3 ], [ 480, 8 ], [ 576, 3 ], [ 600, 3 ], 
  [ 720, 8 ], [ 800, 1 ], [ 960, 1 ], [ 1152, 1 ], [ 1200, 3 ], [ 1440, 4 ], 
  [ 2400, 1 ], [ 2880, 1 ], [ 3600, 1 ], [ 7200, 3 ], [ 14400, 3 ], 
  [ 28800, 1 ] ]
gap> g:=function()
> local g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15,r,f,g,rws,x;
> f:=FreeGroup(IsSyllableWordsFamily,15);
> g:=GeneratorsOfGroup(f);
> g1:=g[1];
> g2:=g[2];
> g3:=g[3];
> g4:=g[4];
> g5:=g[5];
> g6:=g[6];
> g7:=g[7];
> g8:=g[8];
> g9:=g[9];
> g10:=g[10];
> g11:=g[11];
> g12:=g[12];
> g13:=g[13];
> g14:=g[14];
> g15:=g[15];
> rws:=SingleCollector(f,[ 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 ]);
> r:=[
> [3,g4*g5*g7*g11],
> [4,g8],
> [5,g8*g13*g15],
> [6,g9*g11*g13*g14],
> [7,g11*g13],
> [8,g13],
> [9,g11*g13],
> ];
> for x in r do SetPower(rws,x[1],x[2]);od;
> r:=[
> [2,1,g13*g14],
> [3,1,g4*g5*g8*g12*g13*g14],
> [4,1,g15],
> [5,1,g11*g13*g15],
> [6,1,g11*g13*g15],
> [7,1,g11*g14*g15],
> [8,1,g14*g15],
> [9,1,g14*g15],
> [12,1,g13],
> [3,2,g5*g6*g8*g11*g13*g15],
> [4,2,g8*g13],
> [5,2,g8*g13*g15],
> [6,2,g7*g8*g9*g13*g15],
> [7,2,g7*g9*g11],
> [8,2,g13],
> [9,2,g7*g9*g11],
> [12,2,g14],
> [15,2,g13],
> [4,3,g5*g6*g9*g11*g13*g15],
> [5,3,g5*g6*g9*g13*g14],
> [6,3,g5*g6*g7*g13],
> [7,3,g7*g8*g13],
> [8,3,g7*g8*g13*g14*g15],
> [9,3,g7*g8*g11],
> [10,3,g12*g13*g15],
> [12,3,g14*g15],
> [13,3,g11],
> [14,3,g13],
> [15,3,g11*g13],
> [5,4,g13*g15],
> [6,4,g8*g9*g11*g14],
> [7,4,g7*g9*g13],
> [9,4,g7*g9*g13],
> [12,4,g14],
> [14,4,g13*g14*g15],
> [15,4,g14*g15],
> [6,5,g8*g9*g11*g13*g14*g15],
> [7,5,g7*g9*g13*g14*g15],
> [8,5,g14*g15],
> [9,5,g7*g9*g11*g13*g14*g15],
> [10,5,g11*g13],
> [12,5,g11*g14],
> [14,5,g13*g14*g15],
> [15,5,g14*g15],
> [7,6,g13*g14*g15],
> [8,6,g7*g9*g14*g15],
> [9,6,g11*g13*g14*g15],
> [10,6,g11*g13*g14],
> [12,6,g11*g14],
> [14,6,g11*g13*g14*g15],
> [15,6,g14*g15],
> [10,7,g11*g14*g15],
> [12,7,g13*g14*g15],
> [14,7,g11*g13],
> [15,7,g11*g13],
> [12,8,g13*g14*g15],
> [14,8,g13],
> [15,8,g13],
> [10,9,g11*g13*g14*g15],
> [12,9,g11*g13*g14*g15],
> [14,9,g11*g13],
> [15,9,g11*g13],
> ];
> for x in r do SetCommutator(rws,x[1],x[2],x[3]);od;
> return GroupByRwsNC(rws);
> end;;
gap> g:=g();;
gap> Collected(List(NormalSubgroups(g),Size));
[ [ 1, 1 ], [ 2, 1 ], [ 4, 3 ], [ 8, 7 ], [ 16, 15 ], [ 32, 27 ], [ 64, 55 ], 
  [ 128, 87 ], [ 256, 115 ], [ 512, 195 ], [ 1024, 267 ], [ 2048, 283 ], 
  [ 4096, 227 ], [ 8192, 155 ], [ 16384, 31 ], [ 32768, 1 ] ]
gap> Length(MaximalSubgroupClassReps(PSL(5,11)));
16
gap> g:=Group(
> [ (3,5,4)(7,8,9)(10,18,14)(11,20,17)(12,21,15)(13,19,16)(22,32,41)(24,36,
>     29)(25,40,33)(26,28,37)(30,42,34)(31,35,39),
>   (1,2,7,3,11,10,6)(4,15,20,21,13,18,9)(5,19,17,16,12,14,8)(22,34,39,40,29,
>     32,28)(23,27,33,37,42,35,38)(24,26,36,30,31,25,41),
>   (7,8,9)(10,14,18)(11,16,21)(12,17,19)(13,15,20)(22,28,29)(24,32,37)(25,40,
>     33)(26,36,41)(31,39,35), (1,38)(2,23)(3,42)(4,34)(5,30)(6,27)(7,33)(8,
>     40)(9,25)(10,35)(11,37)(12,36)(13,22)(14,39)(15,29)(16,32)(17,26)(18,
>     31)(19,41)(20,28)(21,24) ]);;
gap> Length(MaximalSubgroupClassReps(g));
6
gap> Length(ConjugacyClassesSubgroups(SymmetricGroup(7)));
96
gap> Length(ConjugacyClassesSubgroups(SymmetricGroup(7):NoPrecomputedData));
96

# thats all, folks
gap> STOP_TEST( "grplatt.tst", 364210000);

#############################################################################
##
#E
