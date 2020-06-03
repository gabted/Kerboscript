//VA TESTATO LIVE, BIOGNA CAPIRE QUALE MOTORE è ATTIVO
LIST ENGINES in engList.
for eng in engList {
	if eng:ignition {
		print eng:name
	}
}.

target = "flightLog.txt"
function echo {
	parameter text.
	log text to path(target).
}

function printStats {
	echo("maxThrust = "+eng:maxThrust).
	echo("Thrust = "+eng:Thrust).
	echo("isp = "+eng:isp).
}

echo("Inizio testing").
printStats.

set thr to 1.
echo("Throttle a 1").
lock throttle to thr.
printStats.

until eng:thrust == eng:maxThrust {
	printStats.
}

echo("provo 6 valori di throttle").
FROM {set thr to 0} UNTIL thr > 1 STEP {set thr to thr+0.2} DO {
	wait(1).
	echo("Throttle =  "+thr).
	printStats.
}

set thr to 0.
wait(1).

unlock throttle.