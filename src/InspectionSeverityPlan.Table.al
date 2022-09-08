table 5034608 "Inspection Severity Plan"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Inspection Severity Plan';

    fields
    {
        field(1; "Inspection Severity Code"; Code[20])
        {
            Caption = 'Inspection Severity Code';
            NotBlank = true;
            TableRelation = "Inspection Severity";
        }
        field(2; "Current Test Type"; Code[20])
        {
            Caption = 'Current Test Type';
            NotBlank = true;
            TableRelation = "Test Type";
        }
        field(3; "Current Test No."; Integer)
        {
            Caption = 'Current Test No.';
            NotBlank = true;
        }
        field(4; "Next Test Type when OK"; Code[20])
        {
            Caption = 'Next Test Type when OK';
            TableRelation = "Test Type";
        }
        field(5; "Next Test No. when OK"; Integer)
        {
            Caption = 'Next Test No. when OK';
        }
        field(6; "Next Test Type when not OK"; Code[20])
        {
            Caption = 'Next Test Type when not OK';
            TableRelation = "Test Type";
        }
        field(7; "Next Test No. when not OK"; Integer)
        {
            Caption = 'Next Test No. when not OK';
        }
        field(8; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(9; Default; Boolean)
        {
            Caption = 'Default';
        }
        field(10; "No Testing"; Boolean)
        {
            Caption = 'No Testing';
        }
    }

    keys
    {
        key(Key1; "Inspection Severity Code", "Current Test Type", "Current Test No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

