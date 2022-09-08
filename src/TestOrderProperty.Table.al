table 5034574 "Test Order Property"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // # Description set to 50 Chars Length
    // 
    // #QMW16.00.01:R001 18.11.09 DEMSR.KHS
    //   Customer / Item Specification tables
    // 
    // #QMW16.00.03:R247 02.08.11 DEMSR.KHS
    //   New Field "Error Code"
    //   New Function: GetTestMethod
    // 
    // #QMW16.00.03:R462 03.08.11 DEMSR.KHS
    //   Added Stability Testing
    //   Option added: "Stability Test" to field "Test Order Source Type"
    //   New Field: "Test Plan No."
    //              "Test Plan Version"
    //              "Test Date (Test Order)"
    //              "Stability Test No."
    //              "Stability Test Entry No."
    //              "Test Order Status"
    //              "Stability Test Status"
    //              "Stability Test Inv.Condition"
    //   New Key: "Stability Test No.","Stability Test Line No."
    // 
    // #QMW16.00.03:T380 23.08.11 DEMSR.BKR
    //   Integration RA into QM
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    //   Change VAR name: UserID to UsersID
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.01:T102 07.05.15 DEMSR.KHS
    //   Add FlowField: "Status"
    // 
    // #QMW18.00.01:T103 07.05.15 DEMSR.KHS
    //   Add FlowFields: "Test Incident No.", "Test Incident Order No."
    // 
    // #QMW18.00.01:T104 11.05.15 DEMSR.KHS
    //   add changes for "Use Unspecified Status on TO"
    // 
    // #PMW16.00.02:T271   18.11.10 DEMSR.KHS
    //   Integration of Trading Unit from PM into QM
    //   New Fields: "Lot No. Trading Unit"
    //               "Trading Unit No."
    // 
    // #PMW16.00.03:T506 12.08.11 DEMSR.KHS
    //   Change Trading Unit fields to flowfields
    // 
    // #PMW17.10.00.02:T101 29.04.14 DEMSR.KHS
    //   Add fields for Ingredient Mgt.:
    //     "Qty. per Unit of Measure"
    //     "Alloc. Unit of Measure Code"
    //     "Alloc. Qty. per Unit of Meas."
    // 
    // GIM0009 23.5.22 New Fields DetermValueTester1, DetermValueTester2

    Caption = 'Test Order Property';
    Permissions = TableData "Test Order" = r;

    fields
    {
        field(5; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Test Order";
        }
        field(10; "PropertySet Line No."; Integer)
        {
            Caption = 'Testing Type Line No.';
            Editable = false;
        }
        field(15; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(20; "Test PropertySet Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            TableRelation = "Test Property Set";
        }
        field(25; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            TableRelation = "Test Property";
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(40; "Property Tested"; Boolean)
        {
            Caption = 'Property Tested';
        }
        field(55; "Expected Value"; Text[100])
        {
            Caption = 'Expected Value';
        }
        field(65; "Output external"; Boolean)
        {
            Caption = 'Output External';
        }
        field(70; "Output internal"; Boolean)
        {
            Caption = 'Output Internal';
        }
        field(75; "Execute Test"; Boolean)
        {
            CalcFormula = Lookup ("Test Property"."Execute Test" WHERE (Code = FIELD ("Test Property Code")));
            Caption = 'Execute Test';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Determined Value"; Text[100])
        {
            Caption = 'Determined Value';
        }
        field(203; "No Testing"; Boolean)
        {
            Caption = 'No Testing';
        }
        field(210; "Output Value"; Text[30])
        {
            Caption = 'Output Value';
        }
        field(215; "Test Date"; Date)
        {
            Caption = 'Test Date';
        }
        field(220; "Next Test Date"; Date)
        {
            Caption = 'Next Test Date';
            Editable = false;
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034574),
                                                         "No." = FIELD ("Test Order No."),
                                                         "Int 1" = FIELD ("PropertySet Line No."),
                                                         "Int 2" = FIELD ("Line No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034574),
                                                         "No." = FIELD ("Test Order No."),
                                                         "Int 1" = FIELD ("PropertySet Line No."),
                                                         "Int 2" = FIELD ("Line No."),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(270; "Test Device"; Boolean)
        {
            CalcFormula = Exist ("Test Order Test Device" WHERE ("Test Order No." = FIELD ("Test Order No."),
                                                                "Propertyset Line No." = FIELD ("PropertySet Line No."),
                                                                "Test Property Line No." = FIELD ("Line No.")));
            Caption = 'Test Device';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Test Device";
        }
        field(271; "No. of Test Devices"; Integer)
        {
            CalcFormula = Count ("Test Order Test Device" WHERE ("Test Order No." = FIELD ("Test Order No."),
                                                                "Propertyset Line No." = FIELD ("PropertySet Line No."),
                                                                "Test Property Line No." = FIELD ("Line No.")));
            Caption = 'No. of Test Devices';
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
            Editable = false;
            TableRelation = "Result Type";
        }
        field(292; "Valid Determined Value"; Boolean)
        {
            Caption = 'Valid Determined Value';
            Editable = false;
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
            Editable = false;
        }
        field(405; "Test S"; Boolean)
        {
            Caption = 'Test S';
            Editable = false;
        }
        field(410; "Test C"; Boolean)
        {
            Caption = 'Test C';
            Editable = false;
        }
        field(415; "Test Ma"; Boolean)
        {
            Caption = 'Test Ma';
            Editable = false;
        }
        field(420; "Test Mi"; Boolean)
        {
            Caption = 'Test Mi';
            Editable = false;
        }
        field(430; "Failed Qty. ZD"; Integer)
        {
            Caption = 'Failed Qty. ZD';
        }
        field(435; "Failed Qty. S"; Integer)
        {
            Caption = 'Failed Qty. S';
        }
        field(440; "Failed Qty. C"; Integer)
        {
            Caption = 'Failed Qty. C';
        }
        field(445; "Failed Qty. Ma"; Integer)
        {
            Caption = 'Failed Qty. Ma';
        }
        field(450; "Failed Qty. Mi"; Integer)
        {
            Caption = 'Failed Qty. Mi';
        }
        field(460; "Test Location Code"; Code[20])
        {
            Caption = 'Test Location Code';
            Description = 'BMP';
            TableRelation = "Test Location";
        }
        field(600; "Upper Limit"; Text[100])
        {
            Caption = 'Upper Limit';
        }
        field(605; "Lower Limit"; Text[100])
        {
            Caption = 'Lower Limit';
        }
        field(800; "Test Destination Type"; Option)
        {
            CalcFormula = Lookup ("Test Order"."Test Destination Type" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Destination Type';
            Description = '5034551';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Item,Test Device';
            OptionMembers = Item,"Test Device";
        }
        field(801; "Test Destination No."; Code[20])
        {
            CalcFormula = Lookup ("Test Order"."Test Destination No." WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Destination No.';
            Description = '5034550';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = IF ("Test Destination Type" = CONST (Item)) Item
            ELSE
            IF ("Test Destination Type" = CONST ("Test Device")) "Test Device";
        }
        field(810; "Serial No."; Code[20])
        {
            CalcFormula = Lookup ("Test Order"."Serial No." WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Serial No.';
            Description = '5034553';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Serial No. Information"."Serial No." WHERE ("Item No." = FIELD ("Test Destination No."),
                                                                                                                  "Variant Code" = CONST (''));
        }
        field(811; "Lot No."; Code[30])
        {
            CalcFormula = Lookup ("Test Order"."Lot No." WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Lot No.';
            Description = '5034552';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Lot No. Information"."Lot No." WHERE ("Item No." = FIELD ("Test Destination No."),
                                                                                                            "Variant Code" = CONST (''));
        }
        field(850; "Error Code"; Code[10])
        {
            Caption = 'Error Code';
            Description = '#QMW16.00.03:R247';
            TableRelation = Error_QM;
        }
        field(900; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Test Plan";
        }
        field(910; "Test Plan Version"; Code[20])
        {
            Caption = 'Test Plan Version';
            Description = '#QMW16.00.03:R462';
            Editable = false;
        }
        field(920; "Test Date (Test Order)"; Date)
        {
            CalcFormula = Lookup ("Test Order"."Test Date" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Date (Test Order)';
            Description = '#QMW16.00.03:R462';
            Editable = false;
            FieldClass = FlowField;
        }
        field(930; "Stability Test No."; Code[20])
        {
            Caption = 'Stability Test No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Stability Test Header";
        }
        field(940; "Stability Test Line No."; Integer)
        {
            Caption = 'Stability Test Line No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Stability Test Line"."Line No." WHERE ("Stability Test No." = FIELD ("Stability Test No."));
        }
        field(950; "Test Order Status"; Option)
        {
            CalcFormula = Lookup ("Test Order".Status WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Order Status';
            Description = '#QMW16.00.03:R462';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Created,,,Value Recording,,Testing Finished,,,Finished,,,Cancelled';
            OptionMembers = Created,,,"Value Recording",,"Testing Finished",,,Finished,,,Cancelled;
        }
        field(960; "Stability Test Status"; Option)
        {
            CalcFormula = Lookup ("Test Order"."Stability Test Status" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Stability Test Status';
            Description = '#QMW16.00.03:R462';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,In Process,On Hold,Canceled,Finished';
            OptionMembers = " ","In Process","On Hold",Canceled,Finished;
        }
        field(970; "Stability Test Inv.Condition"; Code[20])
        {
            Caption = 'Stability Test Inventory Condition';
            Description = '#QMW16.00.03:R462';
            TableRelation = "Stability Test Line";
        }
        field(980; "Test Order Source Type"; Option)
        {
            CalcFormula = Lookup ("Test Order"."Source Type" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Order Source Type';
            Description = '#QMW16.00.03:R462';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Inventory,Purchase Order,Purchase Receipt,Sales Order,Sales Shipment,Sales Return Order,Sales Return Receipt,Production Order,Operation,Stability Test';
            OptionMembers = Inventory,"Purchase Order","Purchase Receipt","Sales Order","Sales Shipment","Sales Return Order","Sales Return Receipt","Production Order",Operation,"Stability Test";
        }
        field(1000; "Test Incident No."; Code[20])
        {
            CalcFormula = Lookup ("Test Order"."Test Incident No." WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Incident No.';
            Description = '#QMW18.00.01:T103';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1010; "Test Incident Order No."; Integer)
        {
            CalcFormula = Lookup ("Test Order"."Test Incident Order No." WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Incident Order No.';
            Description = '#QMW18.00.01:T103';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1020; Status; Option)
        {
            CalcFormula = Lookup ("Test Order".Status WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Status';
            Description = '#QMW18.00.01:T102';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Created,,,Value Recording,,Testing Finished,,,Finished,,,Cancelled';
            OptionMembers = Created,,,"Value Recording",,"Testing Finished",,,Finished,,,Cancelled;
        }
        field(50001; DetermValueTester1; Text[100])
        {
            Caption = 'Istwert Prüfer 1';
            DataClassification = ToBeClassified;
            Description = 'GIM0009';
        }
        field(50002; DetermValueTester2; Text[100])
        {
            Caption = 'Istwert Prüfer 2';
            DataClassification = ToBeClassified;
            Description = 'GIM0009';
        }
        field(5012400; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Description = '#PMW17.10.00.02:T101';
            Editable = false;
        }
        field(5012401; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            Description = '#PMW17.10.00.02:T101';
            Editable = false;
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Test Destination No."));
        }
        field(5012402; "Alloc. Qty. per Unit of Meas."; Decimal)
        {
            Caption = 'Alloc. Qty. per Unit of Meas.';
            DecimalPlaces = 0 : 5;
            Description = '#PMW17.10.00.02:T101';
            Editable = false;
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            CalcFormula = Lookup ("Test Order"."Lot No. Trading Unit" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW16.00.02:T271,#PMW16.00.03:T506';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Lot No. Information"."Lot No. Trading Unit" WHERE ("Item No." = FIELD ("Test Destination No."),
                                                                                                                         "Variant Code" = CONST (''));
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            CalcFormula = Lookup ("Test Order"."Trading Unit No." WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Trading Unit No.';
            Description = '#PMW16.00.02:T271,#PMW16.00.03:T506';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Lot No. Information"."Trading Unit No." WHERE ("Item No." = FIELD ("Test Destination No."),
                                                                                                                     "Variant Code" = CONST (''));
        }
    }

    keys
    {
        key(Key1; "Test Order No.", "PropertySet Line No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Property Code")
        {
        }
        key(Key3; "Test PropertySet Code", "Test Property Code")
        {
        }
        key(Key4; "Stability Test No.", "Stability Test Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

