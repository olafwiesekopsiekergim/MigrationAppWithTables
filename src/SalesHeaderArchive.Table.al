table 5107 "Sales Header Archive"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.05.12   OPplus Granules
    //                 - New Fields added
    // -----------------------------------------------------
    // P0008 22.02.16 CCBIE.ARE New fields 77960"Check List created", 77961"Check List created on",
    //   77962"Check List receive", 77963"Check List receive on"
    // P0005 16.02.16 CCBIE.ARE New fields 50004 "Internal Job No.", 50005 Win/Loss, 50006 "Win/Loss Reason". New key "Internal Job No."
    // P0046 14.11.16 CCBIE.ARE New fields 50400 "Creation Date"
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // :DMW13.60.02:1:01 #Deletetrigger um die neuen Tabellen erweitert
    // :DMW14.03:1:01 #  neues Feld 5013610 Angebotsbindefrist
    // :DMW16.00.02:6:01 #New fields from Sales Header were missed
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW17.00:A001 02.04.12 DEMSR.SSZ
    //   #Changes because of NAV7
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebrand
    // #TMW17.10.01:T100 30.06.14 DEMSR.SSZ
    //   #New Text Set ID fields and functions
    // 
    // #RENW16.00:10-001  05.05.2009  DEMSR.KHS
    //   Rental Fields added
    // 
    // #RENW16.00.01.02:T504 06.04.10 DEMSR.KHS
    //   Rent Archive did not show correctly
    // 
    // #RENW17.00.00.03:T503 31.07.13 DEMSR.KHS
    //   Change/Correct Captions
    //     Field Name + Caption changed: "Month based" -> "Month Based"

    Caption = 'Sales Header Archive';
    DataCaptionFields = "No.", "Sell-to Customer Name", "Version No.";

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(2; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(4; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            NotBlank = true;
            TableRelation = Customer;
        }
        field(5; "Bill-to Name"; Text[50])
        {
            Caption = 'Bill-to Name';
        }
        field(6; "Bill-to Name 2"; Text[50])
        {
            Caption = 'Bill-to Name 2';
        }
        field(7; "Bill-to Address"; Text[50])
        {
            Caption = 'Bill-to Address';
        }
        field(8; "Bill-to Address 2"; Text[50])
        {
            Caption = 'Bill-to Address 2';
        }
        field(9; "Bill-to City"; Text[30])
        {
            Caption = 'Bill-to City';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Bill-to Contact"; Text[50])
        {
            Caption = 'Bill-to Contact';
        }
        field(11; "Your Reference"; Text[35])
        {
            Caption = 'Your Reference';
        }
        field(12; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Sell-to Customer No."));
        }
        field(13; "Ship-to Name"; Text[50])
        {
            Caption = 'Ship-to Name';
        }
        field(14; "Ship-to Name 2"; Text[50])
        {
            Caption = 'Ship-to Name 2';
        }
        field(15; "Ship-to Address"; Text[50])
        {
            Caption = 'Ship-to Address';
        }
        field(16; "Ship-to Address 2"; Text[50])
        {
            Caption = 'Ship-to Address 2';
        }
        field(17; "Ship-to City"; Text[30])
        {
            Caption = 'Ship-to City';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(18; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
        }
        field(19; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(21; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(22; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
        }
        field(23; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(24; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(25; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(26; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
        }
        field(27; "Shipment Method Code"; Code[10])
        {
            Caption = 'Shipment Method Code';
            TableRelation = "Shipment Method";
        }
        field(28; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(29; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(30; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(31; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            TableRelation = "Customer Posting Group";
        }
        field(32; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(33; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(34; "Price Group Code"; Code[10])
        {
            Caption = 'Price Group Code';
            TableRelation = "Customer Price Group";
        }
        field(35; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(37; "Invoice Disc. Code"; Code[20])
        {
            Caption = 'Invoice Disc. Code';
        }
        field(40; "Cust./Item Disc. Gr."; Code[20])
        {
            Caption = 'Cust./Item Disc. Gr.';
            TableRelation = "Customer Discount Group";
        }
        field(41; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(43; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(45; "Order Class"; Code[10])
        {
            Caption = 'Order Class';
        }
        field(46; Comment; Boolean)
        {
            CalcFormula = Exist ("Sales Comment Line Archive" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                    "No." = FIELD ("No."),
                                                                    "Document Line No." = CONST (0),
                                                                    "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence"),
                                                                    "Version No." = FIELD ("Version No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
        }
        field(51; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(52; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(53; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(55; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(57; Ship; Boolean)
        {
            Caption = 'Ship';
        }
        field(58; Invoice; Boolean)
        {
            Caption = 'Invoice';
        }
        field(60; Amount; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Sales Line Archive".Amount WHERE ("Document Type" = FIELD ("Document Type"),
                                                                 "Document No." = FIELD ("No."),
                                                                 "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence"),
                                                                 "Version No." = FIELD ("Version No.")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Sales Line Archive"."Amount Including VAT" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                                 "Document No." = FIELD ("No."),
                                                                                 "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence"),
                                                                                 "Version No." = FIELD ("Version No.")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Shipping No."; Code[20])
        {
            Caption = 'Shipping No.';
        }
        field(63; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
        }
        field(64; "Last Shipping No."; Code[20])
        {
            Caption = 'Last Shipping No.';
            TableRelation = "Sales Shipment Header";
        }
        field(65; "Last Posting No."; Code[20])
        {
            Caption = 'Last Posting No.';
            TableRelation = "Sales Invoice Header";
        }
        field(66; "Prepayment No."; Code[20])
        {
            Caption = 'Prepayment No.';
        }
        field(67; "Last Prepayment No."; Code[20])
        {
            Caption = 'Last Prepayment No.';
            TableRelation = "Sales Invoice Header";
        }
        field(68; "Prepmt. Cr. Memo No."; Code[20])
        {
            Caption = 'Prepmt. Cr. Memo No.';
        }
        field(69; "Last Prepmt. Cr. Memo No."; Code[20])
        {
            Caption = 'Last Prepmt. Cr. Memo No.';
            TableRelation = "Sales Invoice Header";
        }
        field(70; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(71; "Combine Shipments"; Boolean)
        {
            Caption = 'Combine Shipments';
        }
        field(73; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(74; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75; "EU 3-Party Trade"; Boolean)
        {
            Caption = 'EU 3-Party Trade';
        }
        field(76; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(77; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(78; "VAT Country/Region Code"; Code[10])
        {
            Caption = 'VAT Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(79; "Sell-to Customer Name"; Text[50])
        {
            Caption = 'Sell-to Customer Name';
        }
        field(80; "Sell-to Customer Name 2"; Text[50])
        {
            Caption = 'Sell-to Customer Name 2';
        }
        field(81; "Sell-to Address"; Text[50])
        {
            Caption = 'Sell-to Address';
        }
        field(82; "Sell-to Address 2"; Text[50])
        {
            Caption = 'Sell-to Address 2';
        }
        field(83; "Sell-to City"; Text[30])
        {
            Caption = 'Sell-to City';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(84; "Sell-to Contact"; Text[50])
        {
            Caption = 'Sell-to Contact';
        }
        field(85; "Bill-to Post Code"; Code[20])
        {
            Caption = 'Bill-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(86; "Bill-to County"; Text[30])
        {
            Caption = 'Bill-to County';
        }
        field(87; "Bill-to Country/Region Code"; Code[10])
        {
            Caption = 'Bill-to Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(88; "Sell-to Post Code"; Code[20])
        {
            Caption = 'Sell-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(89; "Sell-to County"; Text[30])
        {
            Caption = 'Sell-to County';
        }
        field(90; "Sell-to Country/Region Code"; Code[10])
        {
            Caption = 'Sell-to Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(91; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(92; "Ship-to County"; Text[30])
        {
            Caption = 'Ship-to County';
        }
        field(93; "Ship-to Country/Region Code"; Code[10])
        {
            Caption = 'Ship-to Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(94; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Bank Account';
            OptionMembers = "G/L Account","Bank Account";
        }
        field(97; "Exit Point"; Code[10])
        {
            Caption = 'Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(98; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(99; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(100; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(101; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(102; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(104; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(105; "Shipping Agent Code"; Code[10])
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(106; "Package Tracking No."; Text[30])
        {
            Caption = 'Package Tracking No.';
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(108; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(109; "Shipping No. Series"; Code[10])
        {
            Caption = 'Shipping No. Series';
            TableRelation = "No. Series";
        }
        field(114; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(115; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(116; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(117; Reserve; Option)
        {
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(118; "Applies-to ID"; Code[50])
        {
            Caption = 'Applies-to ID';
        }
        field(119; "VAT Base Discount %"; Decimal)
        {
            Caption = 'VAT Base Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(120; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,Released';
            OptionMembers = Open,Released;
        }
        field(121; "Invoice Discount Calculation"; Option)
        {
            Caption = 'Invoice Discount Calculation';
            OptionCaption = 'None,%,Amount';
            OptionMembers = "None","%",Amount;
        }
        field(122; "Invoice Discount Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Invoice Discount Value';
        }
        field(123; "Send IC Document"; Boolean)
        {
            Caption = 'Send IC Document';
        }
        field(124; "IC Status"; Option)
        {
            Caption = 'IC Status';
            OptionCaption = 'New,Pending,Sent';
            OptionMembers = New,Pending,Sent;
        }
        field(125; "Sell-to IC Partner Code"; Code[20])
        {
            Caption = 'Sell-to IC Partner Code';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(126; "Bill-to IC Partner Code"; Code[20])
        {
            Caption = 'Bill-to IC Partner Code';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(129; "IC Direction"; Option)
        {
            Caption = 'IC Direction';
            OptionCaption = 'Outgoing,Incoming';
            OptionMembers = Outgoing,Incoming;
        }
        field(130; "Prepayment %"; Decimal)
        {
            Caption = 'Prepayment %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(131; "Prepayment No. Series"; Code[10])
        {
            Caption = 'Prepayment No. Series';
            TableRelation = "No. Series";
        }
        field(132; "Compress Prepayment"; Boolean)
        {
            Caption = 'Compress Prepayment';
            InitValue = true;
        }
        field(133; "Prepayment Due Date"; Date)
        {
            Caption = 'Prepayment Due Date';
        }
        field(134; "Prepmt. Cr. Memo No. Series"; Code[10])
        {
            Caption = 'Prepmt. Cr. Memo No. Series';
            TableRelation = "No. Series";
        }
        field(135; "Prepmt. Posting Description"; Text[50])
        {
            Caption = 'Prepmt. Posting Description';
        }
        field(138; "Prepmt. Pmt. Discount Date"; Date)
        {
            Caption = 'Prepmt. Pmt. Discount Date';
        }
        field(139; "Prepmt. Payment Terms Code"; Code[10])
        {
            Caption = 'Prepmt. Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(140; "Prepmt. Payment Discount %"; Decimal)
        {
            Caption = 'Prepmt. Payment Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(145; "No. of Archived Versions"; Integer)
        {
            CalcFormula = Max ("Sales Header Archive"."Version No." WHERE ("Document Type" = FIELD ("Document Type"),
                                                                          "No." = FIELD ("No."),
                                                                          "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence")));
            Caption = 'No. of Archived Versions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(151; "Sales Quote No."; Code[20])
        {
            Caption = 'Sales Quote No.';
            Editable = false;
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST (Quote),
                                                        "No." = FIELD ("Sales Quote No."));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(827; "Credit Card No."; Code[20])
        {
            Caption = 'Credit Card No.';
            TableRelation = "DO Payment Credit Card" WHERE ("Customer No." = FIELD ("Bill-to Customer No."));
        }
        field(5043; "Interaction Exist"; Boolean)
        {
            Caption = 'Interaction Exist';
        }
        field(5044; "Time Archived"; Time)
        {
            Caption = 'Time Archived';
        }
        field(5045; "Date Archived"; Date)
        {
            Caption = 'Date Archived';
        }
        field(5046; "Archived By"; Code[50])
        {
            Caption = 'Archived By';
        }
        field(5047; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(5048; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
        }
        field(5050; "Campaign No."; Code[20])
        {
            Caption = 'Campaign No.';
            TableRelation = Campaign;
        }
        field(5051; "Sell-to Customer Template Code"; Code[10])
        {
            Caption = 'Sell-to Customer Template Code';
            TableRelation = "Customer Template";
        }
        field(5052; "Sell-to Contact No."; Code[20])
        {
            Caption = 'Sell-to Contact No.';
            TableRelation = Contact;
        }
        field(5053; "Bill-to Contact No."; Code[20])
        {
            Caption = 'Bill-to Contact No.';
            TableRelation = Contact;
        }
        field(5054; "Bill-to Customer Template Code"; Code[10])
        {
            Caption = 'Bill-to Customer Template Code';
        }
        field(5055; "Opportunity No."; Code[20])
        {
            Caption = 'Opportunity No.';
            TableRelation = Opportunity."No." WHERE ("Contact No." = FIELD ("Sell-to Contact No."),
                                                     Closed = CONST (false));
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5750; "Shipping Advice"; Option)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Shipping Advice';
            OptionCaption = 'Partial,Complete';
            OptionMembers = Partial,Complete;
        }
        field(5752; "Completely Shipped"; Boolean)
        {
            CalcFormula = Min ("Sales Line Archive"."Completely Shipped" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                               "Document No." = FIELD ("No."),
                                                                               "Version No." = FIELD ("Version No."),
                                                                               "Shipment Date" = FIELD ("Date Filter"),
                                                                               "Location Code" = FIELD ("Location Filter")));
            Caption = 'Completely Shipped';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5753; "Posting from Whse. Ref."; Integer)
        {
            Caption = 'Posting from Whse. Ref.';
        }
        field(5754; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(5790; "Requested Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Requested Delivery Date';
        }
        field(5791; "Promised Delivery Date"; Date)
        {
            Caption = 'Promised Delivery Date';
        }
        field(5792; "Shipping Time"; DateFormula)
        {
            Caption = 'Shipping Time';
        }
        field(5793; "Outbound Whse. Handling Time"; DateFormula)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'Outbound Whse. Handling Time';
        }
        field(5794; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE ("Shipping Agent Code" = FIELD ("Shipping Agent Code"));
        }
        field(5795; "Late Order Shipping"; Boolean)
        {
            CalcFormula = Exist ("Sales Line Archive" WHERE ("Document Type" = FIELD ("Document Type"),
                                                            "Sell-to Customer No." = FIELD ("Sell-to Customer No."),
                                                            "Document No." = FIELD ("No."),
                                                            "Doc. No. Occurrence" = FIELD ("Doc. No. Occurrence"),
                                                            "Version No." = FIELD ("Version No."),
                                                            "Shipment Date" = FIELD ("Date Filter")));
            Caption = 'Late Order Shipping';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5796; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5800; Receive; Boolean)
        {
            Caption = 'Receive';
        }
        field(5801; "Return Receipt No."; Code[20])
        {
            Caption = 'Return Receipt No.';
        }
        field(5802; "Return Receipt No. Series"; Code[10])
        {
            Caption = 'Return Receipt No. Series';
            TableRelation = "No. Series";
        }
        field(5803; "Last Return Receipt No."; Code[20])
        {
            Caption = 'Last Return Receipt No.';
            TableRelation = "Return Receipt Header";
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
        }
        field(7200; "Get Shipment Used"; Boolean)
        {
            Caption = 'Get Shipment Used';
            Editable = false;
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            TableRelation = "User Setup";
        }
        field(50003; Webrequest; Boolean)
        {
            Caption = 'Internetanfrage';
            Description = '#AT';
        }
        field(50004; "Internal Job No."; Code[20])
        {
            Caption = 'Internal Job No.';
            Description = 'P0005';
            TableRelation = "Internal Job"."No." WHERE ("Win/Loss" = CONST (" "));
        }
        field(50005; "Win/Loss"; Option)
        {
            Description = 'P0005';
            OptionCaption = ' ,Win,Loss';
            OptionMembers = " ",Win,Loss;
        }
        field(50006; "Win/Loss Reason"; Code[10])
        {
            Description = 'P0005';
            TableRelation = Reason;
        }
        field(50011; "Servicecontractno."; Code[10])
        {
            Caption = 'Servicevertragsnr.';
            Description = '#AT';
        }
        field(50047; "RMD Sammelsendung"; Boolean)
        {
            Description = 'P0001';
        }
        field(50100; Kundenliefertermin; Text[30])
        {
            Caption = 'Kundenliefertermin';
            Description = 'P0028';
        }
        field(50160; "Pos.-Zus.-Zähl-Summen drucken"; Boolean)
        {
            Caption = 'Pos.-Zus.-Zähl-Summen drucken';
            Description = 'P0008';
        }
        field(50400; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Description = 'P0046';
            Editable = false;
        }
        field(70170; Zusatzstatus; Option)
        {
            Caption = 'Zusatzstatus';
            Description = 'P0023';
            OptionMembers = " ","Abruf gesperrt",,,,,"in Zustellung",,,,Einlagerung,Feinabstimmung;
        }
        field(77000; Sachbearbeiter; Code[50])
        {
            Description = 'P0001';
            TableRelation = User;
        }
        field(77947; "fix-Termin Lieferung"; Text[20])
        {
            Caption = 'fix-Termin Lieferung';
            Description = 'P0021';
        }
        field(77949; "Gen. Prod. Posting Grp. Filter"; Code[10])
        {
            Caption = 'Produktbuchungsgruppenfilter';
            FieldClass = FlowFilter;
            TableRelation = "Gen. Product Posting Group";
        }
        field(77960; "Check List created"; Boolean)
        {
            Caption = 'Checkliste erstellt';
            Description = 'P0008';
        }
        field(77961; "Check List created on"; Date)
        {
            Caption = 'Checkliste erstellt am';
            Description = 'P0008';
        }
        field(77962; "Check List receive"; Boolean)
        {
            Caption = 'Checkliste erhalten';
            Description = 'P0008';
        }
        field(77963; "Check List receive on"; Date)
        {
            Caption = 'Checkliste erhalten am';
            Description = 'P0008';
        }
        field(77964; "No. Printed Work Order"; Integer)
        {
            Caption = 'No. Printed Work Order';
            Description = 'P0029';
            Editable = false;
        }
        field(5013400; "Building Site-to Code"; Code[10])
        {
            Caption = 'Building Site-to Code';
            Description = ':DMW16.00.02:6:01';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Sell-to Customer No."));
        }
        field(5013401; "Building Site-to Name"; Text[50])
        {
            Caption = 'Building Site-to Name';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013402; "Building Site-to Name 2"; Text[50])
        {
            Caption = 'Building Site-to Name 2';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013403; "Building Site-to Address"; Text[50])
        {
            Caption = 'Building Site-to Address';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013404; "Building Site-to Address 2"; Text[50])
        {
            Caption = 'Building Site-to Address 2';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013405; "Building Site-to City"; Text[30])
        {
            Caption = 'Building Site-to City';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013406; "Building Site-to Contact"; Text[50])
        {
            Caption = 'Building Site-to Contact';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013407; "Building Site-to Post Code"; Code[20])
        {
            Caption = 'Building Site-to Post Code';
            Description = ':DMW16.00.02:6:01';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013408; "Building Site-to County"; Text[30])
        {
            Caption = 'Building Site-to County';
            Description = ':DMW16.00.02:6:01';
        }
        field(5013409; "Building Site-to C/R Code"; Code[10])
        {
            Caption = 'Building Site-to Country/Region Code';
            Description = ':DMW16.00.02:6:01';
            TableRelation = "Country/Region";
        }
        field(5013410; "Salesperson Code 2"; Code[10])
        {
            Caption = 'Salesperson Code 2';
            Description = ':DMW16.00.02:6:01';
            TableRelation = "Salesperson/Purchaser";
        }
        field(5013610; "Quote Expiration Date"; Date)
        {
            Caption = 'Quote Expiration Date';
        }
        field(5060600; "Text Set ID Header"; Integer)
        {
            Caption = 'Text Set ID Header';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5060601; "Text Set ID Footer"; Integer)
        {
            Caption = 'Text Set ID Footer';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5072650; "Rental Contract"; Boolean)
        {
            Caption = 'Rental Contract';
            Description = '#RENW16.00:10-001';
        }
        field(5072651; "Customer Location Code"; Code[10])
        {
            Caption = 'Customer Location Code';
            Description = '#RENW16.00:10-001';
            TableRelation = Location WHERE ("Use As - Rented" = CONST (true));
        }
        field(5072652; "Rental Rate Code"; Code[10])
        {
            Caption = 'Rental Rate Code';
            Description = '#RENW16.00:10-001';
            TableRelation = "Capacity Unit of Measure".Code WHERE ("Rental Rate Code" = CONST (true));
        }
        field(5072653; "Rental Rate"; Text[30])
        {
            Caption = 'Rental Rate';
            Description = '#RENW16.00:10-001';
            Editable = false;
        }
        field(5072654; "Rental Start Date"; Date)
        {
            Caption = 'Rental Start Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072655; "Rental End Date"; Date)
        {
            Caption = 'Rental End Date';
            Description = '#RENW16.00:10-001';
        }
        field(5072666; "Invoice Period"; Option)
        {
            Caption = 'Invoice Period';
            Description = '#RENW16.00:10-001';
            OptionCaption = 'Month,Two Months,Quarter,Half Year,Year,None';
            OptionMembers = Month,"Two Months",Quarter,"Half Year",Year,"None";
        }
        field(5072667; "Month Based"; Boolean)
        {
            Caption = 'Month Based';
            Description = '#RENW16.00:10-001,#RENW17.00.00.03:T503';
        }
        field(5072668; Prepaid; Boolean)
        {
            Caption = 'Prepaid';
            Description = '#RENW16.00:10-001';
        }
        field(5072669; Closed; Boolean)
        {
            Caption = 'Closed';
            Description = '#RENW16.00.00.02:T306';
        }
        field(5072670; "Rental Document No."; Code[10])
        {
            Caption = 'Rental Document No.';
            Description = '#RENW16.00.01:R119';
        }
        field(5072671; "Calendar Code"; Code[10])
        {
            Caption = 'Calendar Code';
            Description = '#RENW16.00.01:R087';
            TableRelation = "Base Calendar";
        }
        field(5072672; "Rental Location Code"; Code[10])
        {
            Caption = 'Rental Location Code';
            Description = '#RENW16.00.01.02:T504';
            TableRelation = Location WHERE ("Use As Rental Location" = CONST (true));
        }
        field(5157894; "Payment Bank Code"; Code[10])
        {
            Caption = 'Payment Bank Code';
            Description = 'PMT';
            TableRelation = "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Bill-to Customer No."),
                                                                "Inserted by Bank Import" = CONST (false));
        }
        field(5157895; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
            Description = 'PMT';
            TableRelation = "Bank Account Mandate"."Mandate ID" WHERE ("Account Type" = CONST (Customer),
                                                                       "Account No." = FIELD ("Bill-to Customer No."));
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Main Job No.';
            TableRelation = Job;
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Doc. No. Occurrence", "Version No.")
        {
            Clustered = true;
        }
        key(Key2; "Document Type", "Sell-to Customer No.")
        {
        }
        key(Key3; "Document Type", "Bill-to Customer No.")
        {
        }
        key(Key4; "Internal Job No.")
        {
        }
    }

    fieldgroups
    {
    }
}

