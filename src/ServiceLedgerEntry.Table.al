table 5907 "Service Ledger Entry"
{
    // #RENW16.00:10-001  03.04.2009  DEMSR.KHS
    //   New Fields: "Type (Serviced)","Invoice Start Date","Invoice End Date" / New Key
    // 
    // #RENW16.00.00.01      01.07.09 DEMSR.KHS
    //   Table Relation on Service Contract No. changed
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // #RENW16.00.01:R119    12.10.09 DEMSR.KHS
    //   Sales out of Rental
    //   Key extended Rent Order No.,Attached to Rent Order Line No,
    //   Rental Position,Charge to Sales Price
    // 
    // 21.08.12 DEMSR.KHS
    //   Filter on Rent Order No. = '' corrected
    // 
    // #RENW17.00.00.02:T500 28.05.13 DEMSR.KHS
    //   New Field: "Pct. of Invoice Line Amt."
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Service Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Service Contract No."; Code[20])
        {
            Caption = 'Service Contract No.';
            TableRelation = IF ("Rent Order No." = CONST ('')) "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract))
            ELSE
            IF ("Rent Order No." = FILTER (<> '')) "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST ("Rental Contract"));
        }
        field(3; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund,Shipment';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund,Shipment;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5; "Serv. Contract Acc. Gr. Code"; Code[10])
        {
            Caption = 'Serv. Contract Acc. Gr. Code';
            TableRelation = "Service Contract Account Group".Code;
        }
        field(6; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(8; "Moved from Prepaid Acc."; Boolean)
        {
            Caption = 'Moved from Prepaid Acc.';
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(11; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
        }
        field(12; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(13; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(14; "Item No. (Serviced)"; Code[20])
        {
            Caption = 'Item No. (Serviced)';
            TableRelation = Item;
        }
        field(15; "Serial No. (Serviced)"; Code[20])
        {
            Caption = 'Serial No. (Serviced)';
        }
        field(16; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(17; "Contract Invoice Period"; Text[30])
        {
            Caption = 'Contract Invoice Period';
        }
        field(18; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(19; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(20; "Service Item No. (Serviced)"; Code[20])
        {
            Caption = 'Service Item No. (Serviced)';
            TableRelation = "Service Item";
        }
        field(21; "Variant Code (Serviced)"; Code[10])
        {
            Caption = 'Variant Code (Serviced)';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No. (Serviced)"));
        }
        field(22; "Contract Group Code"; Code[10])
        {
            Caption = 'Contract Group Code';
            TableRelation = "Contract Group".Code;
        }
        field(23; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Resource,Item,Service Cost,Service Contract,G/L Account';
            OptionMembers = " ",Resource,Item,"Service Cost","Service Contract","G/L Account";
        }
        field(24; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Service Contract")) "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract))
            ELSE
            IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST ("Service Cost")) "Service Cost"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
        }
        field(25; "Cost Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost Amount';
        }
        field(26; "Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Discount Amount';
        }
        field(27; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(28; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(29; "Charged Qty."; Decimal)
        {
            Caption = 'Charged Qty.';
            DecimalPlaces = 0 : 5;
        }
        field(30; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(31; "Discount %"; Decimal)
        {
            Caption = 'Discount %';
            DecimalPlaces = 0 : 5;
        }
        field(32; "Contract Disc. Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Contract Disc. Amount';
        }
        field(33; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;
        }
        field(34; "Fault Reason Code"; Code[10])
        {
            Caption = 'Fault Reason Code';
            TableRelation = "Fault Reason Code";
        }
        field(35; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(37; "Service Order Type"; Code[10])
        {
            Caption = 'Service Order Type';
            TableRelation = "Service Order Type";
        }
        field(39; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(40; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job."No." WHERE ("Bill-to Customer No." = FIELD ("Bill-to Customer No."));
        }
        field(41; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(42; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(43; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(44; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(45; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(46; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(47; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(48; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(50; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Usage,Sale,Consume,Contract';
            OptionMembers = Usage,Sale,Consume,Contract;
        }
        field(51; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(52; "Serv. Price Adjmt. Gr. Code"; Code[10])
        {
            Caption = 'Serv. Price Adjmt. Gr. Code';
            TableRelation = "Service Price Adjustment Group";
        }
        field(53; "Service Price Group Code"; Code[10])
        {
            Caption = 'Service Price Group Code';
            TableRelation = "Service Price Group";
        }
        field(54; Prepaid; Boolean)
        {
            Caption = 'Prepaid';
        }
        field(55; "Apply Until Entry No."; Integer)
        {
            Caption = 'Apply Until Entry No.';
        }
        field(56; "Applies-to Entry No."; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Applies-to Entry No.';
        }
        field(57; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(58; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(59; "Job Line Type"; Option)
        {
            Caption = 'Job Line Type';
            InitValue = Schedule;
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(60; "Job Posted"; Boolean)
        {
            Caption = 'Job Posted';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5072650; "Type (Serviced)"; Option)
        {
            Caption = 'Type (Serviced)';
            Description = '#RENW16.00:10-001';
            OptionCaption = ' ,G/L Account,Item,Resource';
            OptionMembers = " ","G/L Account",Item,Resource;
        }
        field(5072651; "Invoice Start Date"; Date)
        {
            Caption = 'Invoice Start Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072652; "Invoice End Date"; Date)
        {
            Caption = 'Invoice End Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072653; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            Description = '#RENW16.00:10-001';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST (Order),
                                                        "Rental Contract" = CONST (true));
        }
        field(5072654; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
            Description = '#RENW16.00:10-001';
        }
        field(5072655; "Attached to Rent Order Line No"; Integer)
        {
            Caption = 'Attached to Rent Order Line No';
            Description = '#RENW16.00.01:R119';
        }
        field(5072656; "Rental Position"; Option)
        {
            Caption = 'Rental Position';
            Description = '#RENW16.00.01:R119';
            OptionCaption = 'Sales,Rental,Rate Part,One-Time Invoicing';
            OptionMembers = Sales,Rental,"Rate Part","One-Time Invoicing";
        }
        field(5072657; "Charge to Sales Price"; Boolean)
        {
            Caption = 'Charge to Sales Price';
            Description = '#RENW16.00.01:R119';
        }
        field(5072658; "Pct. of Invoice Line Amt."; Decimal)
        {
            Caption = 'Pct. of Invoice Line Amt.';
            Description = '#RENW17.00.00.02:T500';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Posting Date")
        {
        }
        key(Key3; "Entry Type", "Document Type", "Document No.", "Document Line No.")
        {
        }
        key(Key4; "Service Contract No.", "Entry No.", "Entry Type", Type, "Moved from Prepaid Acc.", "Posting Date", Open, Prepaid, "Service Item No. (Serviced)", "Customer No.", "Contract Group Code", "Responsibility Center", "Rent Order No.")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.", "Contract Disc. Amount";
        }
        key(Key5; "Service Order No.", "Service Item No. (Serviced)", "Entry Type", "Moved from Prepaid Acc.", "Posting Date", Open, Type, "Service Contract No.")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.", Amount;
        }
        key(Key6; Type, "No.", "Entry Type", "Moved from Prepaid Acc.", "Posting Date", Open, Prepaid)
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.";
        }
        key(Key7; "Service Item No. (Serviced)", "Entry Type", "Moved from Prepaid Acc.", Type, "Posting Date", Open, "Service Contract No.", Prepaid, "Customer No.", "Contract Group Code", "Responsibility Center")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount";
        }
        key(Key8; "Service Item No. (Serviced)", "Entry Type", Type, "Service Contract No.", "Posting Date", "Service Order No.")
        {
            SumIndexFields = "Amount (LCY)", "Cost Amount", Quantity, "Charged Qty.";
        }
        key(Key9; "Item No. (Serviced)", "Serial No. (Serviced)", "Type (Serviced)", "Rent Order No.", "Posting Date")
        {
        }
        key(Key10; "Type (Serviced)", "Rent Order No.", "Rent Order Line No.", "Charge to Sales Price")
        {
            SumIndexFields = "Amount (LCY)";
        }
        key(Key11; "Rent Order No.", "Attached to Rent Order Line No", "Rental Position", "Charge to Sales Price")
        {
            SumIndexFields = "Amount (LCY)";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", "Entry Type", "Service Contract No.", "Posting Date")
        {
        }
    }
}

