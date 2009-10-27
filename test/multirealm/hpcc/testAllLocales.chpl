use BlockDist, Random;

use AllLocales;

coforall loc in allLocales do on loc do
  writeln("hello from locale ", loc);

const MyBlock = distributionValue(new Block(rank=1,idxType=int(32),bbox=[1..10],targetLocales=allLocales));

const D: domain(1) distributed MyBlock = [1..10];

var A: [D] real;

forall a in A do
  a = 1.0;

writeln("A is: ", A);

var randlist = new RandomStream(314159265);
randlist.fillRandom(A);

writeln("A is: ", A);
