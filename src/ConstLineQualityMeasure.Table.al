table 5013788 "Const. Line Quality Measure"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Const. Line Quality Measure';

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
        field(9; "Qlty Measure Code"; Code[10])
        {
            Caption = 'Qlty Measure Code';
            TableRelation = "Quality Measure";
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Min. Value"; Decimal)
        {
            Caption = 'Min. Value';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Max. Value"; Decimal)
        {
            Caption = 'Max. Value';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Mean Tolerance"; Decimal)
        {
            Caption = 'Mean Tolerance';
            DecimalPlaces = 0 : 5;
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

