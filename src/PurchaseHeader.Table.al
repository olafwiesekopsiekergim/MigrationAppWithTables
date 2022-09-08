table 38 "Purchase Header"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.11.08   OPplus Module
    //                 - New Fields added
    // INS  24.11.16       OPplus Installments
    // -----------------------------------------------------
    // P0012 29.02.16 DEBIE.NNE Function RecreatePurchLines changed (New 50012 field Position).
    // P0014 25.02.16 CCBIE.NNE New Field 77000 "Sachbearbeiter". Function InitRecord changed.
    // P0013 25.02.16 CCBIE.NNE New Field 50400 "RegistrierNr".
    // P0010 25.02.16 CCBIE.NNE New Field 50014 "Our Account No."
    // CSC8.00:
    //   New Fields
    //     Scan Instruction
    //     Scan complete
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // PR02 PRODUKT.01:AMP0015 12.06.15 DENUE.SKOL Integration Textmodule
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        New Key: "Document Type","Main Job No.","Quote Date"
    //                                        CaptionML(ENU/DEU) of Field "Main Job No." renamed from "Main Job No." to "Project No."
    // 
    // :DMW13.60:1:01 #Verwaltung des Textmoduls
    // :DMW14.03:1:01 #Beistellungsbelege mit löschen
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // :DMW15.01.00.01:6:01 #Completed Captions
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW16.00:A1202         27.11.09 DEMSR.AM Text Module Call if "Buy-from Vendor No." is inserted by filter
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00.01.01:T505 10.06.11 DEMSR.SSZ
    //   #If "Buy-from Contact No." is filled out, manage Standard Text, too
    // #TMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7 (replaced FORM with PAGE)
    // #TMW17.00.00.01:A001 08.04.13 DEMSR.SSZ
    //   #Don't delete text when changing Buy-from Contact No. and Buy-from Vendor isn't empty.
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new fields 5060600 and 5060601 for Text Module using Set ID
    // #TMW18.00.00.01:T500 02.02.15 DEMSR.SSZ
    //   #Show PopUp Text when filter is set to "Sell-to Customer No." or "Buy-from Contact No."
    // 
    // #QMW16.00.00.01:T502 28.08.09 DEMSR.KHS
    //   VR: Arrival Date not updated on shipment
    // 
    // #QMW16.00.01:R255    10.11.09 DEMSR.KHS
    //   Connection to Complaint
    // 
    // #QMW16.00.02.06:T524 03.05.11 DEMSR.KHS
    //   Caption field "Test Order No." corrected
    // 
    // #VRW17.00.00.02:T102 06.05.13 DEMSR.KHS
    //   Update comments to VR
    // 
    // #VRW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RENW16.00.01:R055 12.10.09 DEMSR.KHS
    //   3rd Party Rental
    // 
    // #RENW17.10.00.01:T506 10.12.13 DEMSR.KHS
    //   Add Source Code Rental Management
    // 
    // #RENW17.00.00.02:T101 29.05.13 DEMSR.KHS
    //   Update Object IDs
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List
    // #AMPW17.10.01:T099 05.05.14 DEMSR.SSZ
    //   LicPermission record variable for different modules
    // 
    // #FDW19.00.00.01:T500 11.11.15 DEDRS.WHEG
    //   Removed FD Demo Integration from AMP NAV 2016

    Caption = 'Purchase Header';
    DataCaptionFields = "No.", "Buy-from Vendor Name";

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(2; "Buy-from Vendor No."; Code[20])
        {
            Caption = 'Buy-from Vendor No.';
            TableRelation = Vendor;
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(4; "Pay-to Vendor No."; Code[20])
        {
            Caption = 'Pay-to Vendor No.';
            NotBlank = true;
            TableRelation = Vendor;
        }
        field(5; "Pay-to Name"; Text[50])
        {
            Caption = 'Pay-to Name';
        }
        field(6; "Pay-to Name 2"; Text[50])
        {
            Caption = 'Pay-to Name 2';
        }
        field(7; "Pay-to Address"; Text[50])
        {
            Caption = 'Pay-to Address';
        }
        field(8; "Pay-to Address 2"; Text[50])
        {
            Caption = 'Pay-to Address 2';
        }
        field(9; "Pay-to City"; Text[30])
        {
            Caption = 'Pay-to City';
            TableRelation = IF ("Pay-to Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Pay-to Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Pay-to Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Pay-to Contact"; Text[50])
        {
            Caption = 'Pay-to Contact';
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
            TableRelation = IF ("Ship-to Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Ship-to Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Ship-to Country/Region Code"));
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
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Order Date';
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(21; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
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
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
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
        field(31; "Vendor Posting Group"; Code[10])
        {
            Caption = 'Vendor Posting Group';
            Editable = false;
            TableRelation = "Vendor Posting Group";
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
        field(35; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(37; "Invoice Disc. Code"; Code[20])
        {
            Caption = 'Invoice Disc. Code';
        }
        field(41; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(43; "Purchaser Code"; Code[10])
        {
            Caption = 'Purchaser Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(45; "Order Class"; Code[10])
        {
            Caption = 'Order Class';
        }
        field(46; Comment; Boolean)
        {
            CalcFormula = Exist("Purch. Comment Line" WHERE("Document Type" = FIELD("Document Type"),
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
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = FIELD("Document Type"),
                                                       "Document No." = FIELD("No."),
                                                       "Recalculate Invoice Disc." = CONST(true)));
            Caption = 'Recalculate Invoice Disc.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; Receive; Boolean)
        {
            Caption = 'Receive';
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
            CalcFormula = Sum("Purchase Line".Amount WHERE("Document Type" = FIELD("Document Type"),
                                                            "Document No." = FIELD("No.")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Amount Including VAT" WHERE("Document Type" = FIELD("Document Type"),
                                                                            "Document No." = FIELD("No.")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Receiving No."; Code[20])
        {
            Caption = 'Receiving No.';
        }
        field(63; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
        }
        field(64; "Last Receiving No."; Code[20])
        {
            Caption = 'Last Receiving No.';
            Editable = false;
            TableRelation = "Purch. Rcpt. Header";
        }
        field(65; "Last Posting No."; Code[20])
        {
            Caption = 'Last Posting No.';
            Editable = false;
            TableRelation = "Purch. Inv. Header";
        }
        field(66; "Vendor Order No."; Code[35])
        {
            Caption = 'Vendor Order No.';
        }
        field(67; "Vendor Shipment No."; Code[35])
        {
            Caption = 'Vendor Shipment No.';
        }
        field(68; "Vendor Invoice No."; Code[35])
        {
            Caption = 'Vendor Invoice No.';
        }
        field(69; "Vendor Cr. Memo No."; Code[35])
        {
            Caption = 'Vendor Cr. Memo No.';
        }
        field(70; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(72; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
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
        field(79; "Buy-from Vendor Name"; Text[50])
        {
            Caption = 'Buy-from Vendor Name';
        }
        field(80; "Buy-from Vendor Name 2"; Text[50])
        {
            Caption = 'Buy-from Vendor Name 2';
        }
        field(81; "Buy-from Address"; Text[50])
        {
            Caption = 'Buy-from Address';
        }
        field(82; "Buy-from Address 2"; Text[50])
        {
            Caption = 'Buy-from Address 2';
        }
        field(83; "Buy-from City"; Text[30])
        {
            Caption = 'Buy-from City';
            TableRelation = IF ("Buy-from Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Buy-from Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Buy-from Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(84; "Buy-from Contact"; Text[50])
        {
            Caption = 'Buy-from Contact';
        }
        field(85; "Pay-to Post Code"; Code[20])
        {
            Caption = 'Pay-to Post Code';
            TableRelation = IF ("Pay-to Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Pay-to Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Pay-to Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(86; "Pay-to County"; Text[30])
        {
            Caption = 'Pay-to County';
        }
        field(87; "Pay-to Country/Region Code"; Code[10])
        {
            Caption = 'Pay-to Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(88; "Buy-from Post Code"; Code[20])
        {
            Caption = 'Buy-from Post Code';
            TableRelation = IF ("Buy-from Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Buy-from Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Buy-from Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(89; "Buy-from County"; Text[30])
        {
            Caption = 'Buy-from County';
        }
        field(90; "Buy-from Country/Region Code"; Code[10])
        {
            Caption = 'Buy-from Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(91; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = IF ("Ship-to Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Ship-to Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Ship-to Country/Region Code"));
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
        field(95; "Order Address Code"; Code[10])
        {
            Caption = 'Order Address Code';
            TableRelation = "Order Address".Code WHERE("Vendor No." = FIELD("Buy-from Vendor No."));
        }
        field(97; "Entry Point"; Code[10])
        {
            Caption = 'Entry Point';
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
        field(109; "Receiving No. Series"; Code[10])
        {
            Caption = 'Receiving No. Series';
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
        field(125; "Buy-from IC Partner Code"; Code[20])
        {
            Caption = 'Buy-from IC Partner Code';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(126; "Pay-to IC Partner Code"; Code[20])
        {
            Caption = 'Pay-to IC Partner Code';
            Editable = false;
            TableRelation = "IC Partner";
        }
        field(129; "IC Direction"; Option)
        {
            Caption = 'IC Direction';
            OptionCaption = 'Outgoing,Incoming';
            OptionMembers = Outgoing,Incoming;
        }
        field(130; "Prepayment No."; Code[20])
        {
            Caption = 'Prepayment No.';
        }
        field(131; "Last Prepayment No."; Code[20])
        {
            Caption = 'Last Prepayment No.';
            TableRelation = "Purch. Inv. Header";
        }
        field(132; "Prepmt. Cr. Memo No."; Code[20])
        {
            Caption = 'Prepmt. Cr. Memo No.';
        }
        field(133; "Last Prepmt. Cr. Memo No."; Code[20])
        {
            Caption = 'Last Prepmt. Cr. Memo No.';
            TableRelation = "Purch. Cr. Memo Hdr.";
        }
        field(134; "Prepayment %"; Decimal)
        {
            Caption = 'Prepayment %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(135; "Prepayment No. Series"; Code[10])
        {
            Caption = 'Prepayment No. Series';
            TableRelation = "No. Series";
        }
        field(136; "Compress Prepayment"; Boolean)
        {
            Caption = 'Compress Prepayment';
            InitValue = true;
        }
        field(137; "Prepayment Due Date"; Date)
        {
            Caption = 'Prepayment Due Date';
        }
        field(138; "Prepmt. Cr. Memo No. Series"; Code[10])
        {
            Caption = 'Prepmt. Cr. Memo No. Series';
            TableRelation = "No. Series";
        }
        field(139; "Prepmt. Posting Description"; Text[50])
        {
            Caption = 'Prepmt. Posting Description';
        }
        field(142; "Prepmt. Pmt. Discount Date"; Date)
        {
            Caption = 'Prepmt. Pmt. Discount Date';
        }
        field(143; "Prepmt. Payment Terms Code"; Code[10])
        {
            Caption = 'Prepmt. Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(144; "Prepmt. Payment Discount %"; Decimal)
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
        field(170; "Creditor No."; Code[20])
        {
            Caption = 'Creditor No.';
            Numeric = true;
        }
        field(171; "Payment Reference"; Code[50])
        {
            Caption = 'Payment Reference';
            Numeric = true;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(1305; "Invoice Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Inv. Discount Amount" WHERE("Document No." = FIELD("No."),
                                                                            "Document Type" = FIELD("Document Type")));
            Caption = 'Invoice Discount Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5043; "No. of Archived Versions"; Integer)
        {
            CalcFormula = Max("Purchase Header Archive"."Version No." WHERE("Document Type" = FIELD("Document Type"),
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
        field(5052; "Buy-from Contact No."; Code[20])
        {
            Caption = 'Buy-from Contact No.';
            TableRelation = Contact;
        }
        field(5053; "Pay-to Contact No."; Code[20])
        {
            Caption = 'Pay-to Contact No.';
            TableRelation = Contact;
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5752; "Completely Received"; Boolean)
        {
            CalcFormula = Min("Purchase Line"."Completely Received" WHERE("Document Type" = FIELD("Document Type"),
                                                                           "Document No." = FIELD("No."),
                                                                           Type = FILTER(<> " "),
                                                                           "Location Code" = FIELD("Location Filter")));
            Caption = 'Completely Received';
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
        field(5790; "Requested Receipt Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Requested Receipt Date';
        }
        field(5791; "Promised Receipt Date"; Date)
        {
            Caption = 'Promised Receipt Date';
        }
        field(5792; "Lead Time Calculation"; DateFormula)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Lead Time Calculation';
        }
        field(5793; "Inbound Whse. Handling Time"; DateFormula)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'Inbound Whse. Handling Time';
        }
        field(5796; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5800; "Vendor Authorization No."; Code[35])
        {
            Caption = 'Vendor Authorization No.';
        }
        field(5801; "Return Shipment No."; Code[20])
        {
            Caption = 'Return Shipment No.';
        }
        field(5802; "Return Shipment No. Series"; Code[10])
        {
            Caption = 'Return Shipment No. Series';
            TableRelation = "No. Series";
        }
        field(5803; Ship; Boolean)
        {
            Caption = 'Ship';
        }
        field(5804; "Last Return Shipment No."; Code[20])
        {
            Caption = 'Last Return Shipment No.';
            Editable = false;
            TableRelation = "Return Shipment Header";
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            TableRelation = "User Setup";
        }
        field(9001; "Pending Approvals"; Integer)
        {
            CalcFormula = Count("Approval Entry" WHERE("Table ID" = CONST(38),
                                                        "Document Type" = FIELD("Document Type"),
                                                        "Document No." = FIELD("No."),
                                                        Status = FILTER(Open | Created)));
            Caption = 'Pending Approvals';
            FieldClass = FlowField;
        }
        field(11000; "Registration No."; Text[20])
        {
            Caption = 'Registration No.';
        }
        field(50001; "Confirmation received"; Boolean)
        {
            Caption = 'Bestätigung erhalten';
            Editable = false;
        }
        field(50014; "Our Account No."; Text[20])
        {
            Caption = 'Our Account No.';
            Description = 'P0010';
        }
        field(50400; RegistrierNr; Code[20])
        {
            Caption = 'Registration No.';
            Description = 'P0013 - Anbindung an D3';
            Numeric = true;
        }
        field(50401; Genehmigungsstatus; Option)
        {
            CalcFormula = Max("Approval Entry".Status WHERE("Table ID" = CONST(38),
                                                             "Document Type" = FIELD("Document Type"),
                                                             "Document No." = FIELD("No.")));
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Created,Open,Canceled,Rejected,Approved';
            OptionMembers = Created,Open,Canceled,Rejected,Approved;
        }
        field(77000; Sachbearbeiter; Code[50])
        {
            Description = 'P0014';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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
        field(5034550; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Description = '#QMW16.00.01:R255';
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
        field(5072650; "Rental Mgt. Document"; Boolean)
        {
            CalcFormula = Exist("Purchase Line" WHERE("Document Type" = FIELD("Document Type"),
                                                       "Document No." = FIELD("No."),
                                                       "Rental Mgt. Document" = CONST(true)));
            Caption = 'Rental Mgt. Document';
            Description = '#RENW16.00.01:R055';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072651; "Rent Return No."; Code[20])
        {
            Caption = 'Rent Return No.';
            Description = '#RENW16.00.01:R055';
        }
        field(5072652; "Last Rent Return No."; Code[20])
        {
            Caption = 'Last Rent Return No.';
            Description = '#RENW16.00.01:R055';
            Editable = false;
            TableRelation = "Purch. Rcpt. Header";
        }
        field(5072653; "Rent Return No. Series"; Code[10])
        {
            Caption = 'Rent Return No. Series';
            Description = '#RENW16.00.01:R055';
            TableRelation = "No. Series";
        }
        field(5157882; "Invoice Entrance Date"; Date)
        {
            Caption = 'Document Entrance Date';
            Description = 'TAX';
        }
        field(5157894; "Payment Bank Code"; Code[10])
        {
            Caption = 'Payment Bank Code';
            Description = 'PMT';
            TableRelation = "Vendor Bank Account".Code WHERE("Vendor No." = FIELD("Pay-to Vendor No."),
                                                              "Inserted by Bank Import" = CONST(false));
        }
        field(5157895; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
            Description = 'PMT';
            TableRelation = "Bank Account Mandate"."Mandate ID" WHERE("Account Type" = CONST(Vendor),
                                                                       "Account No." = FIELD("Pay-to Vendor No."));
        }
        field(5157960; "Customer Reference No."; Code[23])
        {
            Caption = 'Customer Reference No.';
            CharAllowed = '0123456789';
            Description = 'PMT';
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
        field(5292332; "Direct Job Shipment"; Boolean)
        {
            Caption = 'Direct Job Shipment';
        }
        field(5292333; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(5292340; "Expected Quote Date"; Date)
        {
            Caption = 'Expected Quote Date';
        }
        field(5292341; "Quote Date"; Date)
        {
            Caption = 'Quote Date';
        }
        field(5292342; "Job Vendor Quote No."; Text[50])
        {
            Caption = 'Vendor Quote No.';
        }
        field(5292343; "Order Confirmation Required"; Boolean)
        {
            Caption = 'Order Confirmation Required';
        }
        field(5292344; "Order Confirmation Date"; Date)
        {
            Caption = 'Order Confirmation Date';
        }
        field(5292345; "Order Confirmation No."; Text[50])
        {
            Caption = 'Order Confirmation No.';
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Project No.';
            TableRelation = Job;
        }
        field(5292650; "Deduction (Amount)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Deduction (Amount)';
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
        key(Key3; "Document Type", "Buy-from Vendor No.")
        {
        }
        key(Key4; "Document Type", "Pay-to Vendor No.")
        {
        }
        key(Key5; "Buy-from Vendor No.")
        {
        }
        key(Key6; "Incoming Document Entry No.")
        {
        }
        key(Key7; "Document Type", "Main Job No.", "Quote Date")
        {
        }
    }

    fieldgroups
    {
    }
}

