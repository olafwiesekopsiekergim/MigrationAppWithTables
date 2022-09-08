table 312 "Purchases & Payables Setup"
{
    // #VRW17.00.00.02:T102 14.05.13 DEMSR.KHS
    //   Correct VR Tag
    // 
    // GIM0008 14.4.22 New Field BaseURLForD3Documents

    Caption = 'Purchases & Payables Setup';

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
        field(6; "Receipt on Invoice"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Receipt on Invoice';
        }
        field(7; "Invoice Rounding"; Boolean)
        {
            Caption = 'Invoice Rounding';
        }
        field(8; "Ext. Doc. No. Mandatory"; Boolean)
        {
            Caption = 'Ext. Doc. No. Mandatory';
            InitValue = true;
        }
        field(9; "Vendor Nos."; Code[10])
        {
            Caption = 'Vendor Nos.';
            TableRelation = "No. Series";
        }
        field(10; "Quote Nos."; Code[10])
        {
            Caption = 'Quote Nos.';
            TableRelation = "No. Series";
        }
        field(11; "Order Nos."; Code[10])
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
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
        field(16; "Posted Receipt Nos."; Code[10])
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Posted Receipt Nos.';
            TableRelation = "No. Series";
        }
        field(19; "Blanket Order Nos."; Code[10])
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Blanket Order Nos.';
            TableRelation = "No. Series";
        }
        field(20; "Calc. Inv. Discount"; Boolean)
        {
            AccessByPermission = TableData "Vendor Invoice Disc." = R;
            Caption = 'Calc. Inv. Discount';
        }
        field(21; "Appln. between Currencies"; Option)
        {
            AccessByPermission = TableData Currency = R;
            Caption = 'Appln. between Currencies';
            OptionCaption = 'None,EMU,All';
            OptionMembers = "None",EMU,All;
        }
        field(22; "Copy Comments Blanket to Order"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Copy Comments Blanket to Order';
            InitValue = true;
        }
        field(23; "Copy Comments Order to Invoice"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Copy Comments Order to Invoice';
            InitValue = true;
        }
        field(24; "Copy Comments Order to Receipt"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Copy Comments Order to Receipt';
            InitValue = true;
        }
        field(25; "Allow VAT Difference"; Boolean)
        {
            Caption = 'Allow VAT Difference';
        }
        field(26; "Calc. Inv. Disc. per VAT ID"; Boolean)
        {
            Caption = 'Calc. Inv. Disc. per VAT ID';
        }
        field(27; "Posted Prepmt. Inv. Nos."; Code[10])
        {
            Caption = 'Posted Prepmt. Inv. Nos.';
            TableRelation = "No. Series";
        }
        field(28; "Posted Prepmt. Cr. Memo Nos."; Code[10])
        {
            Caption = 'Posted Prepmt. Cr. Memo Nos.';
            TableRelation = "No. Series";
        }
        field(29; "Check Prepmt. when Posting"; Boolean)
        {
            Caption = 'Check Prepmt. when Posting';
        }
        field(35; "Default Posting Date"; Option)
        {
            Caption = 'Default Posting Date';
            OptionCaption = 'Work Date,No Date';
            OptionMembers = "Work Date","No Date";
        }
        field(36; "Default Qty. to Receive"; Option)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Default Qty. to Receive';
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
        field(1217; "Debit Acc. for Non-Item Lines"; Code[20])
        {
            Caption = 'Debit Acc. for Non-Item Lines';
            TableRelation = "G/L Account" WHERE ("Direct Posting" = CONST (true),
                                                 "Account Type" = CONST (Posting),
                                                 Blocked = CONST (false));
        }
        field(1218; "Credit Acc. for Non-Item Lines"; Code[20])
        {
            Caption = 'Credit Acc. for Non-Item Lines';
            TableRelation = "G/L Account" WHERE ("Direct Posting" = CONST (true),
                                                 "Account Type" = CONST (Posting),
                                                 Blocked = CONST (false));
        }
        field(5800; "Posted Return Shpt. Nos."; Code[10])
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            Caption = 'Posted Return Shpt. Nos.';
            TableRelation = "No. Series";
        }
        field(5801; "Copy Cmts Ret.Ord. to Ret.Shpt"; Boolean)
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            Caption = 'Copy Cmts Ret.Ord. to Ret.Shpt';
            InitValue = true;
        }
        field(5802; "Copy Cmts Ret.Ord. to Cr. Memo"; Boolean)
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            Caption = 'Copy Cmts Ret.Ord. to Cr. Memo';
            InitValue = true;
        }
        field(6600; "Return Order Nos."; Code[10])
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            Caption = 'Return Order Nos.';
            TableRelation = "No. Series";
        }
        field(6601; "Return Shipment on Credit Memo"; Boolean)
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            Caption = 'Return Shipment on Credit Memo';
        }
        field(6602; "Exact Cost Reversing Mandatory"; Boolean)
        {
            Caption = 'Exact Cost Reversing Mandatory';
        }
        field(50000; BaseURLForD3Documents; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(5005230; "Arch. Orders and Ret. Orders"; Boolean)
        {
            Caption = 'Arch. Orders and Ret. Orders';
        }
        field(5005232; "Archiving Purchase Quote"; Option)
        {
            Caption = 'Archiving Purchase Quote';
            OptionCaption = 'Never,Question,Always';
            OptionMembers = Never,Question,Always;
        }
        field(5005233; "Archiving Blanket Purch. Order"; Boolean)
        {
            Caption = 'Archiving Blanket Purch. Order';
        }
        field(5005270; "Delivery Reminder Nos."; Code[10])
        {
            Caption = 'Delivery Reminder Nos.';
            TableRelation = "No. Series";
        }
        field(5005271; "Issued Delivery Reminder Nos."; Code[10])
        {
            Caption = 'Issued Delivery Reminder Nos.';
            TableRelation = "No. Series";
        }
        field(5005272; "Default Del. Rem. Date Field"; Option)
        {
            Caption = 'Default Del. Rem. Date Field';
            OptionCaption = ' ,Requested Receipt Date,Promised Receipt Date,Expected Receipt Date';
            OptionMembers = " ","Requested Receipt Date","Promised Receipt Date","Expected Receipt Date";
            ValuesAllowed = "Requested Receipt Date", "Promised Receipt Date", "Expected Receipt Date";
        }
        field(5034700; "Vendor Rating Factor Soft"; Decimal)
        {
            Caption = 'Soft Vendor Rating Factors';
            Description = '#VRW17.00.00.02:T102';
        }
        field(5034701; "Vendor Rating Factor Hard"; Decimal)
        {
            Caption = 'Hard Vendor Rating Factors';
            Description = '#VRW17.00.00.02:T102';
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

