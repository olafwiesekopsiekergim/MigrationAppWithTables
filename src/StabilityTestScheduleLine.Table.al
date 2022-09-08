table 5034644 "Stability Test Schedule Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R462 12.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.00 21.11.12 DEMSR.KHS
    //   Table relation on field "Code" added
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Stability Test Schedule Line';

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Stability Test Schedule Header";
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
            NotBlank = true;
        }
        field(30; "Date Formula"; DateFormula)
        {
            Caption = 'Date Formula';
        }
    }

    keys
    {
        key(Key1; "Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

