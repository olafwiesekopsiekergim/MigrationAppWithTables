table 5034564 "Test Plan Property"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.01:T503 17.08.09 DEMSR.KHS
    //   Description field too short
    // 
    // #QMW16.00.02:R029 25.08.10 DEMSR.KHS
    //   Frequently Measurement of Properties in a Test Order
    // 
    // #QMW16.00.03:01:T505 23.12.11 DEMSR.KHS
    //   Test on existing Inspection Severity on Test Prop.
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    //   replace VAR UserID by UsersID
    //   correct indentation
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.00.02:T101 29.04.14 DEMSR.KHS
    //   New field for Ingredient Mgt.: "Alloc. Unit of Measure Code"

    Caption = 'Test Plan Property';

    fields
    {
        field(5; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Test Plan";
        }
        field(6; Version; Code[20])
        {
            Caption = 'Version';
        }
        field(10; "Property Set Line No."; Integer)
        {
            Caption = 'Property Set Line No.';
            Editable = false;
        }
        field(15; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(20; "Test Property Set Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            TableRelation = "Test Property Set";
        }
        field(25; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            TableRelation = "Test Property";
        }
        field(26; Description; Text[50])
        {
            Caption = 'Description';
            Description = '#QMW16.00.01:T503';
        }
        field(30; "Output external"; Boolean)
        {
            Caption = 'Output External';
        }
        field(35; "Output internal"; Boolean)
        {
            Caption = 'Output internal';
        }
        field(40; "Execute Test"; Boolean)
        {
            CalcFormula = Lookup ("Test Property"."Execute Test" WHERE (Code = FIELD ("Test Property Code")));
            Caption = 'Execute Test';
            Editable = false;
            FieldClass = FlowField;
        }
        field(45; "Expected Value"; Text[100])
        {
            Caption = 'Expected Value';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034564),
                                                         "No." = FIELD ("Test Plan No."),
                                                         "Version No." = FIELD (Version),
                                                         "Int 1" = FIELD ("Property Set Line No."),
                                                         "Int 2" = FIELD ("Line No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034564),
                                                         "No." = FIELD ("Test Plan No."),
                                                         "Version No." = FIELD (Version),
                                                         "Int 1" = FIELD ("Property Set Line No."),
                                                         "Int 2" = FIELD ("Line No."),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(250; "Dok. Actual Value Modification"; Text[80])
        {
            Caption = 'Dok. Actual Value Modification';
        }
        field(270; "Test Device"; Boolean)
        {
            CalcFormula = Exist ("Test Plan Test Device" WHERE ("Test Plan No." = FIELD ("Test Plan No."),
                                                               "Test Propertyset Line No." = FIELD ("Property Set Line No."),
                                                               "Test Property Line No." = FIELD ("Line No.")));
            Caption = 'Test Device';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Test Device";
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
        field(400; "Test Zero Defect"; Boolean)
        {
            Caption = 'Test ZD';
        }
        field(405; "Test Severe"; Boolean)
        {
            Caption = 'Test S';
        }
        field(410; "Test Critical"; Boolean)
        {
            Caption = 'Test C';
        }
        field(415; "Test Major"; Boolean)
        {
            Caption = 'Test Ma';
        }
        field(420; "Test Minor"; Boolean)
        {
            Caption = 'Test Mi';
        }
        field(430; "Test Locations"; Boolean)
        {
            CalcFormula = Exist ("Test Plan Test Location" WHERE ("Test Plan No." = FIELD ("Test Plan No."),
                                                                 "Test Plan Version" = FIELD (Version),
                                                                 "Test Property Set Line No." = FIELD ("Property Set Line No."),
                                                                 "Line No." = FIELD ("Line No.")));
            Caption = 'Test Locations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(600; "Upper Limit"; Text[100])
        {
            Caption = 'Upper Limit';
        }
        field(605; "Lower Limit"; Text[100])
        {
            Caption = 'Lower Limit';
        }
        field(650; "Test Each (Times)"; Integer)
        {
            Caption = 'Test Each (Times)';
            Description = '#QMW16.00.02:R029';
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
        key(Key1; "Test Plan No.", Version, "Property Set Line No.", "Line No.")
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

