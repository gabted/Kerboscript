CLEARSCREEN.

//ANTENNA dish.tatsujin
//PROGRAM FOR AUTO ANTENNA SCANNING

//MODULE PARTS DECLARATION

SET P TO SHIP:PARTSNAMED("dish.tatsujin")[0].
SET M TO P:GETMODULE("ModuleRTAntenna").

CLEARSCREEN.


//SAT 1 

PRINT "TRYING TO CONNECT TO KERBCOMM1".
WAIT 1.

M:SETFIELD("target", "KERBCOMM1").

WAIT 1.


WAIT 1.

if ADDONS:RT:HASKSCCONNECTION(SHIP) {

PRINT "CONNECTED TO KERBCOMM1 SAT".
WAIT 1.
PRINT "STATUS:CONNECTED TO KSC".

}

ELSE

{ 

PRINT "CONNECTION PROBLEM". 

}