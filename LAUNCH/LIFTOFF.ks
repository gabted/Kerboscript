
//BOOT AND PRELAUNCH

SET TARGET_PE TO 87000.

CLEARSCREEN.

PRINT "LIFTOFF SEQUENCE HAS STARTED".

PRINT SHIP:NAME.
PRINT SHIP:STATUS.

WAIT 1.

//LIFTOFF

LOCK STEERING TO UP.


//STAGING LOOP

WHEN MAXTHRUST=0 THEN {

WAIT 0.5.

PRINT "STAGE ACTIVATED".

STAGE.

PRESERVE.


}

//FIRST INCLINATION

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 5000. 

UNLOCK STEERING.

LOCK STEERING TO MYSTEER.

SET MYSTEER TO HEADING(90,55).

PRINT "FIRST INCLINATION".



//SECOND INCLINATION

WAIT 0.01.
WAIT UNTIL SHIP:APOAPSIS > 70000.

SET MYSTEER TO HEADING(90,0).

PRINT "SECOND INCLINATION".




//ENGINE STOP

WAIT 0.01.
WAIT UNTIL SHIP:PERIAPSIS > -430000.  

LOCK THROTTLE TO 0.

PRINT "ENGINE SHUTDOWN".




//GRAVITY BURN



WAIT 0.01.
WAIT UNTIL ETA:APOAPSIS < 30.


RCS ON.

WAIT 0.01.

SET MYSTEER TO HEADING(90,0).

WAIT UNTIL ETA:APOAPSIS < 20.

LOCK THROTTLE TO 1.



PRINT "ENGINE FIRING".
PRINT "STARTING GRAVITY BURN".

//ORBITING

WAIT 0.01.
WAIT UNTIL PERIAPSIS >= TARGET_PE.

LOCK THROTTLE TO 0.

PRINT "ENGINE SHUTDOWN".

PRINT STATUS.









 
 


