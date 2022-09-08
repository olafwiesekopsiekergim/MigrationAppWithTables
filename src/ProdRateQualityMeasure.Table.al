table 5012724 "Prod. Rate Quality Measure"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW17.00:T201 19.11.12 DEMSR.IST
    //   Object created
    // 
    // #PXW17.00.00.02:T501 07.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Rate Quality Measure';

    fields
    {
        field(1; "Prod. Rate Entry No."; Integer)
        {
            Caption = 'Prod. Rate Entry No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Qlty Measure Code"; Code[10])
        {
            Caption = 'Qlty Measure Code';
            TableRelation = "Quality Measure";
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Min. Value"; Decimal)
        {
            Caption = 'Min. Value';
            DecimalPlaces = 0 : 5;
        }
        field(6; "Max. Value"; Decimal)
        {
            Caption = 'Max. Value';
            DecimalPlaces = 0 : 5;
        }
        field(7; "Mean Tolerance"; Decimal)
        {
            Caption = 'Mean Tolerance';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Prod. Rate Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

