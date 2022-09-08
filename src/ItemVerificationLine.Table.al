table 5060470 "Item Verification Line"
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
    // #RAW17.00:T113 27.09.12 DEMSR.BKR
    //   Adjustments for Change Log triggers are now called on every change.
    //   Added Field "Disable Change Log Modific."
    // 
    // #RAW17.00.00.01:T501 12.03.13 DEMSR.BKR
    //   Renaming by suggestions of a native speaker
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding
    // #QMW17.00:205 06.12.12 DEMSR.KHS
    //   Integrate RA2013 into QM

    Caption = 'Item Verification Line';

    fields
    {
        field(1; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
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
        field(100; Value; Text[250])
        {
            Caption = 'Value';
            Editable = false;
        }
        field(105; "Value Fieldname"; Text[250])
        {
            Caption = 'Value Fieldname';
            Editable = false;
        }
        field(107; "Value Caption"; Text[250])
        {
            Caption = 'Value Caption';
            Editable = false;
        }
        field(110; "Verify Value"; Text[250])
        {
            Caption = 'Verify Value';
        }
        field(120; "Value 2"; Text[250])
        {
            Caption = 'Value 2';
            Editable = false;
        }
        field(125; "Value 2 Fieldname"; Text[250])
        {
            Caption = 'Value 2 Fieldname';
            Editable = false;
        }
        field(127; "Value 2 Caption"; Text[250])
        {
            Caption = 'Value 2 Caption';
            Editable = false;
        }
        field(130; "Verify Value 2"; Text[250])
        {
            Caption = 'Verify Value 2';
        }
        field(140; "Verific. Description"; Text[50])
        {
            Caption = 'Verific. Description';
        }
        field(145; "Verific. Description 2"; Text[50])
        {
            Caption = 'Verific. Description 2';
        }
        field(200; "Delete After Posting"; Boolean)
        {
            Caption = 'Delete After Posting';
            Editable = false;
        }
        field(205; "Directed Put-away and Pick"; Boolean)
        {
            Caption = 'Directed Put-away and Pick';
        }
        field(210; "Original Source Type"; Integer)
        {
            Caption = 'Original Source Type';
            Editable = false;
        }
        field(215; "Original Source Subtype"; Text[20])
        {
            Caption = 'Original Source Subtype';
            Editable = false;
        }
        field(220; "Original Source No."; Text[20])
        {
            Caption = 'Original Source No.';
            Editable = false;
        }
        field(225; "Original Source Line No."; Text[20])
        {
            Caption = 'Original Source Line No.';
            Editable = false;
        }
        field(230; "Original Source Document"; Text[30])
        {
            Caption = 'Original Source Document';
            Editable = false;
        }
        field(250; "Verific. Permission Field No."; Integer)
        {
            Caption = 'Verification Permission Field No.';
            Editable = false;
        }
        field(255; "Verification Type"; Option)
        {
            Caption = 'Verification Type';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(260; "Area"; Option)
        {
            Caption = 'Area';
            OptionCaption = ',Inventory,Warehouse,Sale,Purchase,Manufacturing,Quality Management,,,,,,,,,, ';
            OptionMembers = ,Inventory,Warehouse,Sale,Purchase,Manufacturing,"Quality Management",,,,,,,,,," ";
        }
        field(500; "Line Verified"; Boolean)
        {
            Caption = 'Line Verified';
            Editable = false;
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
        field(600; "Posting Flag"; Boolean)
        {
            Caption = 'Posting Flag';
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
        field(5000; "Disable Change Log Modific."; Boolean)
        {
            Caption = 'Disable Change Log Modific.';
        }
    }

    keys
    {
        key(Key1; "Source Table No.", "Source Table PKey 1", "Source Table PKey 2", "Source Table PKey 3", "Source Table PKey 4", "Source Table PKey 5")
        {
            Clustered = true;
        }
        key(Key2; "Original Source Type", "Original Source Subtype", "Original Source No.", "Original Source Line No.")
        {
        }
        key(Key3; "Verific. Permission Field No.", "Line Verified")
        {
        }
    }

    fieldgroups
    {
    }
}

