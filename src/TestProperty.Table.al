table 5034590 "Test Property"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Change VAR name: UserID to UsersID
    //   Correct VAR Usage
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.00.02:T101 29.04.14 DEMSR.KHS
    //   New field for Ingredient Mgt.: "Alloc. Unit of Measure Code"

    Caption = 'Test Property';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(4; "Result Type Code"; Code[10])
        {
            Caption = 'Result Type Code';
            TableRelation = "Result Type";
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(7; Comment; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (0),
                                                         "No." = FIELD (Code)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Output Internal"; Boolean)
        {
            Caption = 'Output Internal';
            InitValue = true;
        }
        field(11; "Output External"; Boolean)
        {
            Caption = 'Output External';
            InitValue = true;
        }
        field(12; "Execute Test"; Boolean)
        {
            Caption = 'Execute Test';
            InitValue = true;
        }
        field(25; "Expected Value"; Text[100])
        {
            Caption = 'Expected Value';
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(50; "Test Order Cycle"; Code[10])
        {
            Caption = 'Test Order Cycle';
            DateFormula = true;
        }
        field(80; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034590),
                                                         "No." = FIELD (Code),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034590),
                                                         "No." = FIELD (Code),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(310; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(320; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(330; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(600; "Upper Limit"; Text[100])
        {
            Caption = 'Upper Limit';
        }
        field(605; "Lower Limit"; Text[100])
        {
            Caption = 'Lower Limit';
        }
        field(5012401; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            Description = '#PMW17.10.00.02:T101';
            TableRelation = "Unit of Measure".Code;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Result Type Code")
        {
        }
    }

    fieldgroups
    {
    }
}

