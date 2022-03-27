BEGIN ~RONDAN~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~SetGlobal("SpokeToRondan","GLOBAL",1)~ EXIT
END
