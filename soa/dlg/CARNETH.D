BEGIN ~CARNETH~

IF ~!Global("SpokeToCearwin","GLOBAL",3)!Global("CearwinQuest","GLOBAL",2)Global("SpokeToCarneth","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN EXIT
END

IF ~Global("SpokeToCearwin","GLOBAL",3)Global("CearwinQuest","GLOBAL",2)Global("SpokeToCarneth","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @2 
  IF ~~ THEN REPLY @3 DO ~TakePartyGold(1)~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4 
  IF ~~ THEN REPLY @5 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6 
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @27 DO ~SetGlobal("SpokeToCarneth","GLOBAL",1)~ %UNSOLVED_JOURNAL% @10015 EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @8 
  IF ~~ THEN REPLY @9  GOTO 5
  IF ~~ THEN REPLY @10  GOTO 5
  IF ~~ THEN REPLY @11  GOTO 5
  IF ~~ THEN REPLY @12  DO ~SetGlobal("SpokeToCarneth","GLOBAL",1) AddJournalEntry(@10016%INFO%) %ERASEJOURNALENTRY_10015% SetGlobal("CarnethPuzzle","GLOBAL",1)~ %SOLVED_JOURNAL% @10017 GOTO 6
  IF ~~ THEN REPLY @13  GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0, 4.1, 4.2, 4.4
  SAY @14 
  IF ~~ THEN REPLY @28 GOTO 4
  IF ~~ THEN REPLY @27 DO ~SetGlobal("SpokeToCarneth","GLOBAL",1)~ %UNSOLVED_JOURNAL% @10015 EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY @15 
  IF ~~ THEN REPLY @16 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @18 
  IF ~~ THEN REPLY @19 DO ~SetGlobal("SpokeToCarneth","GLOBAL",2)~ %UNSOLVED_JOURNAL% @10019 EXIT
  IF ~~ THEN REPLY @17 GOTO 8
  
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY @20 
  IF ~~ THEN REPLY @21 GOTO 7
  IF ~~ THEN REPLY @22 DO ~SetGlobal("SpokeToCarneth","GLOBAL",4) Enemy()~ EXIT
END

IF ~Global("SpokeToCarneth","GLOBAL",2)!PartyHasItem("SOAITM39")~ THEN BEGIN 9 // from:
  SAY @23 
  IF ~~ THEN REPLY @24 EXIT
END

IF ~Global("SpokeToCarneth","GLOBAL",2)PartyHasItem("SOAITM39")~ THEN BEGIN 10 // from:
  SAY @23 
  IF ~~ THEN REPLY @25 DO ~TakePartyItem("SOAITM39")~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @26 
  IF ~~ THEN DO ~SetGlobal("SpokeToCarneth","GLOBAL",3)SetInterrupt(FALSE) %ERASEJOURNALENTRY_10019% GiveItemCreate("SOAITM32",[PC],0,0,0)~ %SOLVED_JOURNAL% @10020 EXIT
END

IF ~Global("SpokeToCarneth","GLOBAL",1)Global("CarnethPuzzle","GLOBAL",0)~ THEN BEGIN 12 // from:
  SAY @29 
  IF ~~ THEN REPLY @28 GOTO 4
  IF ~~ THEN REPLY @27 EXIT
END