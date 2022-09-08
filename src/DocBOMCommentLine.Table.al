table 5013783 "Doc BOM Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Doc BOM Comment Line';

    fields
    {
        field(1; "Doc BOM No."; Code[20])
        {
            Caption = 'Doc BOM No.';
            NotBlank = true;
            TableRelation = "Document BOM";
        }
        field(2; "Doc BOM Line No."; Integer)
        {
            Caption = 'Doc BOM Line No.';
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
        key(Key1; "Doc BOM No.", "Doc BOM Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

