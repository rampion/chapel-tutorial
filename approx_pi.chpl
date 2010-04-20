use Random;

config const n = 100000; // number of random points to generate
config const seed = 314159265; // random number generator to seed

writeln("Number of points     = ", n);
writeln("Random number seed   = ", seed);

var rs = new RandomStream(seed, parSafe=false);
var count = 0;
for i in 1..n do
	count += rs.getNext()**2 + rs.getNext()**2 <= 1.0;
delete rs;

writeln("Approximation of PI = ", format("#.#######", count * 4.0 / n));
