table 5013786 "Const. Line Personnel"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Const. Line Personnel';

    fields
    {
        field(1; "Const. No."; Code[20])
        {
            Caption = 'Const. No.';
            NotBlank = true;
            TableRelation = "Construction Header";
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
        field(21; "Const. Line No."; Integer)
        {
            Caption = 'Const. Line No.';
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

