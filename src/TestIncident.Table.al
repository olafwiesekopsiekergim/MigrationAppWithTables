table 5034575 "Test Incident"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T103 30.03.15 DEMSR.KHS
    //   Create Object
    // 
    // #PMW18.00.01:T101 11.05.15 DEMSR.KHS
    //   Add Trading Unit fields

    Caption = 'Test Incident';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(10; "No. of Test Orders"; Integer)
        {
            CalcFormula = Count ("Test Order" WHERE ("Test Incident No." = FIELD ("No.")));
            Caption = 'No. of Test Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(30; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            TableRelation = "Lot No. Information"."Lot No." WHERE ("Item No." = FIELD ("Item No."));
        }
        field(40; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            TableRelation = "Serial No. Information"."Serial No." WHERE ("Item No." = FIELD ("Item No."),
                                                                         "Lot No." = FIELD ("Lot No."));
        }
        field(100; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Editable = false;
            OptionCaption = 'Inventory,Purchase Order,Purchase Receipt,Sales Order,Sales Shipment,Sales Return Order,Sales Return Receipt,Production Order,Operation,Stability Test,,Component';
            OptionMembers = Inventory,"Purchase Order","Purchase Receipt","Sales Order","Sales Shipment","Sales Return Order","Sales Return Receipt","Production Order",Operation,"Stability Test",,Component;
        }
        field(110; "Source No."; Code[20])
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
        field(120; "Source Line No."; Integer)
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
        field(130; "Source Status"; Option)
        {
            Caption = 'Source Status';
            Editable = false;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(140; "Source Operation No."; Code[10])
        {
            Caption = 'Source Operation No.';
            Editable = false;
            TableRelation = IF ("Source Type" = FILTER ("Production Order" | Operation)) "Prod. Order Routing Line"."Operation No." WHERE (Status = FIELD ("Source Status"),
                                                                                                                                      "Prod. Order No." = FIELD ("Source No."),
                                                                                                                                      "Routing Reference No." = FIELD ("Source Line No."),
                                                                                                                                      "Routing No." = FIELD ("Source Routing No."));
        }
        field(150; "Source Routing No."; Code[20])
        {
            Caption = 'Source Routing No.';
            Editable = false;
            TableRelation = IF ("Source Type" = FILTER ("Production Order" | Operation)) "Prod. Order Routing Line"."Routing No." WHERE (Status = FIELD ("Source Status"),
                                                                                                                                    "Prod. Order No." = FIELD ("Source No."),
                                                                                                                                    "Routing Reference No." = FIELD ("Source Line No."));
        }
        field(160; "Source Component Line No."; Integer)
        {
            Caption = 'Source Component Line No.';
            Editable = false;
            TableRelation = IF ("Source Type" = FILTER (Component)) "Prod. Order Component"."Line No." WHERE (Status = FIELD ("Source Status"),
                                                                                                           "Prod. Order No." = FIELD ("Source No."),
                                                                                                           "Prod. Order Line No." = FIELD ("Source Line No."));
        }
        field(170; "External Document"; BLOB)
        {
            Caption = 'External Document';
        }
        field(180; "External Document Path"; Text[250])
        {
            Caption = 'External Document Path';
        }
        field(200; "Sample Taking Instruction"; Text[250])
        {
            Caption = 'Sample Taking Instruction';
        }
        field(210; "Sample Handling Instruction"; Text[250])
        {
            Caption = 'Sample Handling Instruction';
        }
        field(220; "Sample Location"; Text[250])
        {
            Caption = 'Sample Location';
            TableRelation = Location;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(300; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5012400; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW18.00.01:T101';
        }
        field(5012401; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = '#PMW18.00.01:T101';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source No.", "Source Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

