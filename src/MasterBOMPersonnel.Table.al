table 5013692 "Master BOM Personnel"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Master BOM Personnel';

    fields
    {
        field(1; "Master BOM No."; Code[20])
        {
            Caption = 'Master BOM No.';
            NotBlank = true;
            TableRelation = "Master BOM Header";
        }
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
        field(20; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            TableRelation = "Master BOM Version"."Version Code" WHERE ("BOM Code" = FIELD ("Master BOM No."));
        }
        field(21; "Master BOM Line No."; Integer)
        {
            Caption = 'Master BOM Line No.';
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

