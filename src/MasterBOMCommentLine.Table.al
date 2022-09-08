table 5013693 "Master BOM Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Master BOM Comment Line';

    fields
    {
        field(1; "Master BOM No."; Code[20])
        {
            Caption = 'Master BOM No.';
            NotBlank = true;
            TableRelation = "Master BOM Header";
        }
        field(2; "Master BOM Line No."; Integer)
        {
            Caption = 'Master BOM Line No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            TableRelation = "Master BOM Version"."Version Code" WHERE ("BOM Code" = FIELD ("Master BOM No."));
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
        key(Key1; "Master BOM No.", "Version Code", "Master BOM Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

