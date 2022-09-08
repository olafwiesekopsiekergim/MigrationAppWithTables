table 5013782 "Doc BOM Personnel"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Doc BOM Personnel';

    fields
    {
        field(1; "Doc BOM No."; Code[20])
        {
            Caption = 'Doc BOM No.';
            NotBlank = true;
            TableRelation = "Document BOM";
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
        field(21; "Doc BOM Line No."; Integer)
        {
            Caption = 'Doc BOM Line No.';
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

