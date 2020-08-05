
//BOOT AND PRELAUNCH

CLEARSCREEN.
SET TARGET_PE TO 130000.
LOCK THROTTLE TO 1.

function autostage {

    WAIT UNTIL MAXTHRUST = 0.
    WAIT 0.2.
    PRINT "STAGE ACTIVATED".
    STAGE.  

}


PRINT "LIFTOFF SEQUENCE HAS STARTED".


WAIT 1.

//LIFTOFF

LOCK STEERING TO UP.

// STAGE #5 ------------

PRINT "LIFTING".

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 300. 
UNLOCK STEERING.
LOCK STEERING TO MYSTEER.
SET MYSTEER TO HEADING(90,64).

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 1669.
SET MYSTEER TO HEADING(90,60).

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 1564.
SET MYSTEER TO HEADING(90,54).

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 7556.
SET MYSTEER TO HEADING(90,48).

WAIT 0.01.
WAIT UNTIL SHIP:ALTITUDE > 23078.
SET MYSTEER TO HEADING(90,46).

autostage.

//STAGE #4 ----------------

WAIT 0.01.
WAIT UNTIL SHIP:APOAPSIS > 85000.
SET MYSTEER TO HEADING(90,35).

WAIT 0.01.
WAIT UNTIL SHIP:APOAPSIS > 90000.
SET MYSTEER TO HEADING(90,0).

autostage.

//STAGE #3 ---------------


//ENGINE STOP


LOCK THROTTLE TO 0.

PRINT "ENGINE SHUTDOWN".
WAIT 2.
PRINT "EVERYBODY HATE LES, KOS TOO".
WAIT 1.
RUN LES.


//GRAVITY BURN



WAIT 0.01.
WAIT UNTIL ETA:APOAPSIS < 60.




WAIT 0.01.

LOCK THROTTLE TO 0.2.

SET MYSTEER TO HEADING(90,0).

WAIT UNTIL ETA:APOAPSIS < 18.
LOCK THROTTLE TO 1.



PRINT "ENGINE FIRING".
PRINT "STARTING GRAVITY BURN".

//ORBITING

WAIT 0.01.
WAIT UNTIL PERIAPSIS >= TARGET_PE.
LOCK THROTTLE TO 0.
PRINT "ENGINE SHUTDOWN".
CLEARSCREEN.

PRINT STATUS.





