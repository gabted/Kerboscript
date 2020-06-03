//ACFEL
//ATMOSPHERIC CHECK FOR EXPERIMENTAL LIFTOFFS
//pitch_for original link-> https://github.com/KSP-KOS/KSLib/blob/master/library/lib_navball.ks

clearscreen.

PRINT "ACFEL - ATMOSPHERIC CHECK FOR EXPERIMENTAL LIFTOFFS".
PRINT "Flight Data from PISA".
//Functions Declaration

function pisa {
  print "ALT: " + ceiling(ship:altitude).
  print "AP: " + ceiling(apoapsis).
  print "ETA:AP " + ceiling(eta:apoapsis).
  print "PITCH: " + ceiling(pitch_for).
}


function pitch_for {
  parameter ves is ship,thing is "default".
  local pointing is ves:facing:forevector.
  if not thing:istype("string") {
    set pointing to type_to_vector(ves,thing).
  }

  return 90 - vang(ves:up:vector, pointing).
}


function record { 
  clearscreen.
  print "Recording Data at: " + TIME.
  print pisa.
  log ceiling(ship:altitude) to "alt.csv".
  log ceiling(apoapsis) to "ap.csv".
  log ceiling(eta:apoapsis) to "eta_ap.csv".
  log ceiling(pitch_for) to "pitch.csv".
  AG4 OFF.
}


//PROGRAM

UNTIL 0 { 
  if AG4 RECORD. 
  wait 0.1.
}
