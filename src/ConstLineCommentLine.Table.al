table 5013787 "Const. Line Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Const. Line Comment Line';

    fields
    {
        field(1; "Const. No."; Code[20])
        {
            Caption = 'Const. No.';
            NotBlank = true;
            TableRelation = "Construction Header";
        }
        field(2; "Const. Line No."; Integer)
        {
            Caption = 'Const. Line No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
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
    }

    keys
    {
        key(Key1; "Const. No.", "Const. Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

