table 5013789 "Clipboard Standard Task"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:6:01 #Added the field "Line No." to the PrimaryKey, otherwise not more than 1 Comment line etc. can be copied
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Clipboard Standard Task';

    fields
    {
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(12; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(13; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(109; "Qlty Measure Code"; Code[10])
        {
            Caption = 'Qlty Measure Code';
        }
        field(110; "Description QM"; Text[50])
        {
            Caption = 'Description QM';
        }
        field(111; "Min. Value"; Decimal)
        {
            Caption = 'Min. Value';
            DecimalPlaces = 0 : 5;
        }
        field(112; "Max. Value"; Decimal)
        {
            Caption = 'Max. Value';
            DecimalPlaces = 0 : 5;
        }
        field(113; "Mean Tolerance"; Decimal)
        {
            Caption = 'Mean Tolerance';
            DecimalPlaces = 0 : 5;
        }
        field(2000000; "Source Table"; Integer)
        {
            Caption = 'Source Table';
        }
        field(2000010; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
        field(2000020; "Source Code 2"; Code[20])
        {
            Caption = 'Source Code 2';
        }
        field(2000030; "Source Entry No."; Integer)
        {
            Caption = 'Source Entry No.';
        }
        field(2000040; "Source Entry No. 2"; Integer)
        {
            Caption = 'Source Entry No. 2';
        }
        field(2000100; "Standard Task Table"; Option)
        {
            Caption = 'Standard Task Table';
            OptionCaption = ' ,Tool,Personnel,Comment,Quality Measure';
            OptionMembers = " ",Tool,Personnel,Comment,"Quality Measure";
        }
    }

    keys
    {
        key(Key1; "Source Table", "Source Code", "Source Code 2", "Source Entry No.", "Source Entry No. 2", "Standard Task Table", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

