table 18 Customer
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.11.08   OPplus Modules
    //                 - New Fields added
    //                 - New Keys added
    // INS  24.11.16       OPplus Installments
    // MP   01.12.06   Multiple Payment Discount
    // -----------------------------------------------------
    // P0034 01.05.16 DEBIE.ARE New field 50099 "Salesperson Code 2"
    // P0028 17.03.16 CCBIE.ARE Field 50150 renamed - old name "Warenrechnungs-E-Mail", new name "Mahnungs-E-Mail".
    // Initiate "Credit Limit (LCY)" by insert
    // P0002 26.02.16 CCBIE.ARE New fields 50005 "Verpackungskosten Ja/Nein", 50006 "Versandkosten Ja/Nein", 50007 "Bill-To E-Mail", 50008 "E-Invoicing",
    //   50015 "Kette Kreditlimit", 75000 "Rechnungsadresse", 50130 "Vertriebs-E-Mai", 50140 "Warenavise-E-Mail", 50150"Warenrechnungs-E-Mail",
    //   50160"Gelangensbestätigungs-E-Mail", 50170"Serviceavise-E-Mail", 50180"Servicerechnungs-E-Mail", 50190"Servicemahnungs-E-Mail"
    // P0004 15.02.16 DEBIE.ARE NAV2015 Modus changes
    // 
    // CSC8.00:
    //  - New Field "Scan Instruction"
    // AM01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|alloy management
    // 
    // #PXW16.00.01:100 14.10.09 DEMSR.IST
    //   New field 5012700 "Customer Mfg. Dim. Value Code" added
    //   New function ValidateCustomerMfgDimCode
    //   New function LookupCustomerMfgDimCode
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // RETCONTAINER:PMW14.02:53:1
    //   # New field 5012400 "Returnable Cont. Location Code"
    // 
    // #PMW16.00.02:T250 13.10.10 DEMSR.KHS
    //   Restricted Sales:
    //   New Field 5012580 Customer Group Code
    //   New Field 5012581 Sales Restrictions Exist
    //   Item Contingents:
    //   New Field 5012583 Contact No.
    //   New Field 5012584 Contact Contingent Group Code
    //   New Field 5012585 Virtual Customer
    // 
    // #PMW16.00.02.02:T502 04.01.11 DEMSR.IST
    //   Table relation to "Customer Group" for field "Customer Group Code"
    // 
    // #PMW17.00:T500 08.01.13 DEMSR.IST
    //   Lookup for field Contact No. corrected
    // 
    // :DMW15.01:21:01 #New field 5013400: "Location Code sep. Delivery"
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // :CMIW15.00:41:1
    //   # New field 5172102 "Customer Commission Group"
    //   # New key "Customer Commission Group"
    // 
    // #RENW16.00:10-001  04.05.09 DEMSR.KHS
    //   Fields "Customer Location Code","Rental Location Code" added
    // 
    // #RENW16.00.01:R170 15.10.09 DEMSR.KHS
    //   Internal Service Order
    // 
    // #RENW17.00.00.01:T507 06.03.13 DEMSR.KHS
    //   winnow Order from Rent Order in Statistics
    // 
    // #RENW18.00.00.05:T101 28.05.15 DEMSR.KHS
    //   Update Rental Statistics Calculation
    //   New Function: CalcOustandingRentalLCY
    //   New fields: "Rent Orders", "Rent Shipped Not Invoiced(LCY)", "Outstanding Rent Invoices(LCY)", "Invoiced Rent Orders (LCY)")
    // 
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================
    // +--------------------------------------------------------------+
    // |                  Copyright MODUS Consult AG                  |
    // |                          Customizing                         |
    // +--------------------------------------------------------------+
    // Modul     Date      User      Description
    // MC        29.09.15  DT        Fields 50000 - 50003 for VIPPS-Sync

    Caption = 'Customer';
    DataCaptionFields = "No.", Name;
    Permissions = TableData "Cust. Ledger Entry" = r;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(5; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(7; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; Contact; Text[50])
        {
            Caption = 'Contact';
        }
        field(9; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(10; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
        }
        field(11; "Document Sending Profile"; Code[20])
        {
            Caption = 'Document Sending Profile';
            TableRelation = "Document Sending Profile".Code;
        }
        field(14; "Our Account No."; Text[20])
        {
            Caption = 'Our Account No.';
        }
        field(15; "Territory Code"; Code[10])
        {
            Caption = 'Territory Code';
            TableRelation = Territory;
        }
        field(16; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(17; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(18; "Chain Name"; Code[10])
        {
            Caption = 'Chain Name';
        }
        field(19; "Budgeted Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Budgeted Amount';
        }
        field(20; "Credit Limit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Credit Limit (LCY)';
        }
        field(21; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            TableRelation = "Customer Posting Group";
        }
        field(22; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(23; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(24; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(26; "Statistics Group"; Integer)
        {
            Caption = 'Statistics Group';
        }
        field(27; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(28; "Fin. Charge Terms Code"; Code[10])
        {
            Caption = 'Fin. Charge Terms Code';
            TableRelation = "Finance Charge Terms";
        }
        field(29; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(30; "Shipment Method Code"; Code[10])
        {
            Caption = 'Shipment Method Code';
            TableRelation = "Shipment Method";
        }
        field(31; "Shipping Agent Code"; Code[10])
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(32; "Place of Export"; Code[20])
        {
            Caption = 'Place of Export';
        }
        field(33; "Invoice Disc. Code"; Code[20])
        {
            Caption = 'Invoice Disc. Code';
            TableRelation = Customer;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(34; "Customer Disc. Group"; Code[20])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(35; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(36; "Collection Method"; Code[20])
        {
            Caption = 'Collection Method';
        }
        field(37; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(38; Comment; Boolean)
        {
            CalcFormula = Exist("Comment Line" WHERE("Table Name" = CONST(Customer),
                                                      "No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; Blocked; Option)
        {
            Caption = 'Blocked';
            OptionCaption = ' ,Ship,Invoice,All';
            OptionMembers = " ",Ship,Invoice,All;
        }
        field(40; "Invoice Copies"; Integer)
        {
            Caption = 'Invoice Copies';
        }
        field(41; "Last Statement No."; Integer)
        {
            Caption = 'Last Statement No.';
        }
        field(42; "Print Statements"; Boolean)
        {
            Caption = 'Print Statements';
        }
        field(45; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;
        }
        field(46; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(47; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(54; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(55; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(56; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(57; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(58; Balance; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter")));
            Caption = 'Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; "Net Change"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Net Change';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Net Change (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Cust. Ledger Entry"."Sales (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                        "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                        "Posting Date" = FIELD("Date Filter"),
                                                                        "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Sales (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Profit (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Cust. Ledger Entry"."Profit (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                         "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                         "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Profit (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64; "Inv. Discounts (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Cust. Ledger Entry"."Inv. Discount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Posting Date" = FIELD("Date Filter"),
                                                                                "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Inv. Discounts (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65; "Pmt. Discounts (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                  "Entry Type" = FILTER("Payment Discount" .. "Payment Discount (VAT Adjustment)"),
                                                                                  "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Pmt. Discounts (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66; "Balance Due"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Customer No." = FIELD("No."),
                                                                         "Posting Date" = FIELD(UPPERLIMIT("Date Filter")),
                                                                         "Initial Entry Due Date" = FIELD("Date Filter"),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Balance Due';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Balance Due (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                 "Posting Date" = FIELD(UPPERLIMIT("Date Filter")),
                                                                                 "Initial Entry Due Date" = FIELD("Date Filter"),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Balance Due (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(69; Payments; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST(Payment),
                                                                          "Entry Type" = CONST("Initial Entry"),
                                                                          "Customer No." = FIELD("No."),
                                                                          "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                          "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                          "Posting Date" = FIELD("Date Filter"),
                                                                          "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Payments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "Invoice Amounts"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST(Invoice),
                                                                         "Entry Type" = CONST("Initial Entry"),
                                                                         "Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Invoice Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Cr. Memo Amounts"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST("Credit Memo"),
                                                                          "Entry Type" = CONST("Initial Entry"),
                                                                          "Customer No." = FIELD("No."),
                                                                          "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                          "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                          "Posting Date" = FIELD("Date Filter"),
                                                                          "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Cr. Memo Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Finance Charge Memo Amounts"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST("Finance Charge Memo"),
                                                                         "Entry Type" = CONST("Initial Entry"),
                                                                         "Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Finance Charge Memo Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Payments (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST(Payment),
                                                                                  "Entry Type" = CONST("Initial Entry"),
                                                                                  "Customer No." = FIELD("No."),
                                                                                  "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Payments (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "Inv. Amounts (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST(Invoice),
                                                                                 "Entry Type" = CONST("Initial Entry"),
                                                                                 "Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Inv. Amounts (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76; "Cr. Memo Amounts (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST("Credit Memo"),
                                                                                  "Entry Type" = CONST("Initial Entry"),
                                                                                  "Customer No." = FIELD("No."),
                                                                                  "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Cr. Memo Amounts (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77; "Fin. Charge Memo Amounts (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST("Finance Charge Memo"),
                                                                                 "Entry Type" = CONST("Initial Entry"),
                                                                                 "Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Fin. Charge Memo Amounts (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; "Outstanding Orders"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Outstanding Amount" WHERE("Document Type" = CONST(Order),
                                                                       "Bill-to Customer No." = FIELD("No."),
                                                                       "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                       "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                       "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Outstanding Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(79; "Shipped Not Invoiced"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Shipped Not Invoiced" WHERE("Document Type" = CONST(Order),
                                                                         "Bill-to Customer No." = FIELD("No."),
                                                                         "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                         "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Shipped Not Invoiced';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Application Method"; Option)
        {
            Caption = 'Application Method';
            OptionCaption = 'Manual,Apply to Oldest';
            OptionMembers = Manual,"Apply to Oldest";
        }
        field(82; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(83; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(84; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(85; "Telex Answer Back"; Text[20])
        {
            Caption = 'Telex Answer Back';
        }
        field(86; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(87; "Combine Shipments"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Combine Shipments';
        }
        field(88; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(89; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(90; GLN; Code[13])
        {
            Caption = 'GLN';
            Numeric = true;
        }
        field(91; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(92; County; Text[30])
        {
            Caption = 'County';
        }
        field(97; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Debit Amount" WHERE("Customer No." = FIELD("No."),
                                                                                 "Entry Type" = FILTER(<> Application),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(98; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Credit Amount" WHERE("Customer No." = FIELD("No."),
                                                                                  "Entry Type" = FILTER(<> Application),
                                                                                  "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99; "Debit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Debit Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                       "Entry Type" = FILTER(<> Application),
                                                                                       "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                       "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                       "Posting Date" = FIELD("Date Filter"),
                                                                                       "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Debit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Credit Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Credit Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                        "Entry Type" = FILTER(<> Application),
                                                                                        "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                        "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                        "Posting Date" = FIELD("Date Filter"),
                                                                                        "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Credit Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(102; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(103; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            ExtendedDatatype = URL;
        }
        field(104; "Reminder Terms Code"; Code[10])
        {
            Caption = 'Reminder Terms Code';
            TableRelation = "Reminder Terms";
        }
        field(105; "Reminder Amounts"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST(Reminder),
                                                                         "Entry Type" = CONST("Initial Entry"),
                                                                         "Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Reminder Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "Reminder Amounts (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST(Reminder),
                                                                                 "Entry Type" = CONST("Initial Entry"),
                                                                                 "Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Reminder Amounts (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(108; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(109; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(110; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(111; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(113; "Outstanding Orders (LCY)"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Outstanding Amount (LCY)" WHERE("Document Type" = CONST(Order),
                                                                             "Bill-to Customer No." = FIELD("No."),
                                                                             "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Currency Code" = FIELD("Currency Filter"),
                                                                             "Rental Position" = FILTER(Sales | "One-Time Invoicing")));
            Caption = 'Outstanding Orders (LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(114; "Shipped Not Invoiced (LCY)"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Shipped Not Invoiced (LCY)" WHERE("Document Type" = CONST(Order),
                                                                               "Bill-to Customer No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Currency Code" = FIELD("Currency Filter"),
                                                                               "Rental Position" = FILTER(Sales | "One-Time Invoicing")));
            Caption = 'Shipped Not Invoiced (LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(115; Reserve; Option)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Reserve';
            InitValue = Optional;
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(116; "Block Payment Tolerance"; Boolean)
        {
            Caption = 'Block Payment Tolerance';
        }
        field(117; "Pmt. Disc. Tolerance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                  "Entry Type" = FILTER("Payment Discount Tolerance" | "Payment Discount Tolerance (VAT Adjustment)" | "Payment Discount Tolerance (VAT Excl.)"),
                                                                                  "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Pmt. Disc. Tolerance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(118; "Pmt. Tolerance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                  "Entry Type" = FILTER("Payment Tolerance" | "Payment Tolerance (VAT Adjustment)" | "Payment Tolerance (VAT Excl.)"),
                                                                                  "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                                  "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Pmt. Tolerance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(119; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            TableRelation = "IC Partner";
        }
        field(120; Refunds; Decimal)
        {
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST(Refund),
                                                                         "Entry Type" = CONST("Initial Entry"),
                                                                         "Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Refunds';
            FieldClass = FlowField;
        }
        field(121; "Refunds (LCY)"; Decimal)
        {
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST(Refund),
                                                                                 "Entry Type" = CONST("Initial Entry"),
                                                                                 "Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Refunds (LCY)';
            FieldClass = FlowField;
        }
        field(122; "Other Amounts"; Decimal)
        {
            CalcFormula = Sum("Detailed Cust. Ledg. Entry".Amount WHERE("Initial Document Type" = CONST(" "),
                                                                         "Entry Type" = CONST("Initial Entry"),
                                                                         "Customer No." = FIELD("No."),
                                                                         "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                         "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                         "Posting Date" = FIELD("Date Filter"),
                                                                         "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Other Amounts';
            FieldClass = FlowField;
        }
        field(123; "Other Amounts (LCY)"; Decimal)
        {
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Initial Document Type" = CONST(" "),
                                                                                 "Entry Type" = CONST("Initial Entry"),
                                                                                 "Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Other Amounts (LCY)';
            FieldClass = FlowField;
        }
        field(124; "Prepayment %"; Decimal)
        {
            Caption = 'Prepayment %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(125; "Outstanding Invoices (LCY)"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Outstanding Amount (LCY)" WHERE("Document Type" = CONST(Invoice),
                                                                             "Bill-to Customer No." = FIELD("No."),
                                                                             "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Outstanding Invoices (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(126; "Outstanding Invoices"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Outstanding Amount" WHERE("Document Type" = CONST(Invoice),
                                                                       "Bill-to Customer No." = FIELD("No."),
                                                                       "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                       "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                       "Currency Code" = FIELD("Currency Filter")));
            Caption = 'Outstanding Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; "Bill-to No. Of Archived Doc."; Integer)
        {
            CalcFormula = Count("Sales Header Archive" WHERE("Document Type" = CONST(Order),
                                                              "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-to No. Of Archived Doc.';
            FieldClass = FlowField;
        }
        field(131; "Sell-to No. Of Archived Doc."; Integer)
        {
            CalcFormula = Count("Sales Header Archive" WHERE("Document Type" = CONST(Order),
                                                              "Sell-to Customer No." = FIELD("No.")));
            Caption = 'Sell-to No. Of Archived Doc.';
            FieldClass = FlowField;
        }
        field(132; "Partner Type"; Option)
        {
            Caption = 'Partner Type';
            OptionCaption = ' ,Company,Person';
            OptionMembers = " ",Company,Person;
        }
        field(288; "Preferred Bank Account"; Code[10])
        {
            Caption = 'Preferred Bank Account';
            TableRelation = "Customer Bank Account".Code WHERE("Customer No." = FIELD("No."));
        }
        field(840; "Cash Flow Payment Terms Code"; Code[10])
        {
            Caption = 'Cash Flow Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(5049; "Primary Contact No."; Code[20])
        {
            Caption = 'Primary Contact No.';
            TableRelation = Contact;
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
        field(5790; "Shipping Time"; DateFormula)
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Time';
        }
        field(5792; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE("Shipping Agent Code" = FIELD("Shipping Agent Code"));
        }
        field(5900; "Service Zone Code"; Code[10])
        {
            Caption = 'Service Zone Code';
            TableRelation = "Service Zone";
        }
        field(5902; "Contract Gain/Loss Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Contract Gain/Loss Entry".Amount WHERE("Customer No." = FIELD("No."),
                                                                       "Ship-to Code" = FIELD("Ship-to Filter"),
                                                                       "Change Date" = FIELD("Date Filter")));
            Caption = 'Contract Gain/Loss Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5903; "Ship-to Filter"; Code[10])
        {
            Caption = 'Ship-to Filter';
            FieldClass = FlowFilter;
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("No."));
        }
        field(5910; "Outstanding Serv. Orders (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Line"."Outstanding Amount (LCY)" WHERE("Document Type" = CONST(Order),
                                                                               "Bill-to Customer No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Currency Code" = FIELD("Currency Filter"),
                                                                               "Rent Order No." = CONST('')));
            Caption = 'Outstanding Serv. Orders (LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5911; "Serv Shipped Not Invoiced(LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Line"."Shipped Not Invoiced (LCY)" WHERE("Document Type" = CONST(Order),
                                                                                 "Bill-to Customer No." = FIELD("No."),
                                                                                 "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter"),
                                                                                 "Rent Order No." = CONST('')));
            Caption = 'Serv Shipped Not Invoiced(LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5912; "Outstanding Serv.Invoices(LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Line"."Outstanding Amount (LCY)" WHERE("Document Type" = CONST(Invoice),
                                                                               "Bill-to Customer No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Currency Code" = FIELD("Currency Filter"),
                                                                               "Rent Order No." = CONST('')));
            Caption = 'Outstanding Serv.Invoices(LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
            InitValue = true;
        }
        field(7171; "No. of Quotes"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Quote),
                                                      "Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7172; "No. of Blanket Orders"; Integer)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Blanket Order"),
                                                      "Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Blanket Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7173; "No. of Orders"; Integer)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Order),
                                                      "Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7174; "No. of Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Invoice),
                                                      "Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7175; "No. of Return Orders"; Integer)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Return Order"),
                                                      "Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Return Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7176; "No. of Credit Memos"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Credit Memo"),
                                                      "Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Credit Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7177; "No. of Pstd. Shipments"; Integer)
        {
            CalcFormula = Count("Sales Shipment Header" WHERE("Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Pstd. Shipments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7178; "No. of Pstd. Invoices"; Integer)
        {
            CalcFormula = Count("Sales Invoice Header" WHERE("Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Pstd. Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7179; "No. of Pstd. Return Receipts"; Integer)
        {
            CalcFormula = Count("Return Receipt Header" WHERE("Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Pstd. Return Receipts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7180; "No. of Pstd. Credit Memos"; Integer)
        {
            CalcFormula = Count("Sales Cr.Memo Header" WHERE("Sell-to Customer No." = FIELD("No.")));
            Caption = 'No. of Pstd. Credit Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7181; "No. of Ship-to Addresses"; Integer)
        {
            CalcFormula = Count("Ship-to Address" WHERE("Customer No." = FIELD("No.")));
            Caption = 'No. of Ship-to Addresses';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7182; "Bill-To No. of Quotes"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Quote),
                                                      "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7183; "Bill-To No. of Blanket Orders"; Integer)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Blanket Order"),
                                                      "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Blanket Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7184; "Bill-To No. of Orders"; Integer)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Order),
                                                      "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7185; "Bill-To No. of Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Invoice),
                                                      "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7186; "Bill-To No. of Return Orders"; Integer)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Return Order"),
                                                      "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Return Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7187; "Bill-To No. of Credit Memos"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Credit Memo"),
                                                      "Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Credit Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7188; "Bill-To No. of Pstd. Shipments"; Integer)
        {
            CalcFormula = Count("Sales Shipment Header" WHERE("Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Pstd. Shipments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7189; "Bill-To No. of Pstd. Invoices"; Integer)
        {
            CalcFormula = Count("Sales Invoice Header" WHERE("Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Pstd. Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7190; "Bill-To No. of Pstd. Return R."; Integer)
        {
            CalcFormula = Count("Return Receipt Header" WHERE("Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Pstd. Return R.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7191; "Bill-To No. of Pstd. Cr. Memos"; Integer)
        {
            CalcFormula = Count("Sales Cr.Memo Header" WHERE("Bill-to Customer No." = FIELD("No.")));
            Caption = 'Bill-To No. of Pstd. Cr. Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7600; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            TableRelation = "Base Calendar";
        }
        field(7601; "Copy Sell-to Addr. to Qte From"; Option)
        {
            AccessByPermission = TableData Contact = R;
            Caption = 'Copy Sell-to Addr. to Qte From';
            OptionCaption = 'Company,Person';
            OptionMembers = Company,Person;
        }
        field(50000; Buchungssperre; Integer)
        {
            Description = 'MC Datenübernahme';
        }
        field(50001; Mahnsperre; Integer)
        {
            Description = 'MC Datenübernahme';
        }
        field(50002; Regulierungssperre; Integer)
        {
            Description = 'MC Datenübernahme';
        }
        field(50003; Auslandskreditversicherung; Code[20])
        {
            Description = 'MC Datenübernahme';
        }
        field(50005; "Verpackungskosten Ja/Nein"; Boolean)
        {
            Caption = 'Verpackungskosten Ja/Nein';
            Description = 'P0002';
        }
        field(50006; "Versandkosten Ja/Nein"; Boolean)
        {
            Caption = 'Versandkosten Ja/Nein';
            Description = 'P0002';
        }
        field(50007; "Bill-To E-Mail"; Text[80])
        {
            Caption = 'Bill-To E-Mail';
            Description = 'P0002';
        }
        field(50008; "E-Invoicing"; Boolean)
        {
            Description = 'P0002';
        }
        field(50009; Bounsagreement; Boolean)
        {
            Caption = 'Bonusvereinbarung';
            Description = '#AT';
        }
        field(50010; ReminderDate; Date)
        {
            Caption = 'Mahndatum';
            Description = '#AT';
        }
        field(50011; EstosLink; Text[250])
        {
            Description = '#AT';
        }
        field(50012; "Service Salesperson Code"; Code[10])
        {
            Caption = 'Service Salesperson Code';
            Description = '#AT';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50015; "Kette Kreditlimit"; Code[20])
        {
            Caption = 'Kette Kreditlimit';
            Description = 'P0002';
        }
        field(50016; "Weiterleiten An"; Code[10])
        {
            Description = '#AT';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50099; "Salesperson Code 2"; Code[10])
        {
            Caption = 'Salesperson Code 2';
            Description = 'P0034';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50100; "Kostenträger (Standard)"; Code[20])
        {
        }
        field(50110; "Geschäftsbereich (Standard)"; Code[20])
        {
        }
        field(50130; "Vertriebs-E-Mail"; Text[80])
        {
            Caption = 'Vertriebs-E-Mail';
            Description = 'P0002';
        }
        field(50140; "Warenavise-E-Mail"; Text[80])
        {
            Caption = 'Warenavise-E-Mail';
            Description = 'P0002';
        }
        field(50150; "Mahnungs-E-Mail"; Text[80])
        {
            Caption = 'Mahnungs-E-Mail';
            Description = 'P0002,P0027';
        }
        field(50160; "Gelangensbestätigungs-E-Mail"; Text[80])
        {
            Caption = 'Gelangensbestätigungs-E-Mail';
            Description = 'P0002';
        }
        field(50170; "Serviceavise-E-Mail"; Text[80])
        {
            Caption = 'Serviceavise-E-Mail';
            Description = 'P0002';
        }
        field(50180; "Servicerechnungs-E-Mail"; Text[80])
        {
            Caption = 'Servicerechnung-E-Mail';
            Description = 'P0002';
        }
        field(50190; "Servicemahnungs-E-Mail"; Text[80])
        {
            Caption = 'Servicemahnungs-E-Mail';
            Description = 'P0002';
        }
        field(50200; "Net Change - VKR(LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter"),
                                                                                 "Document No." = FILTER(<> 'VRK*')));
            Caption = 'Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50210; "Balance -VKR(LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE("Customer No." = FIELD("No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD("Currency Filter"),
                                                                                 "Posting Date" = FIELD("Date Filter"),
                                                                                 "Document No." = FILTER(<> 'VRK*')));
            Caption = 'Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75000; Rechnungsadresse; Text[50])
        {
            Caption = 'Invoice Address';
            Description = 'P0002';
        }
        field(5001900; "No. Entries for Avis"; Integer)
        {
            Caption = 'No. Entries for Avis';
            Description = 'DYNPMT';
        }
        field(5001901; "SEPA Type"; Option)
        {
            Caption = 'SEPA Type';
            Description = 'DYNPMT';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(5001902; "Mandate Delegation Code"; Code[10])
        {
            Caption = 'Mandate Delegation Code';
            Description = 'DYNPMT';
            TableRelation = "Mandate Delegation";
        }
        field(5001903; "Allow Paym. to third parties"; Boolean)
        {
            Caption = 'Allow Paym. to third parties';
            Description = 'DYNPMT';
        }
        field(5001904; "Pay-by Customer No."; Code[20])
        {
            Caption = 'Pay-by Customer No.';
            Description = 'DYNPMT';
            TableRelation = Customer."No." WHERE("Allow Paym. to third parties" = CONST(true));
        }
        field(5012400; "Returnable Cont. Location Code"; Code[10])
        {
            Caption = 'Returnable Cont. Location Code';
            Description = 'RETCONTAINER:PMW14.02:53:1';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false),
                                            "Customer Location" = CONST(true));
        }
        field(5012580; "Customer Group Code"; Code[10])
        {
            Caption = 'Customer Group Code';
            Description = '#PMW16.00.02:T250';
            TableRelation = "Customer Group".Code;
        }
        field(5012581; "Sales Restrictions Exist"; Boolean)
        {
            CalcFormula = Exist("Restricted Sales Setup" WHERE("Customer Filter" = FIELD("No.")));
            Caption = 'Sales Restrictions Exist';
            Description = '#PMW16.00.02:T250';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012583; "Contact No."; Code[20])
        {
            CalcFormula = Lookup("Contact Business Relation"."Contact No." WHERE("No." = FIELD("No."),
                                                                                  "Link to Table" = CONST(Customer)));
            Caption = 'Contact No.';
            Description = '#PMW16.00.02:T250';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012584; "Contact Contingent Group Code"; Code[20])
        {
            CalcFormula = Lookup(Contact."Contingent Group Code" WHERE("No." = FIELD("Contact No.")));
            Caption = 'Contingent Group Code';
            Description = '#PMW16.00.02:T250';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012585; "Virtual Customer"; Boolean)
        {
            Caption = 'Virtual Customer';
            Description = '#PMW16.00.02:T250';
        }
        field(5012700; "Customer Mfg. Dim. Value Code"; Code[20])
        {
            Caption = 'Customer Mfg. Dim. Value Code';
            Description = '#PXW16.00.01:100';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(5013400; "Location Code sep. Delivery"; Code[10])
        {
            Caption = 'Location Code sep. Delivery';
            Description = ':DMW15.01:21:01';
            TableRelation = Location;
        }
        field(5072450; "Internal Customer"; Boolean)
        {
            Caption = 'Internal Customer';
            Description = '#RENW16.00.01:R170';
        }
        field(5072650; "Customer Location Code"; Code[10])
        {
            Caption = 'Customer Location Code';
            Description = '#RENW16.00:10-001';
            TableRelation = Location WHERE("Use As - Rented" = CONST(true));
        }
        field(5072651; "Rental Location Code"; Code[10])
        {
            Caption = 'Rental Location Code';
            Description = '#RENW16.00:10-001';
            TableRelation = Location WHERE("Use As Rental Location" = CONST(true));
        }
        field(5072652; "No. of Rent Orders"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Order),
                                                      "Sell-to Customer No." = FIELD("No."),
                                                      "Rental Contract" = CONST(true)));
            Caption = 'No. of Orders';
            Description = '#RENW17.00.00.01:T507';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072653; "Rent Orders"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Amount Total Rent Incl. VAT" WHERE("Document Type" = CONST(Order),
                                                                                "Bill-to Customer No." = FIELD("No."),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Currency Code" = FIELD("Currency Filter"),
                                                                                "Rental Position" = FILTER(Rental | "Rate Part")));
            Caption = 'Rent Orders (LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072654; "Rent Shipped Not Invoiced(LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Shipped Not Invoiced (LCY)" WHERE("Document Type" = CONST(Order),
                                                                               "Bill-to Customer No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Currency Code" = FIELD("Currency Filter"),
                                                                               "Rental Position" = FILTER(Rental | "Rate Part")));
            Caption = 'Rent Shipped Not Invoiced(LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072655; "Outstanding Rent Invoices(LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Line"."Outstanding Amount (LCY)" WHERE("Document Type" = CONST(Invoice),
                                                                               "Bill-to Customer No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Currency Code" = FIELD("Currency Filter"),
                                                                               "Rent Order No." = FILTER(<> '')));
            Caption = 'Outstanding Rental Invoices (LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072656; "Invoiced Rent Orders (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Service Invoice Line"."Amount Including VAT" WHERE("Bill-to Customer No." = FIELD("No."),
                                                                                   "Rent Order No." = FILTER(<> ''),
                                                                                   "Rental Position" = FILTER(true),
                                                                                   "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Code"),
                                                                                   "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Code")));
            Caption = 'Invoiced Rent Orders (LCY)';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157802; "Skip Bank Acc. in Bank Import"; Boolean)
        {
            Caption = 'Skip Bank Account in Bank Import';
            Description = 'EA';
        }
        field(5157803; "Disable Auto Application"; Boolean)
        {
            Caption = 'Disable Auto Application';
            Description = 'EA';
        }
        field(5157804; "Alt. Application Method"; Option)
        {
            Caption = 'Alt. Application Method';
            Description = 'EA';
            OptionCaption = ' ,Standard,Extended,Extended on Entries';
            OptionMembers = " ",Standard,Extended,"Extended on Entries";
        }
        field(5157840; "Linked Vendors"; Code[20])
        {
            CalcFormula = Lookup("Customer / Vendor Link"."Vendor No." WHERE("Customer No." = FIELD("No.")));
            Caption = 'Linked Vendors';
            Description = 'EXT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157841; "Association No."; Code[20])
        {
            Caption = 'Association No.';
            Description = 'EXT';
            TableRelation = Association."No." WHERE(Type = CONST(Customer));
        }
        field(5157842; "Association Sort Code"; Code[20])
        {
            Caption = 'Association Sort Code';
            Description = 'EXT';
        }
        field(5157862; SearchCity; Code[30])
        {
            Caption = 'SearchCity';
            Description = 'VAL';
        }
        field(5157863; "Balance Acknowledgement Code"; Code[10])
        {
            Caption = 'Balance Acknowledgement Code';
            Description = 'VAL';
            TableRelation = "Reminder Terms";
        }
        field(5157864; "Last Posting at"; Date)
        {
            Caption = 'Last Posting at';
            Description = 'VAL';
        }
        field(5157893; "Min. Pos. Payment Note"; Integer)
        {
            Caption = 'Min. Pos. Payment Note';
            Description = 'PMT';
        }
        field(5157894; "Default Charges"; Option)
        {
            Caption = 'Default Charges';
            Description = 'PMT';
            OptionCaption = ' ,Share,Orderer,Beneficiary';
            OptionMembers = " ",Share,Orderer,Beneficiary;
        }
        field(5157895; "Limit Lines per Head"; Integer)
        {
            Caption = 'New Head per Entry';
            Description = 'PMT';
        }
        field(5157900; "Trading Type"; Option)
        {
            Caption = 'Trading Type';
            Description = 'PMT';
            OptionCaption = ' ,Transit Trade,Service,Capital Trade';
            OptionMembers = " ",Transit,Service,Capital;
        }
        field(5157901; "Service No."; Code[10])
        {
            Caption = 'Service No.';
            Description = 'PMT';
            TableRelation = "Bundesbank Code";
        }
        field(5157902; "Default Instruction Code"; Code[10])
        {
            Caption = 'Default Instruction Code';
            Description = 'PMT';
            TableRelation = "Payment Supp. Code".Code WHERE(Type = CONST(Instruction));
        }
        field(5171652; "Scan Instruction"; Code[20])
        {
            Caption = 'Scan Instruction';
            Description = 'CSC8.00';
            TableRelation = "Scan Instruction".Code WHERE(Type = CONST(Customer));
        }
        field(5172102; "Customer Commission Group"; Code[10])
        {
            Caption = 'Customer Commission Group';
            Description = ':CMIW15.00:41:1';
        }
        field(5483207; "Installment Template"; Code[10])
        {
            Caption = 'Installment Template';
            Description = 'INS';
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5483208; "Installment Template Type"; Option)
        {
            Caption = 'Installment Template Type';
            Description = 'INS';
            OptionCaption = 'General,Customer,Vendor';
            OptionMembers = General,Customer,Vendor;
        }
        field(5483212; "Value Date Calculation"; DateFormula)
        {
            Caption = 'Value Date Calculation';
            Description = 'MP';
        }
        field(42014822; "GPS Latitude"; Decimal)
        {
            Caption = 'GPS Latitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
        }
        field(42014823; "GPS Longitude"; Decimal)
        {
            Caption = 'GPS Longitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
        }
        field(42015200; "E-Bill"; Boolean)
        {
            Caption = 'E-Bill';
            Description = 'EBST1.0.0.0';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Customer Posting Group")
        {
        }
        key(Key4; "Currency Code")
        {
        }
        key(Key5; "Country/Region Code")
        {
        }
        key(Key6; "Gen. Bus. Posting Group")
        {
        }
        key(Key7; Name, Address, City)
        {
        }
        key(Key8; "VAT Registration No.")
        {
        }
        key(Key9; Name)
        {
        }
        key(Key10; City)
        {
        }
        key(Key11; "Post Code")
        {
        }
        key(Key12; "Phone No.")
        {
        }
        key(Key13; Contact)
        {
        }
        key(Key14; "Customer Commission Group")
        {
        }
        key(Key15; "Association No.")
        {
        }
        key(Key16; SearchCity)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, City, "Post Code", "Phone No.", Contact)
        {
        }
        fieldgroup(Brick; "No.", Name, "Balance (LCY)", Contact, "Balance Due (LCY)")
        {
        }
    }
}

