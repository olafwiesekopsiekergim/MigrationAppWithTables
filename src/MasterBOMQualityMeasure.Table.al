table 5013694 "Master BOM Quality Measure"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Master BOM Quality Measure';

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

