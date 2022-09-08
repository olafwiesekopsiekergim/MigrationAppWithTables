table 5060463 "Verification Comment"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T112 14.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    //   Change Entry No. to data type integer
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Verification Comment';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = "Verification Entry";
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(15; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(20; Comment; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

