BEGIN ~PELERIA~

IF ~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY @1
  IF ~~ THEN DO ~SetGlobal("SpokeToPeleria","GLOBAL",1)~ EXIT
END
