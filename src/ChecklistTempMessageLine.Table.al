table 5013682 "Checklist Temp. Message Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Checklist Template Message Line';
    DataCaptionFields = "Checklist Template Code", "Version Code", "Checkliste Template Line No.";

    fields
    {
        field(1; "Checklist Template Code"; Code[20])
        {
            Caption = 'Checklist Template Code';
            NotBlank = true;
            TableRelation = "Checklist Header Template";
        }
        field(2; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
        }
        field(3; "Checkliste Template Line No."; Integer)
        {
            Caption = 'Checkliste Template Line No.';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
        }
        field(6; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(7; Comment; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; "Checklist Template Code", "Version Code", "Checkliste Template Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

