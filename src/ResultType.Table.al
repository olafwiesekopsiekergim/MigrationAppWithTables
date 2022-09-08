table 5034553 "Result Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Update Table relation (Unit of Measure Code) to comply with guidelines
    //   Local VAR QualityMgtSetup deleted from function ActualValueWithinRef
    //   remove obsolete brackets
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Result Type';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(4; "Data Type"; Option)
        {
            Caption = 'Data Type';
            OptionCaption = 'Decimal,Integer,Boolean,Code,Option,Text';
            OptionMembers = Decimal,"Integer",Boolean,"Code",Option,Text;
        }
        field(5; "Succeeding Decimal Places"; Integer)
        {
            Caption = 'Succeeding Decimal Places';
        }
        field(6; "Preceding Decimal Places"; Integer)
        {
            Caption = 'Preceding Decimal Places';
        }
        field(200; "Data Type Decimal"; Decimal)
        {
            Caption = 'Data Type Decimal';
            Description = 'for plausibility check';
            Editable = false;
        }
        field(205; "Data Type Integer"; Integer)
        {
            Caption = 'Data Type Integer';
            Description = 'for plausibility check';
            Editable = false;
        }
        field(210; "Data Type Boolean"; Boolean)
        {
            Caption = 'Data Type Boolean';
            Description = 'for plausibility check';
            Editable = false;
        }
        field(215; "Data Type Code"; Code[250])
        {
            Caption = 'Data Type Code';
            Description = 'for plausibility check';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

