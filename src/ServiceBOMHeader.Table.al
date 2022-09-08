table 5013794 "Service BOM Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:16:01 #deleted unused fields: 230 to 280
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #Deleted unused and double Variables, corrected Data Type in field 150
    // :DMW15.02:64:01 #new key: "Checklist No."
    // PRODVIEW:DMW16.00.01:40:01 #completed field to have same functionality as in Construction Order
    // #DMW16.00.03.03:A004 11.07.12 DEMSR.SSZ
    //   #Field "Bin Code" changed to Code 20
    // #DMW17.00:A001 05.06.12 DEMSR.SSZ
    //   #grammar issue
    // #DMW17.10.00.01:T501 26.11.13 DEMSR.SSZ
    //   #Field 600 Description: Text 30 -> 50
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T500 18.05.15 DEMSR.SSZ
    //   #field "Changed by": Code 20 -> 50, inserted table relation, Editable=No, Validate-/TestTableRelation=No, LookUp-trigger

    Caption = 'Service BOM Header';
    DataCaptionFields = "No.";

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(100; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'Service Item';
            OptionMembers = "Service Item";
        }
        field(110; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST("Service Item")) "Service Item";
        }
        field(120; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(140; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(150; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = "Item Unit of Measure".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(155; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(160; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(170; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
        }
        field(180; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Item No."));
        }
        field(200; "Construction Date"; Date)
        {
            Caption = 'Construction Date';
        }
        field(210; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(220; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(290; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(300; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(320; "Assembly Date"; Date)
        {
            Caption = 'Assembly Date';
        }
        field(330; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(340; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(500; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Offen,Freigegeben,Abgeschlossen;
        }
        field(520; "Released of"; Code[20])
        {
            Caption = 'Released of';
            Editable = false;
            TableRelation = User;
        }
        field(530; "Released to"; Date)
        {
            Caption = 'Released to';
            Editable = false;
        }
        field(600; Description; Text[50])
        {
            CalcFormula = Lookup(Item.Description WHERE("No." = FIELD("Item No.")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(630; "Order Tracking Relevance"; Boolean)
        {
            Caption = 'Order Tracking Relevance';
        }
        field(650; Calculation; Code[20])
        {
            Caption = 'Calculation';
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            TableRelation = "Production View Link";
        }
        field(1000; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(5403; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
        }
        field(85020; "Checklist No."; Code[20])
        {
            Caption = 'Checklist No.';
            TableRelation = "Checklist Header"."No.";
        }
        field(85150; "Factor Base Line to Master BOM"; Decimal)
        {
            Caption = 'Factor Base Line to Master BOM';
        }
        field(86000; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(86001; "Changed by"; Code[50])
        {
            Caption = 'Changed by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Source No.", "Source Type", "Line No.")
        {
        }
        key(Key3; "Item No.", "Variant Code", "Location Code", "Bin Code", "Shipment Date", "Order Tracking Relevance")
        {
        }
        key(Key4; "Item No.", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Variant Code", "Shipment Date", "Order Tracking Relevance")
        {
        }
        key(Key5; "Source No.", "Source Type", "Starting Date")
        {
        }
        key(Key6; "Checklist No.")
        {
        }
    }

    fieldgroups
    {
    }
}

