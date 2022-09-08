table 5060471 "Item Verification Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00:T112 14.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    //   Added "Second Verification..." fields
    //   Renamed "Verfication Type" to "Verific. Permission Field No."
    //   Added new field "Verification Type", "Verific. 2 Description"
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Verification Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(5; "Source Table PKey 1"; Code[50])
        {
            Caption = 'Source Table PKey 1';
            Editable = false;
        }
        field(10; "Source Table PKey 2"; Code[50])
        {
            Caption = 'Source Table PKey 2';
            Editable = false;
        }
        field(15; "Source Table PKey 3"; Code[50])
        {
            Caption = 'Source Table PKey 3';
            Editable = false;
        }
        field(20; "Source Table PKey 4"; Code[50])
        {
            Caption = 'Source Table PKey 4';
            Editable = false;
        }
        field(25; "Source Table PKey 5"; Code[50])
        {
            Caption = 'Source Table PKey 5';
            Editable = false;
        }
        field(40; "Source Table PKey 1 Name"; Text[50])
        {
            Caption = 'Source Table PKey 1 Name';
            Editable = false;
        }
        field(45; "Source Table PKey 2 Name"; Text[50])
        {
            Caption = 'Source Table PKey 2 Name';
            Editable = false;
        }
        field(50; "Source Table PKey 3 Name"; Text[50])
        {
            Caption = 'Source Table PKey 3 Name';
            Editable = false;
        }
        field(55; "Source Table PKey 4 Name"; Text[50])
        {
            Caption = 'Source Table PKey 4 Name';
            Editable = false;
        }
        field(60; "Source Table PKey 5 Name"; Text[50])
        {
            Caption = 'Source Table PKey 5 Name';
            Editable = false;
        }
        field(140; "Verific. Description"; Text[50])
        {
            Caption = 'Verific. Description';
        }
        field(145; "Verific. 2 Description"; Text[50])
        {
            Caption = 'Verific. 2 Description';
        }
        field(250; "Verific. Permission Field No."; Integer)
        {
            Caption = 'Verification Permission Field No.';
        }
        field(255; "Verification Type"; Option)
        {
            Caption = 'Verification Type';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(510; "Item Ledg. Entry No"; Integer)
        {
            Caption = 'Item Ledg. Entry No';
            Editable = false;
            TableRelation = "Item Ledger Entry";
        }
        field(515; "Whse. Entry No."; Integer)
        {
            Caption = 'Whse. Entry No.';
            Editable = false;
            TableRelation = "Warehouse Entry";
        }
        field(545; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
        }
        field(550; "Source Table Caption"; Text[50])
        {
            Caption = 'Source Table Caption';
        }
        field(555; "Source Table PKey 1 Caption"; Text[50])
        {
            Caption = 'Source Table PKey 1 Caption';
            Editable = false;
        }
        field(560; "Source Table PKey 2 Caption"; Text[50])
        {
            Caption = 'Source Table PKey 2 Caption';
            Editable = false;
        }
        field(565; "Source Table PKey 3 Caption"; Text[50])
        {
            Caption = 'Source Table PKey 3 Caption';
            Editable = false;
        }
        field(570; "Source Table PKey 4 Caption"; Text[50])
        {
            Caption = 'Source Table PKey 4 Caption';
            Editable = false;
        }
        field(575; "Source Table PKey 5 Caption"; Text[50])
        {
            Caption = 'Source Table PKey 5 Caption';
            Editable = false;
        }
        field(610; "Hash Value"; Text[32])
        {
            Caption = 'Hash Value';
        }
        field(1000; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(1005; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(1010; "Creation Time"; Time)
        {
            Caption = 'Creation Time';
            Editable = false;
        }
        field(1015; "Created by Name"; Text[65])
        {
            Caption = 'Created by Name';
        }
        field(1100; "Verified by"; Code[50])
        {
            Caption = 'Verified by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(1105; "Verification Date"; Date)
        {
            Caption = 'Verification Date';
            Editable = false;
        }
        field(1110; "Verification Time"; Time)
        {
            Caption = 'Verification Time';
            Editable = false;
        }
        field(1115; "Verified by Name"; Text[65])
        {
            Caption = 'Verified by Name';
        }
        field(1120; "Second Verified by"; Code[50])
        {
            Caption = 'Second Verified by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(1125; "Second Verification Date"; Date)
        {
            Caption = 'Second Verification Date';
            Editable = false;
        }
        field(1130; "Second Verification Time"; Time)
        {
            Caption = 'Second Verification Time';
            Editable = false;
        }
        field(1135; "Second Verified by Name"; Text[65])
        {
            Caption = 'Verified by Name';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Item Ledg. Entry No")
        {
        }
        key(Key3; "Whse. Entry No.")
        {
        }
        key(Key4; "Source Table No.", "Source Table PKey 1", "Source Table PKey 2", "Source Table PKey 3", "Source Table PKey 4", "Source Table PKey 5")
        {
        }
    }

    fieldgroups
    {
    }
}

