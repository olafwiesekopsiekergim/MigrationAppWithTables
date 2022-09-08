table 5034572 "Test Order Property Set"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.00.04:T501 18.12.09 DEMSR.KHS
    //   Update Delay in Value Recording
    // 
    // #QMW16.00.03:R462 03.08.11 DEMSR.KHS
    //   New Fields: "Test Plan No."
    //               "Test Plan Version"
    //               "Test Date (Test Order)"
    //               "Stability Test No."
    //               "Stability Test Line No."
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    //   Change VAR name: UserID to UsersID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Order Property Set';
    Permissions = TableData "Test Order" = r;

    fields
    {
        field(1; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Editable = false;
            TableRelation = "Test Order";
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Test Property Set Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            TableRelation = "Test Property Set";
        }
        field(15; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034572),
                                                         "No." = FIELD ("Test Order No."),
                                                         "Int 1" = FIELD ("Line No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034572),
                                                         "No." = FIELD ("Test Order No."),
                                                         "Int 1" = FIELD ("Line No."),
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
        field(400; "AQL-Value Zero Defect"; Decimal)
        {
            Caption = 'ZD';
            DecimalPlaces = 0 : 5;
            Editable = false;
            TableRelation = "Allowed AQL Value";
        }
        field(405; "AQL-Value Severe"; Decimal)
        {
            Caption = 'S';
            DecimalPlaces = 0 : 5;
            Editable = false;
            TableRelation = "Allowed AQL Value";
        }
        field(410; "AQL-Value Critial"; Decimal)
        {
            Caption = 'C';
            DecimalPlaces = 0 : 5;
            Editable = false;
            TableRelation = "Allowed AQL Value";
        }
        field(415; "AQL-Value Major"; Decimal)
        {
            Caption = 'Ma';
            DecimalPlaces = 0 : 5;
            Editable = false;
            TableRelation = "Allowed AQL Value";
        }
        field(420; "AQL-Value Minor"; Decimal)
        {
            Caption = 'Mi';
            DecimalPlaces = 0 : 5;
            Editable = false;
            TableRelation = "Allowed AQL Value";
        }
        field(430; "Testing Method"; Option)
        {
            Caption = 'Testing Method';
            Editable = false;
            OptionCaption = ' ,Counting (AQL),Measuring';
            OptionMembers = " ","Counting (AQL)",Measuring;
        }
        field(435; "Non Valid Result Value"; Boolean)
        {
            CalcFormula = Exist ("Test Order Property" WHERE ("Test Order No." = FIELD ("Test Order No."),
                                                             "PropertySet Line No." = FIELD ("Line No."),
                                                             "Property Tested" = CONST (true),
                                                             "Valid Determined Value" = CONST (false)));
            Caption = 'Actual Value beyond Target Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(440; "Acceptance Number ZD"; Integer)
        {
            Caption = 'Acceptance Number ZD';
            Editable = false;
        }
        field(445; "Error Number ZD"; Integer)
        {
            Caption = 'Error Number ZD';
            Editable = false;
        }
        field(450; "Acceptance Number S"; Integer)
        {
            Caption = 'Acceptance Number S';
            Editable = false;
        }
        field(455; "Error Number S"; Integer)
        {
            Caption = 'Error Number S';
            Editable = false;
        }
        field(460; "Acceptance Number C"; Integer)
        {
            Caption = 'Acceptance Number C';
            Editable = false;
        }
        field(465; "Error Number C"; Integer)
        {
            Caption = 'Error Number C';
            Editable = false;
        }
        field(470; "Acceptance Number Ma"; Integer)
        {
            Caption = 'Acceptance Number Ma';
            Editable = false;
        }
        field(475; "Error Number Ma"; Integer)
        {
            Caption = 'Error Number Ma';
            Editable = false;
        }
        field(480; "Acceptance Number Mi"; Integer)
        {
            Caption = 'Acceptance Number Mi';
            Editable = false;
        }
        field(485; "Error Number Mi"; Integer)
        {
            Caption = 'Error Number Mi';
            Editable = false;
        }
        field(490; Tested; Boolean)
        {
            CalcFormula = - Exist ("Test Order Property" WHERE ("Test Order No." = FIELD ("Test Order No."),
                                                              "PropertySet Line No." = FIELD ("Line No."),
                                                              "No Testing" = CONST (false),
                                                              "Property Tested" = CONST (false)));
            Caption = 'Tested';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Test Plan";
        }
        field(510; "Test Plan Version"; Code[20])
        {
            Caption = 'Version';
            Description = '#QMW16.00.03:R462';
            Editable = false;
        }
        field(520; "Test Date (Test Order)"; Date)
        {
            CalcFormula = Lookup ("Test Order"."Test Date" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Date (Test Order)';
            Description = '#QMW16.00.03:R462';
            Editable = false;
            FieldClass = FlowField;
        }
        field(530; "Stability Test No."; Code[20])
        {
            Caption = 'Stability Test No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Stability Test Header";
        }
        field(540; "Stability Test Line No."; Integer)
        {
            Caption = 'Stability Test Line No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Stability Test Line"."Line No." WHERE ("Stability Test No." = FIELD ("Stability Test No."));
        }
    }

    keys
    {
        key(Key1; "Test Order No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Property Set Code")
        {
        }
    }

    fieldgroups
    {
    }
}

