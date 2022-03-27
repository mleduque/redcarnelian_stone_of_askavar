BEGIN ~ARANOR~

IF ~Global("SpokeToAranor","GLOBAL",0)Global("CearwinQuest","GLOBAL",1)PartyHasItem("SOAITM40")~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @3 DO ~AddJournalEntry(@2%INFO%)~ GOTO 1
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 
  IF ~~ THEN REPLY @7 GOTO 4
  IF ~~ THEN REPLY @8 DO ~AddJournalEntry(@2%INFO%)~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 
  SAY @9 
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~~ THEN REPLY @11 GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @12 
  IF ~~ THEN REPLY @13 DO ~SetGlobal("SpokeToAranor","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @14 GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY @15 
  IF ~~ THEN REPLY @17 DO ~TakePartyItem("SOAITM40") %ERASEJOURNALENTRY_10001%~ %SOLVED_JOURNAL% @10002 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY @18
  IF ~~ THEN REPLY @20 DO ~GivePartyGold(20) %ERASEJOURNALENTRY_10001% TakePartyItem("SOAITM36")~ %SOLVED_JOURNAL% @10003 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.0
  SAY @21 
  IF ~~ THEN REPLY @22 GOTO 8
  IF ~~ THEN REPLY @23 DO ~SetGlobal("SpokeToAranor","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 14.0 7.0
  SAY @24 
  IF ~~ THEN REPLY @26 DO ~AddJournalEntry(@25%INFO%)~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @27 
  IF ~~ THEN REPLY @29 %UNSOLVED_JOURNAL% @10005 GOTO 10
  IF ~~ THEN REPLY @31 %UNSOLVED_JOURNAL% @10005 GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @32 
  IF ~~ THEN REPLY @33 DO ~SetGlobal("AranorQuest","GLOBAL",1)SetGlobal("SpokeToAranor","GLOBAL",4)GivePartyGold(100)~ GOTO 11
  IF ~~ THEN REPLY @34 DO ~SetGlobal("SpokeToAranor","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 
  SAY @35 
  IF ~~ THEN DO ~SetGlobal("AranorQuest","GLOBAL",1)AddJournalEntry(@36%INFO%)SetGlobal("SpokeToAranor","GLOBAL",4)~ %UNSOLVED_JOURNAL% @10009 EXIT
END

IF ~Global("CearwinQuest","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY @37 
  IF ~~ THEN EXIT
END

IF ~Global("SpokeToAranor","GLOBAL",1)Global("AranorQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY @38 
  IF ~~ THEN REPLY @39 GOTO 3
  IF ~~ THEN REPLY @40 EXIT
END

IF ~Global("SpokeToAranor","GLOBAL",2)Global("AranorQuest","GLOBAL",0)~ THEN BEGIN 14 // from:
  SAY @41 
  IF ~~ THEN REPLY @42 GOTO 8
  IF ~~ THEN REPLY @43 EXIT
END

IF ~Global("SpokeToAranor","GLOBAL",3)Global("AranorQuest","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY @44 
  IF ~~ THEN REPLY @45 GOTO 11
  IF ~~ THEN REPLY @46 EXIT
END

IF ~Global("AranorQuest","GLOBAL",1)Global("SpokeToAranor","GLOBAL",4)!PartyHasItem("SOAITM26")~ THEN BEGIN 16 // from:
  SAY @47 
  IF ~~ THEN REPLY @48 EXIT
END

IF ~Global("AranorQuest","GLOBAL",1)Global("SpokeToAranor","GLOBAL",4)PartyHasItem("SOAITM26")~ THEN BEGIN 17 // from:
  SAY @49 
  IF ~~ THEN REPLY @50 GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @51 
  IF ~~ THEN DO ~SetGlobal("AranorQuest","GLOBAL",2)SetGlobal("SpokeToAranor","GLOBAL",5)TakePartyItem("SOAITM26") %ERASEJOURNALENTRY_10009% GiveGoldForce(7000)AddexperienceParty(20000)~ %SOLVED_JOURNAL% @10010 EXIT
END
