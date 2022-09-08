table 311 "Sales & Receivables Setup"
{
    // P0028 17.03.16 DEBIE.ARE New fild 50100 "Default Credit Limit (LCY)"
    // P0003 29.02.16 DEBIE.ARE New fild 77600 "Einst.Preis prüfen"
    // P0001 15.02.16 DEBIE.ARE New fields 50020 "Artikel Fracht1", 50021 "Artikel Fracht2", 50022 "Artikel Verpackung", 50151 Datenbereitstellungspfad,
    //   50160 "RMD Auftragsgrundkosten", 50161 "RMD Auftragspositionskosten"
    // 
    // #AMPW17.10.01:T102 01.08.14 DEMSR.KHS
    //   New field "Allow Proforma Invoice"

    Caption = 'Sales & Receivables Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Discount Posting"; Option)
        {
            Caption = 'Discount Posting';
            OptionCaption = 'No Discounts,Invoice Discounts,Line Discounts,All Discounts';
            OptionMembers = "No Discounts","Invoice Discounts","Line Discounts","All Discounts";
        }
        field(4; "Credit Warnings"; Option)
        {
            Caption = 'Credit Warnings';
            OptionCaption = 'Both Warnings,Credit Limit,Overdue Balance,No Warning';
            OptionMembers = "Both Warnings","Credit Limit","Overdue Balance","No Warning";
        }
        field(5; "Stockout Warning"; Boolean)
        {
            Caption = 'Stockout Warning';
            InitValue = true;
        }
        field(6; "Shipment on Invoice"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Shipment on Invoice';
        }
        field(7; "Invoice Rounding"; Boolean)
        {
            Caption = 'Invoice Rounding';
        }
        field(8; "Ext. Doc. No. Mandatory"; Boolean)
        {
            Caption = 'Ext. Doc. No. Mandatory';
        }
        field(9; "Customer Nos."; Code[10])
        {
            Caption = 'Customer Nos.';
            TableRelation = "No. Series";
        }
        field(10; "Quote Nos."; Code[10])
        {
            Caption = 'Quote Nos.';
            TableRelation = "No. Series";
        }
        field(11; "Order Nos."; Code[10])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Order Nos.';
            TableRelation = "No. Series";
        }
        field(12; "Invoice Nos."; Code[10])
        {
            Caption = 'Invoice Nos.';
            TableRelation = "No. Series";
        }
        field(13; "Posted Invoice Nos."; Code[10])
        {
            Caption = 'Posted Invoice Nos.';
            TableRelation = "No. Series";
        }
        field(14; "Credit Memo Nos."; Code[10])
        {
            Caption = 'Credit Memo Nos.';
            TableRelation = "No. Series";
        }
        field(15; "Posted Credit Memo Nos."; Code[10])
        {
            Caption = 'Posted Credit Memo Nos.';
            TableRelation = "No. Series";
        }
        field(16; "Posted Shipment Nos."; Code[10])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Posted Shipment Nos.';
            TableRelation = "No. Series";
        }
        field(17; "Reminder Nos."; Code[10])
        {
            Caption = 'Reminder Nos.';
            TableRelation = "No. Series";
        }
        field(18; "Issued Reminder Nos."; Code[10])
        {
            Caption = 'Issued Reminder Nos.';
            TableRelation = "No. Series";
        }
        field(19; "Fin. Chrg. Memo Nos."; Code[10])
        {
            Caption = 'Fin. Chrg. Memo Nos.';
            TableRelation = "No. Series";
        }
        field(20; "Issued Fin. Chrg. M. Nos."; Code[10])
        {
            Caption = 'Issued Fin. Chrg. M. Nos.';
            TableRelation = "No. Series";
        }
        field(21; "Posted Prepmt. Inv. Nos."; Code[10])
        {
            Caption = 'Posted Prepmt. Inv. Nos.';
            TableRelation = "No. Series";
        }
        field(22; "Posted Prepmt. Cr. Memo Nos."; Code[10])
        {
            Caption = 'Posted Prepmt. Cr. Memo Nos.';
            TableRelation = "No. Series";
        }
        field(23; "Blanket Order Nos."; Code[10])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Blanket Order Nos.';
            TableRelation = "No. Series";
        }
        field(24; "Calc. Inv. Discount"; Boolean)
        {
            Caption = 'Calc. Inv. Discount';
        }
        field(25; "Appln. between Currencies"; Option)
        {
            AccessByPermission = TableData Currency = R;
            Caption = 'Appln. between Currencies';
            OptionCaption = 'None,EMU,All';
            OptionMembers = "None",EMU,All;
        }
        field(26; "Copy Comments Blanket to Order"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Copy Comments Blanket to Order';
            InitValue = true;
        }
        field(27; "Copy Comments Order to Invoice"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Copy Comments Order to Invoice';
            InitValue = true;
        }
        field(28; "Copy Comments Order to Shpt."; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Copy Comments Order to Shpt.';
            InitValue = true;
        }
        field(29; "Allow VAT Difference"; Boolean)
        {
            Caption = 'Allow VAT Difference';
        }
        field(30; "Calc. Inv. Disc. per VAT ID"; Boolean)
        {
            Caption = 'Calc. Inv. Disc. per VAT ID';
        }
        field(31; "Logo Position on Documents"; Option)
        {
            Caption = 'Logo Position on Documents';
            OptionCaption = 'No Logo,Left,Center,Right';
            OptionMembers = "No Logo",Left,Center,Right;
        }
        field(32; "Check Prepmt. when Posting"; Boolean)
        {
            Caption = 'Check Prepmt. when Posting';
        }
        field(35; "Default Posting Date"; Option)
        {
            Caption = 'Default Posting Date';
            OptionCaption = 'Work Date,No Date';
            OptionMembers = "Work Date","No Date";
        }
        field(36; "Default Quantity to Ship"; Option)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Default Quantity to Ship';
            OptionCaption = 'Remainder,Blank';
            OptionMembers = Remainder,Blank;
        }
        field(37; "Archive Quotes and Orders"; Boolean)
        {
            Caption = 'Archive Quotes and Orders';
        }
        field(38; "Post with Job Queue"; Boolean)
        {
            Caption = 'Post with Job Queue';
        }
        field(39; "Job Queue Category Code"; Code[10])
        {
            Caption = 'Job Queue Category Code';
            TableRelation = "Job Queue Category";
        }
        field(40; "Job Queue Priority for Post"; Integer)
        {
            Caption = 'Job Queue Priority for Post';
            InitValue = 1000;
            MinValue = 0;
        }
        field(41; "Post & Print with Job Queue"; Boolean)
        {
            Caption = 'Post & Print with Job Queue';
        }
        field(42; "Job Q. Prio. for Post & Print"; Integer)
        {
            Caption = 'Job Q. Prio. for Post & Print';
            InitValue = 1000;
            MinValue = 0;
        }
        field(43; "Notify On Success"; Boolean)
        {
            Caption = 'Notify On Success';
        }
        field(44; "VAT Bus. Posting Gr. (Price)"; Code[10])
        {
            Caption = 'VAT Bus. Posting Gr. (Price)';
            TableRelation = "VAT Business Posting Group";
        }
        field(45; "Direct Debit Mandate Nos."; Code[10])
        {
            Caption = 'Direct Debit Mandate Nos.';
            TableRelation = "No. Series";
        }
        field(5800; "Posted Return Receipt Nos."; Code[10])
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Posted Return Receipt Nos.';
            TableRelation = "No. Series";
        }
        field(5801; "Copy Cmts Ret.Ord. to Ret.Rcpt"; Boolean)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Copy Cmts Ret.Ord. to Ret.Rcpt';
            InitValue = true;
        }
        field(5802; "Copy Cmts Ret.Ord. to Cr. Memo"; Boolean)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Copy Cmts Ret.Ord. to Cr. Memo';
            InitValue = true;
        }
        field(6600; "Return Order Nos."; Code[10])
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Return Order Nos.';
            TableRelation = "No. Series";
        }
        field(6601; "Return Receipt on Credit Memo"; Boolean)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Return Receipt on Credit Memo';
        }
        field(6602; "Exact Cost Reversing Mandatory"; Boolean)
        {
            Caption = 'Exact Cost Reversing Mandatory';
        }
        field(7101; "Customer Group Dimension Code"; Code[20])
        {
            Caption = 'Customer Group Dimension Code';
            TableRelation = Dimension;
        }
        field(7102; "Salesperson Dimension Code"; Code[20])
        {
            Caption = 'Salesperson Dimension Code';
            TableRelation = Dimension;
        }
        field(11500; "Block ship. when neg. invent."; Boolean)
        {
            Caption = 'Block ship. when neg. invent.';
        }
        field(50001; "Service Contract Nos."; Code[10])
        {
            Caption = 'Service Contract Nos.';
            Description = '#AT';
            TableRelation = "No. Series";
        }
        field(50020; "Artikel Fracht1"; Code[20])
        {
            Caption = 'Artikel Fracht1';
            Description = 'P0001';
        }
        field(50021; "Artikel Fracht2"; Code[20])
        {
            Caption = 'Artikel Fracht2';
            Description = 'P0001';
        }
        field(50022; "Artikel Verpackung"; Code[20])
        {
            Caption = 'Artikel Verpackung';
            Description = 'P0001';
        }
        field(50100; "Default Credit Limit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Default Credit Limit (LCY)';
            Description = 'P0028';
        }
        field(50151; Datenbereitstellungspfad; Text[128])
        {
            Caption = 'Datenbereitstellungspfad';
            Description = 'P0001';
        }
        field(50160; "RMD Auftragsgrundkosten"; Decimal)
        {
            Caption = 'RMD Auftragsgrundkosten';
            Description = 'P0001';
        }
        field(50161; "RMD Auftragspositionskosten"; Decimal)
        {
            Caption = 'RMD Auftragspositionskosten';
            Description = 'P0001';
        }
        field(50170; "Checklist Template"; Text[250])
        {
            Caption = 'Checklist Template';
            Description = 'xx';
        }
        field(77600; "Einst.Preis prüfen"; Boolean)
        {
            Description = 'P0003';
        }
        field(5005130; "Arch. Orders and Ret. Orders"; Boolean)
        {
            Caption = 'Arch. Orders and Ret. Orders';
        }
        field(5005132; "Archiving Sales Quote"; Option)
        {
            Caption = 'Archiving Sales Quote';
            OptionCaption = 'Never,Question,Always';
            OptionMembers = Never,Question,Always;
        }
        field(5005133; "Archiving Blanket Sales Order"; Boolean)
        {
            Caption = 'Archiving Blanket Sales Order';
        }
        field(5005134; "Batch Archiving Sales Quote"; Boolean)
        {
            Caption = 'Batch Archiving Sales Quote';
            Editable = false;
            InitValue = false;
        }
        field(5395800; "Allow Proforma Invoice"; Boolean)
        {
            Caption = 'Allow Proforma Invoice';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

