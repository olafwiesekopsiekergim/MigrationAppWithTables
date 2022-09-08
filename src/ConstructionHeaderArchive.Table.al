table 5013633 "Construction Header Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PRODVIEW:DMW15.01:14:01 #New field for Production View
    // :DMW15.01:25:01 #New option in field "Document Type": "Document BOM"; new fields 920, 930
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, corrected Data Type in field 150
    // :DMW15.02:64:01 #new key: "Checklist No."
    // 
    // #DMW16.00.03:A004 22.07.2011 DEMSR:SSZ
    //   #Field "Transfered back of" must be Code 20
    // #DMW16.00.03:T011 14.10.11 DEMSR.SSZ
    //   #Manage Text Module also for Construction Header Archive
    // #DMW16.00.03.03:A004 11.07.12 DEMSR.SSZ
    //   #Field "Bin Code" changed to Code 20
    // #DMW16.00.03.03:A006 02.05.12 DEMSR.SSZ
    //   #Used wrong Parameter to delete the linked text
    // 
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID
    // #DMW17.10.00.01:T501 26.11.13 DEMSR.SSZ
    //   #Field 600 Description: Text 30 -> 50
    // #DMW17.10.00.02:T500 13.02.14 DEMSR.SSZ
    //   #Renamed/recaptioned fields 920 and 930: "Transfered ..." to "Transferred"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T104 28.05.15 DEMSR.SSZ
    //   #Delete posting fields:
    //   #"Posting Quantity (Base)", "Posting Quantity", "Posted Quantity (Base)", "Posted Quantity", "Outstanding Qty. (Base)", "Outstanding Qty."
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ
    //   #new field 5060610 and changed code

    Caption = 'Construction Header Archive';
    DataCaptionFields = "No.", Version, "Document Type", "Document No.", "Line No.";

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(20; Version; Integer)
        {
            Caption = 'Version';
        }
        field(100; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,Job,Jobline,Document BOM';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,Job,Jobline,"Document BOM";
        }
        field(110; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = IF ("Document Type" = FILTER(.. "Return Order")) "Sales Header"."No." WHERE("Document Type" = FIELD("Document Type"))
            ELSE
            IF ("Document Type" = CONST(Job)) Job."No."
            ELSE
            IF ("Document Type" = CONST("Document BOM")) "Document BOM"."Document No.";
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
            Description = 'aus Verkaufskopf';
        }
        field(210; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
            Description = 'aus Verkaufskopf';
        }
        field(220; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Description = 'aus Verkaufszeile';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(230; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
            Description = 'aus Verkaufszeile';
            Editable = false;
        }
        field(240; "Price Group Code"; Code[10])
        {
            Caption = 'Price Group Code';
            Description = 'aus Verkaufszeile';
            Editable = false;
            TableRelation = "Customer Price Group";
        }
        field(250; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'aus Verkaufszeile';
            TableRelation = Job;
        }
        field(260; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            Description = 'aus Verkaufszeile';
            TableRelation = "Work Type";
        }
        field(270; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Description = 'aus Verkaufszeile';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(280; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            Description = 'aus Verkaufszeile';
            TableRelation = "VAT Business Posting Group";
        }
        field(290; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Description = 'aus Verkaufszeile';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(300; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
            Description = 'aus Verkaufszeile';
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
            OptionMembers = Open,Released,Closed;
        }
        field(520; "Released of"; Code[50])
        {
            Caption = 'Released of';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
            Description = 'DMW13.60.01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(630; "Order Tracking Relevance"; Boolean)
        {
            Caption = 'Order Tracking Relevance';
            Description = 'DMW13.70.01-01';
        }
        field(700; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
            Description = 'DMW14.00-01';
        }
        field(710; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            Description = 'DMW14.00-01';
        }
        field(720; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
            Description = 'DMW14.00-01';
        }
        field(730; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            Description = 'DMW14.00-01';
        }
        field(740; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Description = 'DMW14.00-01';
        }
        field(743; "Due Time"; Time)
        {
            Caption = 'Due Time';
            Description = 'DMW14.00-01';
        }
        field(746; "Due Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Due Date-Time';
            Description = 'DMW14.00-01';
        }
        field(750; "Starting Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Starting Date-Time';
            Description = 'DMW14.00-01';
        }
        field(760; "Ending Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Ending Date-Time';
            Description = 'DMW14.00-01';
        }
        field(770; "Deleted Document Type"; Option)
        {
            Caption = 'Deleted Document Type';
            Description = 'DMW14.04-02';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,Job,Jobline';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,Job,Jobline;
        }
        field(780; "Deleted Document No."; Code[20])
        {
            Caption = 'Deleted Document No.';
            Description = 'DMW14.04-02';
        }
        field(790; "Deleted Line No."; Integer)
        {
            Caption = 'Deleted Line No.';
            Description = 'DMW14.04-02';
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(920; "Transferred back to"; DateTime)
        {
            Caption = 'Transferred back to';
            Description = ':DMW15.01:25:01';
            Editable = false;
        }
        field(930; "Transferred back of"; Code[50])
        {
            Caption = 'Transferred back of';
            Description = ':DMW15.01:25:01';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
        field(86000; "Last date modified"; Date)
        {
            Caption = 'Last date modified';
        }
        field(86001; "Changed by"; Code[50])
        {
            Caption = 'Changed by';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(90000; "Time Archived"; Time)
        {
            Caption = 'Time Archived';
            Description = 'DMW13.71-01';
        }
        field(90001; "Date Archived"; Date)
        {
            Caption = 'Date Archived';
            Description = 'DMW13.71-01';
        }
        field(90002; "Archived By"; Code[50])
        {
            Caption = 'Archived By';
            Description = 'DMW13.71-01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "No.", Version)
        {
            Clustered = true;
        }

        key(Key4; "Checklist No.")
        {
        }
    }

    fieldgroups
    {
    }
}

