table 5034582 "Test Property Set Property"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    //   Change Field "Execute Test" to a FlowField
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    //   Change VAR name: UserID to UsersID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.00.02:T101 29.04.14 DEMSR.KHS
    //   Add fields for Ingredient Mgt.:
    //     "Alloc. Unit of Measure Code"

    Caption = 'Test Property Set Property';

    fields
    {
        field(5; "Test Property Set Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            Editable = false;
            TableRelation = "Test Property Set";
        }
        field(15; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(25; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            TableRelation = "Test Property";
        }
        field(26; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; "Output External"; Boolean)
        {
            Caption = 'Output External';
        }
        field(35; "Output Internal"; Boolean)
        {
            Caption = 'Output Internal';
        }
        field(40; "Execute Test"; Boolean)
        {
            CalcFormula = Lookup ("Test Property"."Execute Test" WHERE (Code = FIELD ("Test Property Code")));
            Caption = 'Execute Test';
            Description = '#QMW17.00:104';
            Editable = false;
            FieldClass = FlowField;
        }
        field(45; "Expected Value"; Text[250])
        {
            Caption = 'Expected Value';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034582),
                                                         "No." = FIELD ("Test Property Set Code"),
                                                         "Int 1" = FIELD ("Line No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034582),
                                                         "No." = FIELD ("Test Property Set Code"),
                                                         "Int 1" = FIELD ("Line No."),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(270; "Test Device"; Boolean)
        {
            CalcFormula = Exist ("Test Property Set Test Device" WHERE ("Test Property Set Code" = FIELD ("Test Property Set Code"),
                                                                       "Test Propertyset Line No." = FIELD ("Line No.")));
            Caption = 'Test Device';
            Editable = false;
            FieldClass = FlowField;
        }
        field(275; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Unit of Measure";
        }
        field(290; "Result Type Code"; Code[10])
        {
            Caption = 'Result Type Code';
            TableRelation = "Result Type";
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
        field(400; "Test ZD"; Boolean)
        {
            Caption = 'Test ZD';
        }
        field(405; "Test S"; Boolean)
        {
            Caption = 'Test S';
        }
        field(410; "Test C"; Boolean)
        {
            Caption = 'Test C';
        }
        field(415; "Test Ma"; Boolean)
        {
            Caption = 'Test Ma';
        }
        field(420; "Test Mi"; Boolean)
        {
            Caption = 'Test Mi';
        }
        field(430; "Test Locations"; Boolean)
        {
            CalcFormula = Exist ("Test Prop. Set Test Location" WHERE ("Test Property Set Code" = FIELD ("Test Property Set Code"),
                                                                      "Test Property Set Line No." = FIELD ("Line No.")));
            Caption = 'Test Locations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(600; "Upper Limit"; Text[250])
        {
            Caption = 'Upper Limit';
        }
        field(605; "Lower Limit"; Text[250])
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
        key(Key1; "Test Property Set Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Property Code")
        {
        }
    }

    fieldgroups
    {
    }
}

