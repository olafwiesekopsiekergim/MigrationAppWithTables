table 36 "Sales Header"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.05.12   OPplus Modules
    //                 - New Field added
    // INS  24.11.16       OPplus Installments
    // -----------------------------------------------------
    // P0046 14.06.16 DEBIE.ARE New field 50400 "Creation Date"
    // P0040 21.04.16 DEBIE.ARE New function GetTotalGrossWeight
    // P0034 01.04.16 DEBIE.ARE Field Zusatzstatus can be changed always. Update field "Salesperson Code 2"
    // P0029 29.03.16 DEBIE.ARE New field 77964 "No. Printed Work Order". New function SalesPrintedWorkOrder
    // P0032 22.03.16 DEBIE.NNE Function UpdateSalesLines, Salesperson Code - OnValidate() changed.
    // P0028 17.03.16 CCBIE.ARE New field 50100 Kundenliefertermin
    // P0023 14.03.16 CCBIE.ARE New field 70170 Zusatzstatus. New function SetWarehouseRequest. Function CreateInvtPutAwayPick changed
    // P0021 04.03.16 CCBIE.ARE New field 77947 "fix-Termin Lieferung"
    // P0008 03.03.16 CCBIE.ARE New fields 50160 "Pos.-Zus.-Zähl-Summen drucken", 77960 "Check List created", 77961 "Check List created on",
    //   77962 "Check List receive", 77963 "Check List receive on", 50300 "Amount for Invoice Discount", 50310 "Amount Including VAT for InvD".
    //   Function RecreateSalesLines change
    // P0005 17.02.16 CCBIE.ARE New fields 50004 "Internal Job No.", 50005 Win/Loss, 50006 "Win/Loss Reason". New Key "Internal Job No."
    // P0001 25.02.16 DEBIE.ARE New fields 50047 "RMD Sammelsendung", 77000 Sachbearbeiter, 70170 "Status Auftrag".
    // 
    // CSC8.00:
    //   New Fields
    //     Scan Instruction
    //     Scan complete
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Key:
    //                                     - Job No.,Document Type,No.
    // PR02 PRODUKT.01:AMP0015 12.06.15 DENUE.SKOL Integration Textmodule
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        CaptionML(ENU/DEU) of Field "Main Job No." renamed from
    //                                        - "Main Job No." to
    //                                        - "Project No."
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #PXW16.00.01:100 14.10.09 DEMSR.IST
    //   New field 5012700 "Customer Mfg. Dim. Value Code" added
    //   New function ValidateCustomerMfgDimCode
    //   New function LookupCustomerMfgDimCode
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :DMW13.60:1:01 #Salestexte verwalten
    // :DMW13.60:1:02 #Warnmeldung erweitert
    // :DMW13.60:1:03 #Neues Feld "Down Payment No.".
    // :DMW13.60:1:04 #Salestexte: Sprachcode wurde ignoriert => modify eingefügt
    // 
    // :DMW13.70.01:1:01 #PK-Änderung in "Beleg Stückliste" dazu: Checkliste und Belegstückliste geht nicht mehr verloren, wenn nachträglic
    //                   #die Verkaufszeilen neu aufgebaut werden
    //                   #Änderung von :DMW13.60:1:02 wieder entfernt
    // :DMW13.71:1:01 #  Returncode von Modify abgefangen wegen Fehlermeldung
    // 
    // :DMW14.03:1:01 #  neues Feld 5013610 Angebotsbindefrist und einen Key dazu
    // :DMW14.04:1:01 #  completed translation
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #don't use empty IF-THEN Statement, completed Captions
    // :DMW15.02:70:01 #Relink Construction Header after recreating Sales Lines
    // :DMW16.00.01:76:01 #New fields for Building Side Adress and a second Sales Person (field ID's 5013400..5013410)
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.02:T114 10.11.10 DEMSR.SSZ
    //   #Deleted CTO Calculation, because of "new" Calculation Module
    // #DMW16.00.03:A004 20.09.11 DEMSR.SSZ
    //   #Document BOM got lost when Sales Lines were recreated.
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7
    //   #completed transfering of ShortCutDim to Construction
    //   #When changing "Sell-to Customer No.", safe also the field SalesLine."Components Tracking Relevance"
    //   #Completed OnValidate-Trigger in "Building Site-to C/R Code" field
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00.01:A1100      02.06.09 DEWUE.FB Wrong Param. at T36 - f(x) "RecreateSalesLines"
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW16.00:A1202         27.11.09 DEMSR.AM Text Module Call if "Sell-to Customer No." is inserted by filter
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00.01.01:T505 10.06.11 DEMSR.SSZ
    //   #If "Sell-to Contact No." is filled out, manage Standard Text, too
    // 
    // #TMW16.00.02:T506 27.07.11 DEMSR.SSZ
    //   #If "Ship-to Code" is filled out, manage Standard Text, too
    // #TMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7 (replaced FORM with PAGE)
    // #TMW17.00:A002 24.08.12 DEMSR.SSZ
    //   #only show text when "Ship-to Code" isn't empty. So when changing "Sell-to Customer No." get changed, text will not be shown twice
    // #TMW17.00.00.01:A001 08.04.13 DEMSR.SSZ
    //   #Don't delete text when changing Sell-to Contact and Sell-to Customer isn't empty.
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new fields 5060600 and 5060601 for Text Module using Set ID
    // #TMW18.00.00.01:T500 02.02.15 DEMSR.SSZ
    //   #Show PopUp Text when filter is set to "Sell-to Customer No." or "Sell-to Contact No."
    // 
    // #PMW16.00.02:T250 14.10.10 DEMSR.KHS
    //   Item Contingents Handling
    // 
    // #PMW16.00.02.01:T501 06.12.10 DEMSR.KHS
    //   Check License Permission
    // 
    // #PMW17.10.00.02:T108 13.05.14 DEMSR.LV
    //   Expiration Date in Blanket Order
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :CMIW15.00:41:1
    //   # New function "CreateSalesCommissionRecipient"
    //   # New function "DeleteSalesCommissionRecipient"
    // 
    // #RENW16.00:10-001     03.04.09 DEMSR.KHS
    //   Get Rental Locations for Rental Contract
    // 
    // #RENW16.00:10-002     09.06.09 DEMSR.KHS
    //   Shipping No. Series Lookup fixed
    // 
    // #RENW16.00.00.01:T509 08.07.09 DEMSR.KHS
    //   Deleting the Customer No. in Rental Docs made the document disappear
    // 
    // #RENW16.00.00.02:T306 30.07.09 DEMSR.KHS
    //   "Closed" Flag for Rent Order
    // 
    // #RENW16.00.01:R121    23.09.09 DEMSR.KHS
    //   Rental Quote
    // 
    // #RENW16.00.01:R052    23.09.09 DEMSR.KHS
    //   Rental Reservation
    // 
    // #RENW16.00.01:R053    30.09.09 DEMSR.KHS
    //   Rate Parts
    // 
    // #RENW16.00.01:R119    06.10.09 DEMSR.KHS
    //   Sales out of Rental
    // 
    // #RENW16.00.01:R086    19.10.09 DEMSR.KHS
    //   Calendar Code for Rental Invoicing
    // 
    // #RENW16.00.01.02:T517 26.02.10 DEMSR.KHS
    //   Get UOM Translation for Rate Code
    // 
    // #RENW16.00.01.02:T503 08.04.10 DEMSR.KHS
    //   Dimensions were not transported correctly
    // 
    // #RENW16.00.01.02:T516 08.04.10 DEMSR.KHS
    //   Correct set Closed in Rent Order
    // 
    // #RENW16.00.01.03:T504 08.06.10 DEMSR.KHS
    //   Payment Method Code was take from Customer /
    //   Functions moved to CU "Rental Functions Sales Header"
    // 
    // #RENW16.00.02:R154    20.10.10 DEMSR.KHS
    //   Sales Leasing
    //   New field: "Leasing No."
    //   New key: "Leasing No."
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.01:T506 10.12.13 DEMSR.KHS
    //   Add field Rental Management
    // 
    // #RENW17.10.00.02:T513 21.03.14 DEMSR.KHS
    //   Update License Checks
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW17.10.01:T514 16.10.14 DEMSR.KHS
    //   Add Rate Parts on Cust. change
    // 
    // #RENW18.00:T102 07.01.15 DEMSR.KHS
    //   FlowField "Amount Rent" added
    // 
    // #RENW18.00:T105 09.01.15 DEMSR.KHS
    //   Move GET on Rental Setup to work with NAV2015
    // 
    // #AMPW17.00:T100 11.06.13 DEMSR.IST
    //   Call of PostCode.ClearFields in field 5013409 "Building Site-to C/R Code" disabled
    //   Function does not exist is NAV 2013 update rollup 1
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List
    // #AMPW17.10.01:T099 05.05.14 DEMSR.SSZ
    //   LicPermission record variable for different modules
    // 
    // #FDW19.00.00.01:T500 11.11.15 DEDRS.WHEG
    //   Removed FD Demo Integration from AMP NAV 2016
    // 
    // 
    // 
    // 
    // GIM0002 01.03.2022 New Field Flowfield Blocked

    Caption = 'Sales Header';
    DataCaptionFields = "No.", "Sell-to Customer Name";

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,,,,,,Reservation';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,,,,,,Reservation;
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
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("Sell-to Customer No."));
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
            AccessByPermission = TableData "Sales Shipment Header" = R;
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
            Description = '#RENW16.00.01';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false),
                                            "Use As Rental Location" = CONST(false),
                                            "Use As - Rented" = CONST(false));
        }
        field(29; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(30; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(31; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            Editable = false;
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
            Editable = false;
            MinValue = 0;
        }
        field(34; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(35; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(37; "Invoice Disc. Code"; Code[20])
        {
            AccessByPermission = TableData "Cust. Invoice Disc." = R;
            Caption = 'Invoice Disc. Code';
        }
        field(40; "Customer Disc. Group"; Code[20])
        {
            Caption = 'Customer Disc. Group';
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
            CalcFormula = Exist("Sales Comment Line" WHERE("Document Type" = FIELD("Document Type"),
                                                            "No." = FIELD("No."),
                                                            "Document Line No." = CONST(0)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            Editable = false;
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
            TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST("Bank Account")) "Bank Account";
        }
        field(56; "Recalculate Invoice Disc."; Boolean)
        {
            CalcFormula = Exist("Sales Line" WHERE("Document Type" = FIELD("Document Type"),
                                                    "Document No." = FIELD("No."),
                                                    "Recalculate Invoice Disc." = CONST(true)));
            Caption = 'Recalculate Invoice Disc.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; Ship; Boolean)
        {
            Caption = 'Ship';
            Editable = false;
        }
        field(58; Invoice; Boolean)
        {
            Caption = 'Invoice';
        }
        field(59; "Print Posted Documents"; Boolean)
        {
            Caption = 'Print Posted Documents';
        }
        field(60; Amount; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line".Amount WHERE("Document Type" = FIELD("Document Type"),
                                                         "Document No." = FIELD("No.")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Amount Including VAT" WHERE("Document Type" = FIELD("Document Type"),
                                                                         "Document No." = FIELD("No.")));
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
            Editable = false;
            TableRelation = "Sales Shipment Header";
        }
        field(65; "Last Posting No."; Code[20])
        {
            Caption = 'Last Posting No.';
            Editable = false;
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
            TableRelation = "Sales Cr.Memo Header";
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
            Editable = false;
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
            AccessByPermission = TableData Item = R;
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
            Editable = false;
            OptionCaption = 'Open,Released,Pending Approval,Pending Prepayment';
            OptionMembers = Open,Released,"Pending Approval","Pending Prepayment";
        }
        field(121; "Invoice Discount Calculation"; Option)
        {
            Caption = 'Invoice Discount Calculation';
            Editable = false;
            OptionCaption = 'None,%,Amount';
            OptionMembers = "None","%",Amount;
        }
        field(122; "Invoice Discount Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Invoice Discount Value';
            Editable = false;
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
        field(151; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            Editable = false;
        }
        field(160; "Job Queue Status"; Option)
        {
            Caption = 'Job Queue Status';
            Editable = false;
            OptionCaption = ' ,Scheduled for Posting,Error,Posting';
            OptionMembers = " ","Scheduled for Posting",Error,Posting;
        }
        field(161; "Job Queue Entry ID"; Guid)
        {
            Caption = 'Job Queue Entry ID';
            Editable = false;
        }
        field(165; "Incoming Document Entry No."; Integer)
        {
            Caption = 'Incoming Document Entry No.';
            TableRelation = "Incoming Document";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(825; "Authorization Required"; Boolean)
        {
            Caption = 'Authorization Required';
        }
        field(827; "Credit Card No."; Code[20])
        {
            Caption = 'Credit Card No.';
            TableRelation = "DO Payment Credit Card" WHERE("Customer No." = FIELD("Bill-to Customer No."));
        }
        field(1200; "Direct Debit Mandate ID"; Code[35])
        {
            Caption = 'Direct Debit Mandate ID';
            TableRelation = "SEPA Direct Debit Mandate" WHERE("Customer No." = FIELD("Bill-to Customer No."),
                                                               Closed = CONST(false),
                                                               Blocked = CONST(false));
        }
        field(1305; "Invoice Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Inv. Discount Amount" WHERE("Document No." = FIELD("No."),
                                                                         "Document Type" = FIELD("Document Type")));
            Caption = 'Invoice Discount Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5043; "No. of Archived Versions"; Integer)
        {
            CalcFormula = Max("Sales Header Archive"."Version No." WHERE("Document Type" = FIELD("Document Type"),
                                                                          "No." = FIELD("No."),
                                                                          "Doc. No. Occurrence" = FIELD("Doc. No. Occurrence")));
            Caption = 'No. of Archived Versions';
            Editable = false;
            FieldClass = FlowField;
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
            TableRelation = "Customer Template";
        }
        field(5055; "Opportunity No."; Code[20])
        {
            Caption = 'Opportunity No.';
            TableRelation = IF ("Document Type" = FILTER(<> Order)) Opportunity."No." WHERE("Contact No." = FIELD("Sell-to Contact No."),
                                                                                          Closed = CONST(false))
            ELSE
            IF ("Document Type" = CONST(Order)) Opportunity."No." WHERE("Contact No." = FIELD("Sell-to Contact No."),
                                                                                                                                                          "Sales Document No." = FIELD("No."),
                                                                                                                                                          "Sales Document Type" = CONST(Order));
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
        field(5751; "Shipped Not Invoiced"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Exist("Sales Line" WHERE("Document Type" = FIELD("Document Type"),
                                                    "Document No." = FIELD("No."),
                                                    "Qty. Shipped Not Invoiced" = FILTER(<> 0)));
            Caption = 'Shipped Not Invoiced';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5752; "Completely Shipped"; Boolean)
        {
            CalcFormula = Min("Sales Line"."Completely Shipped" WHERE("Document Type" = FIELD("Document Type"),
                                                                       "Document No." = FIELD("No."),
                                                                       Type = FILTER(<> " "),
                                                                       "Location Code" = FIELD("Location Filter")));
            Caption = 'Completely Shipped';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5753; "Posting from Whse. Ref."; Integer)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'Posting from Whse. Ref.';
        }
        field(5754; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(5755; Shipped; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Exist("Sales Line" WHERE("Document Type" = FIELD("Document Type"),
                                                    "Document No." = FIELD("No."),
                                                    "Qty. Shipped (Base)" = FILTER(<> 0)));
            Caption = 'Shipped';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5790; "Requested Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Requested Delivery Date';
        }
        field(5791; "Promised Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Promised Delivery Date';
        }
        field(5792; "Shipping Time"; DateFormula)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Shipping Time';
        }
        field(5793; "Outbound Whse. Handling Time"; DateFormula)
        {
            AccessByPermission = TableData "Warehouse Shipment Header" = R;
            Caption = 'Outbound Whse. Handling Time';
        }
        field(5794; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE("Shipping Agent Code" = FIELD("Shipping Agent Code"));
        }
        field(5795; "Late Order Shipping"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Exist("Sales Line" WHERE("Document Type" = FIELD("Document Type"),
                                                    "Sell-to Customer No." = FIELD("Sell-to Customer No."),
                                                    "Document No." = FIELD("No."),
                                                    "Shipment Date" = FIELD("Date Filter"),
                                                    "Outstanding Quantity" = FILTER(<> 0)));
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
            Editable = false;
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
        field(50001; PackageType; Code[10])
        {
            Caption = 'Verpackungsart';
            Description = '#AT';
            TableRelation = "Unit of Measure";
        }
        field(50002; PackageAmount; Decimal)
        {
            Caption = 'Verpackungsmenge';
            Description = '#AT';
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
            TableRelation = "Internal Job"."No." WHERE("Win/Loss" = CONST(" "));
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
        field(50007; "Order No."; Text[30])
        {
            Caption = 'Auftragsnummer';
            Description = '#AT';
        }
        field(50008; "Invoice No."; Text[30])
        {
            Caption = 'Rechnungsnummer';
            Description = '#AT';
        }
        field(50009; "Real.wahrscheinlichkeit"; Decimal)
        {
            Description = 'CC';
        }
        field(50010; "Zeilenrabatt ausblenden"; Boolean)
        {
            Description = '#AT';
        }
        field(50011; "Servicecontractno."; Code[10])
        {
            Caption = 'Servicevertragsnummer';
            Description = '#AT';
            Editable = false;
        }
        field(50012; Wiedervorlage; Date)
        {
            Description = '#AT';
        }
        field(50013; Blocked; Option)
        {
            CalcFormula = Lookup(Customer.Blocked WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Blocked';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Ship,Invoice,All';
            OptionMembers = " ",Ship,Invoice,All;
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
        field(50300; "Amount for Invoice Discount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line".Amount WHERE("Document Type" = FIELD("Document Type"),
                                                         "Document No." = FIELD("No."),
                                                         "Allow Invoice Disc." = CONST(true)));
            Caption = 'Amount for Invoice Discount';
            Description = 'P0008';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50310; "Amount Including VAT for InvD"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Amount Including VAT" WHERE("Document Type" = FIELD("Document Type"),
                                                                         "Document No." = FIELD("No."),
                                                                         "Allow Invoice Disc." = CONST(true)));
            Caption = 'Amount Including VAT for Invoice Discount';
            Editable = false;
            FieldClass = FlowField;
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
            OptionMembers = " ","Abruf gesperrt","Vorkasse vor Produktion gesperrt","Vorkasse vor Lieferung gesperrt",,,"in Zustellung",,,,Einlagerung,Feinabstimmung;
        }
        field(77000; Creationuser; Code[50])
        {
            Caption = 'Erstellungsnutzer';
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
            Description = '#AT';
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
        field(5012400; "Blanket Order Expiration Date"; Date)
        {
            Caption = 'Blanket Order Expiration Date';
            Description = '#PMW17.10.00.02:T108';
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
        field(5013400; "Building Site-to Code"; Code[10])
        {
            Caption = 'Building Site-to Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("Sell-to Customer No."));
        }
        field(5013401; "Building Site-to Name"; Text[50])
        {
            Caption = 'Building Site-to Name';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013402; "Building Site-to Name 2"; Text[50])
        {
            Caption = 'Building Site-to Name 2';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013403; "Building Site-to Address"; Text[50])
        {
            Caption = 'Building Site-to Address';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013404; "Building Site-to Address 2"; Text[50])
        {
            Caption = 'Building Site-to Address 2';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013405; "Building Site-to City"; Text[30])
        {
            Caption = 'Building Site-to City';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013406; "Building Site-to Contact"; Text[50])
        {
            Caption = 'Building Site-to Contact';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013407; "Building Site-to Post Code"; Code[20])
        {
            Caption = 'Building Site-to Post Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013408; "Building Site-to County"; Text[30])
        {
            Caption = 'Building Site-to County';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013409; "Building Site-to C/R Code"; Code[10])
        {
            Caption = 'Building Site-to Country/Region Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Country/Region";
        }
        field(5013410; "Salesperson Code 2"; Code[10])
        {
            Caption = 'Salesperson Code 2';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Salesperson/Purchaser";
        }
        field(5013500; "Advance Payment"; Boolean)
        {
            Caption = 'Advance Payment';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013520; "Advance Payment No."; Code[20])
        {
            Caption = 'Advance Payment No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = IF ("Advance Payment Type" = FILTER(> " " & < "Advance Payment Request Purchase")) "Adv. Payment Plan Header Sale"."No."
            ELSE
            IF ("Advance Payment Type" = FILTER(> "Alloc. Adv. Paym. Req. Sale")) "Adv. Payment Plan Header Pur."."No.";
        }
        field(5013530; "Advance Payment Type"; Option)
        {
            Caption = 'Advance Payment Type';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = ' ,Advance Payment Request Sale,Advance Payment Received,Advance Payment Debt,Partial Invoice Sale,Closing Invoice Sale,Alloc. Adv. Paym. Received,Alloc. Adv. Paym. Req. Sale,Advance Payment Request Purchase,Advance Payment Made,Advance Payment Receivable,Partial Invoice Purchase,Closing Invoice Purchase,Alloc. Adv. Paym. Made,Alloc. Adv. Paym. Req. Purchase';
            OptionMembers = " ","Advance Payment Request Sale","Advance Payment Received","Advance Payment Debt","Partial Invoice Sale","Closing Invoice Sale","Alloc. Adv. Paym. Received","Alloc. Adv. Paym. Req. Sale","Advance Payment Request Purchase","Advance Payment Made","Advance Payment Receivable","Partial Invoice Purchase","Closing Invoice Purchase","Alloc. Adv. Paym. Made","Alloc. Adv. Paym. Req. Purchase";
        }
        field(5013550; Secured; Boolean)
        {
            Caption = 'Secured';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013600; "Down Payment No. (inactive)"; Code[20])
        {
            Caption = 'Down Payment No. (inactive)';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
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
            TableRelation = Location WHERE("Use As - Rented" = CONST(true));
        }
        field(5072652; "Rental Rate Code"; Code[10])
        {
            Caption = 'Rental Rate Code';
            Description = '#RENW16.00:10-001';
            TableRelation = "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(true));
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
            Description = '#RENW16.00:10-001';
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
            Description = '#RENW16.00.01';
            TableRelation = Location WHERE("Use As Rental Location" = CONST(true));
        }
        field(5072673; "Leasing No."; Code[10])
        {
            Caption = 'Leasing No.';
            Description = '#RENW16.00.02:R154';
        }
        field(5072674; "Amount Rent"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Sales Line"."Amount Total Rental Time" WHERE("Document Type" = FIELD("Document Type"),
                                                                             "Document No." = FIELD("No.")));
            Caption = 'Amount';
            Description = '#RENW18.00:T102';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157894; "Payment Bank Code"; Code[10])
        {
            Caption = 'Payment Bank Code';
            Description = 'PMT';
            TableRelation = "Customer Bank Account".Code WHERE("Customer No." = FIELD("Bill-to Customer No."),
                                                                "Inserted by Bank Import" = CONST(false));
        }
        field(5157895; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
            Description = 'PMT';
            TableRelation = "Bank Account Mandate"."Mandate ID" WHERE("Account Type" = CONST(Customer),
                                                                       "Account No." = FIELD("Bill-to Customer No."));
        }
        field(5171652; "Scan Instruction"; Code[20])
        {
            Caption = 'Scan Instruction';
            Description = 'CSC8.00';
            TableRelation = "Scan Instruction".Code WHERE(Type = CONST(Customer));
        }
        field(5171655; "Scan complete"; Boolean)
        {
            Caption = 'Scan complete';
            Description = 'CSC8.00';
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Project No.';
            TableRelation = Job;
        }
        field(5483208; "Installment Template"; Code[10])
        {
            Caption = 'Installment Template';
            Description = 'INS';
        }
        field(5483209; "Installment Template Type"; Option)
        {
            Caption = 'Installment Template Type';
            Description = 'INS';
            OptionCaption = 'General,Customer,Vendor';
            OptionMembers = General,Customer,Vendor;
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.")
        {
            Clustered = true;
        }
        key(Key2; "No.", "Document Type")
        {
        }
        key(Key3; "Document Type", "Sell-to Customer No.")
        {
        }
        key(Key4; "Document Type", "Bill-to Customer No.")
        {
        }
        key(Key5; "Document Type", "Combine Shipments", "Bill-to Customer No.", "Currency Code", "EU 3-Party Trade", "Dimension Set ID")
        {
        }
        key(Key6; "Sell-to Customer No.", "External Document No.")
        {
        }
        key(Key7; "Document Type", "Sell-to Contact No.")
        {
        }
        key(Key8; "Bill-to Contact No.")
        {
        }
        key(Key9; "Incoming Document Entry No.")
        {
        }
        key(Key10; "Job No.", "Document Type", "No.")
        {
        }
        key(Key11; "Quote Expiration Date")
        {
        }
        key(Key12; "Leasing No.")
        {
        }
        key(Key13; "Internal Job No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "No.", "Sell-to Customer Name", Amount, "Sell-to Contact", "Amount Including VAT")
        {
        }
    }
}

