BEGIN ~PIRN~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @3 DO ~SetGlobal("SpokeToPirn","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 
  IF ~~ THEN DO ~SetGlobal("SpokeToPirn","GLOBAL",1)~ EXIT
END
