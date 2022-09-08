table 5034570 "Test Order"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.00.02:T301 12.10.09 DEMSR.KHS
    //   Document Type Option / Caption changed
    // 
    // #QMW16.00.01:R001    18.11.09 DEMSR.KHS
    //   Customer / Item Specification tables
    // 
    // #QMW16.00.02:R190    06.08.10 DEMSR.KHS
    //   Transfer Items if Test failed
    // 
    // #QMW16.00.02:X001    27.10.10 DEMSR.KHS
    //   Lot Status Management
    //   Key changed: Test Destination Type,Test Destination No.,Test Destination Variant Code,Lot No.
    // 
    // #QMW16.00.03:R471 12.07.11 DEMSR.KHS
    //   Add Field "Order specific"
    // 
    // #QMW16.00.03:R462 03.08.11 DEMSR.KHS
    //   New option "Stability Test" in field "Source Type"
    //   New fields: "Stability Test Status"
    //               "Stability Test Line No."
    // 
    // #QMW16.00.03:R472 03.08.11 DEMSR.KHS
    //   New option "Component" in field "Source Type"
    //   New field: "Source Component Line No."
    // 
    // #QMW16.00.03:T519 30.09.11 DEMSR.KHS
    //   Added Table Relation on Source No. for Purchase Order
    // 
    // #QMW16.00.03.01:T401 10.02.12 DEMSR.KHS
    //   Field 161 "External Document" added
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.00:405 11.12.12 DEMSR.KHS
    //   Stability Test was not updated on Test Orderdelete
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    //   Intentation corrected
    //   Global VAR QMBasicFunctions deleted
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.02:T501 09.03.15 DEMSR.KHS
    //   Fix Move items to Blocked function
    // 
    // #QMW18.00.01:T102 05.05.15 DEMSR.KHS
    //   Function added: "OpenSourceDocument"
    // 
    // #QMW18.00.01:T103 05.05.15 DEMSR.KHS
    //   Fields added: "Test Incident No.", "Test Incident Order No."
    //   New Key: "Test Incident No."
    // 
    // #QMW18.00.01:T104 12.05.15 DEMSR.KHS
    //   Use Unspecified Test Result
    //   Add option "Unspecified" to "Inspection Result"
    // 
    // #PMW16.00.02:T271   18.11.10 DEMSR.KHS
    //   Integration of Trading Unit from PM into QM
    //   New Fields: "Lot No. Trading Unit", "Trading Unit No."
    // 
    // #PMW16.00.03:T251 30.09.11 DEMSR.KHS
    //   Function added: AssistEditLotSerialNo
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    // 
    // GIM0009 23.5.22 New Field Testerstatus
    //         22.6.22 CheckTestingFinished nur ausführen wenn Tester 1 Status und Tester 2 Status auf "Finished"

    Caption = 'Test Order';
    DataCaptionFields = "No.", Description;
    Permissions = TableData "Quality Management Setup" = r;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(11; Comment; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (3),
                                                         "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Editable = false;
            OptionCaption = 'Inventory,Purchase Order,Purchase Receipt,Sales Order,Sales Shipment,Sales Return Order,Sales Return Receipt,Production Order,Operation,Stability Test,,Component';
            OptionMembers = Inventory,"Purchase Order","Purchase Receipt","Sales Order","Sales Shipment","Sales Return Order","Sales Return Receipt","Production Order",Operation,"Stability Test",,Component;
        }
        field(21; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
            TableRelation = IF ("Source Type" = CONST ("Purchase Order")) "Purchase Header"."No." WHERE ("Document Type" = CONST (Order))
            ELSE
            IF ("Source Type" = CONST ("Purchase Receipt")) "Purch. Rcpt. Header"
            ELSE
            IF ("Source Type" = FILTER ("Production Order" | Operation | Component)) "Prod. Order Line"."Prod. Order No." WHERE (Status = FIELD ("Source Status"),
                                                                                                                                               "Prod. Order No." = FIELD ("Source No."))
            ELSE
            IF ("Source Type" = FILTER ("Sales Order")) "Sales Header"."No." WHERE ("Document Type" = CONST (Order))
            ELSE
            IF ("Source Type" = FILTER ("Sales Return Order")) "Sales Header"."No." WHERE ("Document Type" = CONST ("Return Order"))
            ELSE
            IF ("Source Type" = FILTER ("Sales Shipment")) "Sales Shipment Header"
            ELSE
            IF ("Source Type" = FILTER ("Sales Return Receipt")) "Return Receipt Header"
            ELSE
            IF ("Source Type" = FILTER ("Stability Test")) "Stability Test Header";
        }
        field(22; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Editable = false;
            TableRelation = IF ("Source Type" = CONST ("Purchase Receipt")) "Purch. Rcpt. Line"."Line No." WHERE ("Document No." = FIELD ("Source No."))
            ELSE
            IF ("Source Type" = FILTER ("Production Order" | Operation)) "Prod. Order Line"."Line No." WHERE (Status = FIELD ("Source Status"),
                                                                                                                              "Prod. Order No." = FIELD ("Source No."))
            ELSE
            IF ("Source Type" = CONST ("Sales Order")) "Sales Line"."Line No." WHERE ("Document Type" = CONST (Order),
                                                                                                                                                                                                          "Document No." = FIELD ("Source No."))
            ELSE
            IF ("Source Type" = CONST ("Sales Return Order")) "Sales Line"."Line No." WHERE ("Document Type" = CONST ("Return Order"),
                                                                                                                                                                                                                                                                                             "Document No." = FIELD ("Source No."))
            ELSE
            IF ("Source Type" = CONST ("Sales Shipment")) "Sales Shipment Line"."Line No." WHERE ("Document No." = FIELD ("Source No."))
            ELSE
            IF ("Source Type" = CONST ("Sales Return Receipt")) "Return Receipt Line"."Line No." WHERE ("Document No." = FIELD ("Source No."));
        }
        field(23; "Source Status"; Option)
        {
            Caption = 'Source Status';
            Editable = false;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(24; "Source Operation No."; Code[10])
        {
            Caption = 'Source Operation No.';
            Editable = false;
            TableRelation = IF ("Source Type" = FILTER ("Production Order" | Operation)) "Prod. Order Routing Line"."Operation No." WHERE (Status = FIELD ("Source Status"),
                                                                                                                                      "Prod. Order No." = FIELD ("Source No."),
                                                                                                                                      "Routing Reference No." = FIELD ("Source Line No."),
                                                                                                                                      "Routing No." = FIELD ("Source Routing No."));
        }
        field(25; "Source Routing No."; Code[20])
        {
            Caption = 'Source Routing No.';
            Editable = false;
            TableRelation = IF ("Source Type" = FILTER ("Production Order" | Operation)) "Prod. Order Routing Line"."Routing No." WHERE (Status = FIELD ("Source Status"),
                                                                                                                                    "Prod. Order No." = FIELD ("Source No."),
                                                                                                                                    "Routing Reference No." = FIELD ("Source Line No."));
        }
        field(28; "Source Component Line No."; Integer)
        {
            Caption = 'Source Component Line No.';
            Editable = false;
            TableRelation = IF ("Source Type" = FILTER (Component)) "Prod. Order Component"."Line No." WHERE (Status = FIELD ("Source Status"),
                                                                                                           "Prod. Order No." = FIELD ("Source No."),
                                                                                                           "Prod. Order Line No." = FIELD ("Source Line No."));
        }
        field(37; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
        }
        field(38; "Test Destination No."; Code[20])
        {
            Caption = 'Test Destination No.';
            TableRelation = IF ("Test Destination Type" = CONST (Item)) Item
            ELSE
            IF ("Test Destination Type" = CONST ("Test Device")) "Test Device";
        }
        field(39; "Test Destination Type"; Option)
        {
            Caption = 'Test Destination Type';
            OptionCaption = 'Item,Test Device';
            OptionMembers = Item,"Test Device";
        }
        field(50; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Editable = false;
            TableRelation = "Test Plan";
        }
        field(51; "Test Plan Version No."; Code[20])
        {
            Caption = 'Test Plan Version Code';
            Editable = false;
            TableRelation = "Test Plan".Version WHERE ("No." = FIELD ("Test Plan No."));
        }
        field(57; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Created,,,Value Recording,,Testing Finished,,,Finished,,,Cancelled';
            OptionMembers = Created,,,"Value Recording",,"Testing Finished",,,Finished,,,Cancelled;
        }
        field(60; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            Editable = false;
        }
        field(70; "Invalid Determined Value"; Boolean)
        {
            CalcFormula = Exist ("Test Order Property" WHERE ("Test Order No." = FIELD ("No."),
                                                             "Property Tested" = CONST (true),
                                                             "Valid Determined Value" = CONST (false)));
            Caption = 'Invalid Determined Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "Blocked Test Devices"; Boolean)
        {
            CalcFormula = Exist ("Test Order Test Device" WHERE ("Test Order No." = FIELD ("No."),
                                                                Blocked = CONST (true)));
            Caption = 'Blocked Test Devices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Test Date"; Date)
        {
            Caption = 'Test Date';
        }
        field(150; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Description = '#QMW16.00.00.02:T301';
            OptionCaption = 'Integrated Document,External Document';
            OptionMembers = "Integrated Document","External Document";
        }
        field(160; "External Document Path"; Text[250])
        {
            Caption = 'External Document Path';
        }
        field(161; "External Document"; BLOB)
        {
            Caption = 'External Document';
            Description = '#QMW16.00.03.01:T401';
        }
        field(165; "Lot No."; Code[30])
        {
            Caption = 'Lot No.';
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Lot No. Information"."Lot No." WHERE ("Item No." = FIELD ("Test Destination No."),
                                                                                                            "Variant Code" = CONST (''));
        }
        field(170; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Serial No. Information"."Serial No." WHERE ("Item No." = FIELD ("Test Destination No."),
                                                                                                                  "Variant Code" = CONST (''));
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034570),
                                                         "No." = FIELD ("No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034570),
                                                         "No." = FIELD ("No."),
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
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(400; "No. of Units to check"; Integer)
        {
            Caption = 'No. of Units to Test';
            Editable = false;
        }
        field(405; "Random Sample Quantity"; Decimal)
        {
            Caption = 'Random Sample Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(410; "Quantity to Test"; Decimal)
        {
            Caption = 'Quantity to Test';
            DecimalPlaces = 0 : 5;
        }
        field(415; "No. of Units"; Decimal)
        {
            Caption = 'No. of Units';
            DecimalPlaces = 0 : 5;
        }
        field(420; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(425; "Test Type"; Code[20])
        {
            Caption = 'Test Type';
            Editable = false;
            TableRelation = "Test Type";
        }
        field(430; "Test No."; Integer)
        {
            Caption = 'Test No.';
            Editable = false;
        }
        field(435; "Inspection Result"; Option)
        {
            Caption = 'Inspection Result';
            Description = '#QMW18.00.01:T104';
            Editable = false;
            OptionCaption = ' ,Items are OK,Items are not OK,Unspecified';
            OptionMembers = " ","Items are OK","Items are not OK",Unspecified;
        }
        field(440; "Repeat No."; Integer)
        {
            Caption = 'Repeat No.';
            Editable = false;
        }
        field(445; "First Order No."; Code[20])
        {
            Caption = 'First Order No.';
            Editable = false;
            TableRelation = "Test Order";
        }
        field(450; "External Lot No."; Text[30])
        {
            Caption = 'External Lot No.';
            Editable = false;
        }
        field(455; "Test Aborted"; Boolean)
        {
            Caption = 'Test Aborted';
            Editable = false;
        }
        field(500; "Order-specific"; Boolean)
        {
            Caption = 'Order-specific';
            Description = '#QMW16.00.03:R471';
            Editable = false;
        }
        field(550; "Stability Test Status"; Option)
        {
            Caption = 'Stability Test Status';
            Description = '#QMW16.00.03:R462';
            Editable = false;
            OptionCaption = ' ,In Process,On Hold,Cancelled,Finished';
            OptionMembers = " ","In Process","On Hold",Cancelled,Finished;
        }
        field(560; "Stability Test Line No."; Integer)
        {
            Caption = 'Stability Test Line No.';
            Description = '#QMW16.00.03:R462';
            TableRelation = IF ("Source Type" = FILTER ("Stability Test")) "Stability Test Line"."Line No." WHERE ("Stability Test No." = FIELD ("Source No."));
        }
        field(600; "Test Incident No."; Code[20])
        {
            Caption = 'Test Incident No.';
            Description = '#QMW18.00.01:T103';
            Editable = false;
            TableRelation = "Test Incident";
        }
        field(610; "Test Incident Order No."; Integer)
        {
            Caption = 'Test Incident Order No.';
            Description = '#QMW18.00.01:T103';
            Editable = false;
        }
        field(50000; "Tester 1"; Code[20])
        {
            Caption = 'Tester 1';
            DataClassification = ToBeClassified;
            Description = 'dori';
        }
        field(50001; "Tested Date 1"; Date)
        {
            Caption = 'Tested Date 1';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50002; "Tester 2"; Code[20])
        {
            Caption = 'Tester 2';
            DataClassification = ToBeClassified;
            Description = 'dori';
        }
        field(50003; "Tested Date 2"; Date)
        {
            Caption = 'Tested Date 2';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(50004; Testerstatus; Option)
        {
            DataClassification = ToBeClassified;
            Description = 'GIM0009';
            OptionCaption = '  ,Prüfer 1 aktiv,Prüfer 2 aktiv';
            OptionMembers = " ","Tester 1 active","Tester 2 active";
        }
        field(50005; "Tester 1 Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'not started,in edit,finished';
            OptionMembers = "not started","in edit",finished;
        }
        field(50006; "Tester 2 Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'not started,in edit,finished';
            OptionMembers = "not started","in edit",finished;
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW16.00.02:T271';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = '#PMW16.00.02:T271';
        }
        field(5034550; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5034560; "Blocked Location"; Code[10])
        {
            Caption = 'Blocked Location Code';
            TableRelation = Location;
        }
        field(5034561; "Test Destination Variant Code"; Code[10])
        {
            Caption = 'Test Destination Variant Code';
            Description = '#QMW16.00.02:X001';
            TableRelation = IF ("Test Destination Type" = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("Test Destination No."));
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Destination Type", "Test Destination No.")
        {
        }
        key(Key3; "Search Description")
        {
        }
        key(Key4; "Source Type", "Source No.", "Source Line No.")
        {
        }
        key(Key5; "Lot No.")
        {
        }
        key(Key6; "Serial No.")
        {
        }
        key(Key7; "Serial No.", "Lot No.")
        {
        }
        key(Key8; "Source Type", "Source Status", "Source No.", "Source Line No.", "Source Routing No.", "Source Operation No.")
        {
        }
        key(Key9; Status)
        {
        }
        key(Key10; "Test Destination Type", "Test Destination No.", "Test Destination Variant Code", "Lot No.")
        {
        }
        key(Key11; "Test Incident No.", "Test Incident Order No.")
        {
        }
    }

    fieldgroups
    {
    }
}

