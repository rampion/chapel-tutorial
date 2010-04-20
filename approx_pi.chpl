use Random;

config const tasks = 100;			// number of concurrent tasks
config const points_per_task = 100000;  // number of random points to generate per task
config const seed = 314159265; // random number generator to seed
const points = tasks * points_per_task;

writeln("Number of tasks           = ", tasks);
writeln("Number of points per task = ", points_per_task);
writeln("Number of points          = ", points);
writeln("Random number seed        = ", seed);

var count = 0;
var taskspace: domain(1) = [1..tasks];
var counts : [taskspace] int;

forall i in taskspace {
	var rs = new RandomStream(seed+2*i, parSafe=false);
	var lcount = 0;

	for j in 1 .. points_per_task do lcount += (rs.getNext()**2 + rs.getNext()**2 <= 1.0);

	counts[i] = lcount;

	delete rs;
}
for i in 1 .. tasks { count += counts[i]; }

writeln("Approximation of PI = ", format("#.#######", count * 4.0 / points ));
