table 5060462 "Verification Entry"
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
    //   Change No. field from Code to Integer
    //   Added Field RecordID, "Description Required"
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Verification Entry';
    DataCaptionFields = "No.", "Source Table No.", "Source Table PKey 1";

    fields
    {
        field(5; "No."; Integer)
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(10; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(20; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
        }
        field(25; "Source Table PKey 1"; Text[20])
        {
            Caption = 'Source Table PKey 1';
            Editable = false;
        }
        field(30; "Source Table PKey 2"; Text[20])
        {
            Caption = 'Source Table PKey 2';
            Editable = false;
        }
        field(35; "Source Table PKey 3"; Text[20])
        {
            Caption = 'Source Table PKey 3';
            Editable = false;
        }
        field(40; "Source Table PKey 4"; Text[20])
        {
            Caption = 'Source Table PKey 4';
            Editable = false;
        }
        field(45; "Source Table PKey 5"; Text[20])
        {
            Caption = 'Source Table PKey 5';
            Editable = false;
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(101; "Description Required"; Boolean)
        {
            Caption = 'Description Required';
        }
        field(110; Responsible; Code[20])
        {
            Caption = 'Responsible';
            TableRelation = Resource;
        }
        field(115; Comment; Boolean)
        {
            CalcFormula = Exist ("Verification Comment" WHERE ("Entry No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140; "Change Type"; Option)
        {
            Caption = 'Change Type';
            OptionCaption = ' ,Set Certified Status,Set Converted Status,,Reset Certified Status,,,Insert,Append,Modify,,Delete,,Rename,,,,Modify Value';
            OptionMembers = " ","Set Certified Status","Set Converted Status",,"Reset Certified Status",,,Insert,Append,Modify,,Delete,,Rename,,,,"Modify Value";
        }
        field(145; "Verification Info"; Code[50])
        {
            Caption = 'Verification Info';
        }
        field(150; Project; Code[20])
        {
            Caption = 'Project';
            TableRelation = Job;
        }
        field(160; "New Value"; Text[250])
        {
            Caption = 'New Value';
        }
        field(165; "New Value Field Name"; Text[250])
        {
            Caption = 'New Value Field Name';
        }
        field(167; "New Value Caption"; Text[250])
        {
            Caption = 'New Value Caption';
        }
        field(170; "Old Value"; Text[250])
        {
            Caption = 'Old Value';
        }
        field(175; "Old Value Field Name"; Text[250])
        {
            Caption = 'Old Value Field Name';
        }
        field(177; "Old Value Caption"; Text[250])
        {
            Caption = 'Old Value Caption';
        }
        field(500; "Source Table Name"; Text[50])
        {
            Caption = 'Source Table Name';
        }
        field(505; "Source Table PKey 1 Name"; Text[50])
        {
            Caption = 'Source Table PKey 1 Name';
            Editable = false;
        }
        field(510; "Source Table PKey 2 Name"; Text[50])
        {
            Caption = 'Source Table PKey 2 Name';
            Editable = false;
        }
        field(515; "Source Table PKey 3 Name"; Text[50])
        {
            Caption = 'Source Table PKey 3 Name';
            Editable = false;
        }
        field(520; "Source Table PKey 4 Name"; Text[50])
        {
            Caption = 'Source Table PKey 4 Name';
            Editable = false;
        }
        field(525; "Source Table PKey 5 Name"; Text[50])
        {
            Caption = 'Source Table PKey 5 Name';
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
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Table No.", "Source Table PKey 1", "Source Table PKey 2", "Source Table PKey 3", "Source Table PKey 4", "Source Table PKey 5")
        {
        }
        key(Key3; "Record ID")
        {
        }
    }

    fieldgroups
    {
    }
}

