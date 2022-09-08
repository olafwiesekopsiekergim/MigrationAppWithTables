table 5013630 "Construction Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:06:01 #field 600 Description has changed to a normal field (not longer FlowField)
    // :DMW15.01:06:02 #field 85270 "Reserved Qty. (Base)": corrected FlowField CalcFormula
    // PRODVIEW:DMW15.01:14:01 #New field for Production View
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // :DMW15.01:25:01 #New option in field "Document Type": "Document BOM"; new fields: 920, 930
    // :DMW15.01.00.01:6:01 #Corrected unused and double Variable, replaced Confirm Message, corrected Data Type in field 150
    // :DMW15.02:6:01 #Field "Order Tracking Relevance": Editable = No
    // :DMW15.02:64:01 #new key: "Checklist No."
    // :DMW15.02:70:01 #new key: "Deleted Document No.","Deleted Line No.","Deleted Document Type"
    // :DMW16.00:6:01 #Field 930 "Transfered back of" must be Code 20
    // :DMW16.00:6:02 #Don't make tests if it's a Contruction Inquiry
    // :DMW16.00:6:03 #Use the LookUp of Calculation in the same way as in Sales Line
    // :DMW16.00:6:04 #Only copy status from header into line if status gets higher
    // :DMW16.00.01:68:01 #New option in field 100: "Service Line", new Tablerelation in field 110
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.02:T114 10.11.10 DEMSR.SSZ
    //   #Deleted CTO Calculation, because of "new" Calculation Module
    // #DMW16.00.03:T011 14.10.11 DEMSR.SSZ
    //   #Manage Text Module also for Construction Header
    // #DMW16.00.03:02:A023 21.03.12 DEMSR.SSZ
    //   #Correct grammatical issues
    // #DMW16.00.03.03:A004 11.07.12 DEMSR.SSZ
    //   #Field "Bin Code" changed to Code 20
    // #DMW16.00.03.03:A020 11.05.12 DEMSR.SSZ
    //   #Copy Checklist when Variant Code gets inserted
    // #DMW17.00:A001 02.04.12 DEMSR.SSZ
    //   #Changes because of NAV7
    //   #New functions for inventory profile offsetting
    //   #When updateing Shortcut Dimension in the lines, don't use dialog (parameter FALSE)
    //   #Outstanding Quantity should not be negative
    //   #Filled up the empty options in option string of field "Document Type" with placeholder F1,F2,F3 (because error on Home Page could appear)
    // #DMW17.00:A0012 30.11.12 DEMSR.SSZ
    //   #changes because of changed reservation technique
    // #DMW17.00.00.01:A0019 21.08.13 DEMSR.SSZ
    //   #A manually created Construction Order must always be "Order Tracking Relevance" := TRUE, Changed InitValue of field 630
    //   #Analyze CTO Setup if lines for planing exist or not
    // #DMW17.10:T103 29.10.13 DEMSR.SSZ
    //   #Only items with Type=Inventory are allowed. Filter in TableRelation
    // #DMW17.10.00.01:T501 26.11.13 DEMSR.SSZ
    //   #Field 600 Description: Text 30 -> 50
    // #DMW17.10.00.02:T500 13.02.14 DEMSR.SSZ
    //   #Renamed/recaptioned fields 920 and 930: "Transfered ..." to "Transferred"
    //   #Renamed "Enquiry" to "Inquiry"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #Field CTOSetup."Only free Constr.-Lines" no longer exists. Always only released BOM Lines get analysed
    //   #new "Part Type" Purchase
    // #DMW18.00.01:T103 19.05.15 DEMSR.SSZ
    //   #Manage parallel routings
    // #DMW18.00.01:T104 28.05.15 DEMSR.SSZ
    //   #Delete posting function and fields:
    //   #"Posting Quantity (Base)", "Posting Quantity", "Posted Quantity (Base)", "Posted Quantity", "Outstanding Qty. (Base)", "Outstanding Qty."
    // #DMW18.00.01:T111 16.06.15 DEMSR.SSZ
    //   #Direct purchase also for Items
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ
    //   #new field 5060610 and changed code

    Caption = 'Construction Header';
    DataCaptionFields = "No.", "Document Type", "Document No.", "Line No.";

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(100; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,Service Line,Job,Jobline,Document BOM';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",F1,F2,F3,"Service Line",Job,Jobline,"Document BOM";
        }
        field(110; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = IF ("Document Type" = FILTER(.. "Return Order")) "Sales Header"."No." WHERE("Document Type" = FIELD("Document Type"))
            ELSE
            IF ("Document Type" = CONST("Service Line")) "Service Header"."No." WHERE("Document Type" = CONST(Order))
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
            TableRelation = Item WHERE(Type = CONST(Inventory));
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
        field(520; "Released by"; Code[50])
        {
            Caption = 'Released by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(530; "Released on"; Date)
        {
            Caption = 'Released on';
            Editable = false;
        }
        field(600; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(630; "Order Tracking Relevance"; Boolean)
        {
            Caption = 'Order Tracking Relevance';
            Editable = false;
            InitValue = true;
        }
        field(640; "No. of Archived Versions"; Integer)
        {
            CalcFormula = Count("Construction Header Archive" WHERE("No." = FIELD("No.")));
            Caption = 'No. of Archived Versions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(650; Calculation; Code[20])
        {
            Caption = 'Calculation';
            Description = 'DMW13.71.01-01';
            Editable = false;
            TableRelation = "Calculation Header"."No." WHERE("Reference Type" = CONST("Construction Order"),
                                                              "Reference No." = FIELD("No."));
        }
        field(700; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
            Description = 'DMW14.00-02';
        }
        field(710; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            Description = 'DMW14.00-02';
        }
        field(720; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
            Description = 'DMW14.00-02';
        }
        field(730; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            Description = 'DMW14.00-02';
        }
        field(740; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Description = 'DMW14.00-02';
        }
        field(743; "Due Time"; Time)
        {
            Caption = 'Due Time';
            Description = 'DMW14.00-02';
        }
        field(746; "Due Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Due Date-Time';
            Description = 'DMW14.00-02';
        }
        field(750; "Starting Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Starting Date-Time';
            Description = 'DMW14.00-02';
        }
        field(760; "Ending Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Ending Date-Time';
            Description = 'DMW14.00-02';
        }
        field(770; "Deleted Document Type"; Option)
        {
            Caption = 'Deleted Document Type';
            Description = 'DMW14.04-02';
            Editable = false;
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,Job,Jobline';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,Job,Jobline;
        }
        field(780; "Deleted Document No."; Code[20])
        {
            Caption = 'Deleted Document No.';
            Description = 'DMW14.04-02';
            Editable = false;
        }
        field(790; "Deleted Line No."; Integer)
        {
            Caption = 'Deleted Line No.';
            Description = 'DMW14.04-02';
            Editable = false;
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(920; "Transferred back on"; DateTime)
        {
            Caption = 'Transferred back on';
            Description = ':DMW15.01:25:01';
            Editable = false;
        }
        field(930; "Transferred back by"; Code[50])
        {
            Caption = 'Transferred back by';
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
        field(85260; "Reserved Quantity"; Decimal)
        {
            CalcFormula = Sum("Reservation Entry".Quantity WHERE("Source Type" = CONST(5013630),
                                                                  "Source ID" = FIELD("No."),
                                                                  "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(85270; "Reserved Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Source Type" = CONST(5013630),
                                                                           "Source ID" = FIELD("No."),
                                                                           "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(86000; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(86001; "Last User ID Modified"; Code[50])
        {
            Caption = 'Last User ID Modified';
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
        key(Key1; "No.")
        {
            Clustered = true;
        }

        key(Key3; "Item No.", "Variant Code", "Location Code", "Bin Code", "Shipment Date", "Order Tracking Relevance")
        {
        }
        key(Key4; "Item No.", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Variant Code", "Shipment Date", "Order Tracking Relevance")
        {
            SumIndexFields = "Quantity (Base)";
        }
        key(Key5; Calculation)
        {
        }

        key(Key7; "Checklist No.")
        {
        }
        key(Key8; "Deleted Document No.", "Deleted Line No.", "Deleted Document Type")
        {
        }
    }

    fieldgroups
    {
    }
}

