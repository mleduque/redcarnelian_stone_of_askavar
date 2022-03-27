BEGIN ~REBECCA~

IF ~Global("SpokeToLizzy","GLOBAL",1)Global("SpokeToRebecca","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3 
  IF ~~ THEN DO ~SetGlobal("SpokeToRebecca","GLOBAL",1)SetGlobal("RebeccaRescue","GLOBAL",1)SetInterrupt(FALSE)GiveItemCreate("SOAITM31",[PC],0,0,0)EscapeArea()~  EXIT
END

