BEGIN ~CEARWIN~

IF ~PartyHasItem("SOAITM36")Global("CearwinQuest","GLOBAL",0)!Global("SpokeToCearwin","GLOBAL",2)!Global("playlute","LOCALS",2)!Global("playlute","LOCALS",3)
~ THEN BEGIN 0 // from:
  SAY @1 
  IF ~~ THEN REPLY @2 DO ~SetGlobal("playlute","LOCALS",1)~ EXIT
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~Global("SpokeToCearwin","GLOBAL",2)Global("CearwinQuest","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @4 
  IF ~~ THEN REPLY @5 GOTO 11
  IF ~~ THEN REPLY @6 EXIT
END

IF ~Global("playlute","LOCALS",2)Global("SpokeToCearwin","GLOBAL",0)~ THEN BEGIN 2 // from:
  SAY @7 
  IF ~~ THEN REPLY @8 GOTO 3
  IF ~~ THEN REPLY @10 DO ~AddJournalEntry(@9%INFO%)~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @11 
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~~ THEN REPLY @13 DO ~SetGlobal("SpokeToCearwin","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @14 
  IF ~~ THEN REPLY @15 GOTO 5
  IF ~~ THEN REPLY @16 DO ~SetGlobal("SpokeToCearwin","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 12.0 4.0 3.0 0.1
  SAY @17 
  IF ~~ THEN REPLY @18 GOTO 6
  IF ~~ THEN REPLY @19 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @20 
  IF ~~ THEN REPLY @21 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @22 
  IF ~~ THEN REPLY @23 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 6.0
  SAY @24 
  IF ~~ THEN REPLY @25 GOTO 9
  IF ~~ THEN REPLY @26 GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @27 
  IF ~~ THEN REPLY @28 GOTO 10
  IF ~~ THEN REPLY @29 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.0 8.1
  SAY @30 
  IF ~~ THEN REPLY @31 GOTO 11
  IF ~~ THEN REPLY @32 DO ~SetGlobal("SpokeToCearwin","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 1.0
  SAY @33 
  IF ~~ THEN DO ~SetGlobal("CearwinQuest","GLOBAL",1)SetGlobal("SpokeToCearwin","GLOBAL",2)SetInterrupt(FALSE)CreateItem("SOAITM40",0,0,0)GiveItem("SOAITM40",LastTalkedToBy)TakePartyItem("SOAITM36")~ %UNSOLVED_JOURNAL% @10001 EXIT
END

IF ~Global("SpokeToCearwin","GLOBAL",1)~ THEN BEGIN 12 // from:
  SAY @35 
  IF ~~ THEN REPLY @36 GOTO 5
  IF ~~ THEN REPLY @37 EXIT
END

IF ~Global("CearwinQuest","GLOBAL",1)Global("AranorQuest","GLOBAL",0)~ THEN BEGIN 13 // from:
  SAY @38 
  IF ~~ THEN REPLY @39 EXIT
END

IF ~Global("CearwinQuest","GLOBAL",1)Global("AranorQuest","GLOBAL",1)!Global("SpokeToCearwin","GLOBAL",3)~ THEN BEGIN 14 // from:
  SAY @40 
  IF ~~ THEN REPLY @41 DO ~AddexperienceParty(1000) %ERASEJOURNALENTRY_10005% GiveGoldForce(250)~  GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @42 
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @43 
  IF ~~ THEN REPLY @44 GOTO 17
  IF ~~ THEN REPLY @45 DO ~SetGlobal("SpokeToCearwin","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 19.0 16.0
  SAY @46 
  IF ~~ THEN REPLY @47 DO ~SetInterrupt(FALSE)CreateItem("SOAITM37",0,0,0)GiveItem("SOAITM37",LastTalkedToBy)~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @48 
  IF ~~ THEN DO ~SetGlobal("SpokeToCearwin","GLOBAL",3)SetGlobal("CearwinQuest","GLOBAL",2)SetInterrupt(FALSE)CreateItem("SOAITM21",0,0,0)GiveItem("SOAITM21",LastTalkedToBy)RevealAreaOnMap("ARS002")RevealAreaOnMap("ARS005")~ %UNSOLVED_JOURNAL% @10006 EXIT
END

IF ~Global("SpokeToCearwin","GLOBAL",3)Global("CearwinQuest","GLOBAL",1)~ THEN BEGIN 19 // from:
  SAY @50 
  IF ~~ THEN REPLY @51 GOTO 17
  IF ~~ THEN REPLY @52 EXIT
END

IF ~Global("SpokeToCearwin","GLOBAL",3)Global("CearwinQuest","GLOBAL",2)~ THEN BEGIN 20 // from:
  SAY @53 
  IF ~~ THEN REPLY @54 EXIT
END

IF ~!PartyHasItem("SOAITM36")Global("CearwinQuest","GLOBAL",0)~ THEN BEGIN 21 // from:
  SAY @55 
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("SOAITM31")PartyHasItem("SOAITM32")PartyHasItem("SOAITM33")PartyHasItem("SOAITM34")PartyHasItem("SOAITM35")Global("CearwinQuest","GLOBAL",3)Global("SpokeToCearwin","GLOBAL",3)~ THEN BEGIN 22 // from:
  SAY @56 
  IF ~~ THEN REPLY @57 GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @58 
  IF ~~ THEN REPLY @60 DO ~AddexperienceParty(4000)GiveGoldForce(750)SetGlobal("SpokeToCearwin","GLOBAL",4) %ERASEJOURNALENTRY_10006% SetGlobal("CearwinQuest","GLOBAL",4)AddJournalEntry(@59%INFO%)~ %SOLVED_JOURNAL% @10021 EXIT
END

IF ~Global("AranorQuest","GLOBAL",2)Global("CearwinQuest","GLOBAL",4)Global("SpokeToCearwin","GLOBAL",4)~ THEN BEGIN 24 // from:
  SAY @61 
  IF ~~ THEN DO ~SetGlobal("SpokeToCearwin","GLOBAL",5)SetGlobal("CearwinQuest","GLOBAL",5)~ EXIT
END
