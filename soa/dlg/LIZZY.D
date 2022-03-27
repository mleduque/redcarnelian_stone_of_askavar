BEGIN ~LIZZY~

IF ~!Global("SpokeToCearwin","GLOBAL",3)!Global("CearwinQuest","GLOBAL",2)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 EXIT
END

IF ~Global("SpokeToLizzy","GLOBAL",0)Global("SpokeToCearwin","GLOBAL",3)Global("CearwinQuest","GLOBAL",2)~ THEN BEGIN 1 // from:
  SAY @3 
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5 
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7 
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0, 9.0
  SAY @11 
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @15 DO ~SetGlobal("SpokeToLizzy","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @13 
  IF ~~ THEN REPLY @14 DO ~SetGlobal("SpokeToLizzy","GLOBAL",1)~ %UNSOLVED_JOURNAL% @10012 EXIT
END

IF ~Global("SpokeToLizzy","GLOBAL",1)Global("RebeccaRescue","GLOBAL",0)Global("SpokeToRebecca","GLOBAL",0) ~ THEN BEGIN 7 // from:
  SAY @16 
  IF ~~ THEN REPLY @17 EXIT
END

IF ~Global("SpokeToLizzy","GLOBAL",1)Global("RebeccaRescue","GLOBAL",1)Global("SpokeToRebecca","GLOBAL",1) ~ THEN BEGIN 8 // from:
  SAY @20 
  IF ~~ THEN DO ~SetGlobal("SpokeToLizzy","GLOBAL",3)SetInterrupt(FALSE) %ERASEJOURNALENTRY_10012% GiveGoldForce(50) AddexperienceParty(500)~ %SOLVED_JOURNAL% @10013 EXIT
END

IF ~Global("SpokeToLizzy","GLOBAL",2)~ THEN BEGIN 9 // from:
  SAY @18
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @22 EXIT
END
