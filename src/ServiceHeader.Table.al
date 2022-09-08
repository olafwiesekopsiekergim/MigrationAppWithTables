table 5900 "Service Header"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.05.13   OPplus Modules
    //                 - New Fields added
    // -----------------------------------------------------
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Key:
    //                                     - Job No.,Job Line Unique No.
    //                                     - Job Procurement No.
    // :DMW14.04:1:01 #Checklist
    // :DMW15.01.00.01:6:01 #corrected code structure
    // :DMW15.02:64:01 #new key: "Checklist No."
    // :DMW16.00.01:76:01 #New fields for Building Side Adress and a second Sales Person (field ID's 5013400..5013410)
    // #DMW16.00.03.03:A008 27.03.12 DEMSR.SSZ
    //   #Field Sales Person 2: deleted test in ApprovalEntry because its not needed in Service Header (corrected :DMW16.00.01:76:01)
    // #DMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new fields 5060600 and 5060601 for Text Module using Set ID
    // 
    // #RENW16.00:10-001  03.04.2009  DEMSR.KHS
    //   "Next Stack No to Invoice","Rental Mgt. Document","Rent Order No.","Rent Order Line No."
    // 
    // #RENW16.00.00.01:T509 08.07.09 DEMSR.KHS
    //   Deleting the Customer No. in Rental Docs made the document disappear
    // 
    // #RENW16.00.00.02:T505 22.07.09 DEMSR.KHS
    //   Prevent the user from deleting single invoice Lines (Rental)
    // 
    // #RENW16.00.00.02:T506 22.07.09 DEMSR.KHS
    //   Posting No.Series wrong in Rental inv / Cr. Memo
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // #RENW16.00.01.02:T518 06.05.10 DEMSR.KHS
    //   Error in Service Invoice when Rental Setup not exists
    // 
    // #RENW17.00 08.01.13 DEMSR.KHS
    //   Invoice deletion with multiple periods failed
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    //  #RENW17.10.00.01:T506 10.12.13 DEMSR.KHS
    //    Add Source Code for Rental Management
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // cc|formatted documents (CCFD)

    Caption = 'Service Header';
    DataCaptionFields = "No.", Name, Description;
    Permissions = TableData "Loaner Entry" = d,
                  TableData "Service Order Allocation" = rimd;

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo";
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
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
            TableRelation = IF ("Bill-to Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Bill-to Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Bill-to Country/Region Code"));
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
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
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
            TableRelation = IF ("Ship-to Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Ship-to Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Ship-to Country/Region Code"));
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
            NotBlank = true;
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
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
            TableRelation = Location;
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
        field(46; Comment; Boolean)
        {
            CalcFormula = Exist ("Service Comment Line" WHERE ("Table Name" = CONST ("Service Header"),
                                                              "Table Subtype" = FIELD ("Document Type"),
                                                              "No." = FIELD ("No."),
                                                              Type = CONST (General)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            Editable = false;
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
            TableRelation = "Service Shipment Header";
        }
        field(65; "Last Posting No."; Code[20])
        {
            Caption = 'Last Posting No.';
            Editable = false;
            TableRelation = "Service Invoice Header";
        }
        field(70; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
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
        field(79; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(80; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(81; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(82; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(83; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(84; "Contact Name"; Text[50])
        {
            Caption = 'Contact Name';
        }
        field(85; "Bill-to Post Code"; Code[20])
        {
            Caption = 'Bill-to Post Code';
            TableRelation = IF ("Bill-to Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Bill-to Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Bill-to Country/Region Code"));
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
        field(88; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(89; County; Text[30])
        {
            Caption = 'County';
        }
        field(90; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(91; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = IF ("Ship-to Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Ship-to Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Ship-to Country/Region Code"));
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
            OptionCaption = 'Pending,In Process,Finished,On Hold';
            OptionMembers = Pending,"In Process",Finished,"On Hold";
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
        field(130; "Release Status"; Option)
        {
            Caption = 'Release Status';
            Editable = false;
            OptionCaption = 'Open,Released to Ship';
            OptionMembers = Open,"Released to Ship";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5052; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact;
        }
        field(5053; "Bill-to Contact No."; Code[20])
        {
            Caption = 'Bill-to Contact No.';
            TableRelation = Contact;
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5750; "Shipping Advice"; Option)
        {
            Caption = 'Shipping Advice';
            OptionCaption = 'Partial,Complete';
            OptionMembers = Partial,Complete;
        }
        field(5752; "Completely Shipped"; Boolean)
        {
            CalcFormula = Min ("Service Line"."Completely Shipped" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                         "Document No." = FIELD ("No."),
                                                                         Type = FILTER (<> " "),
                                                                         "Location Code" = FIELD ("Location Filter")));
            Caption = 'Completely Shipped';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5754; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location.Code;
        }
        field(5792; "Shipping Time"; DateFormula)
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Time';
        }
        field(5794; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE ("Shipping Agent Code" = FIELD ("Shipping Agent Code"));
        }
        field(5796; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5902; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5904; "Service Order Type"; Code[10])
        {
            Caption = 'Service Order Type';
            TableRelation = "Service Order Type";
        }
        field(5905; "Link Service to Service Item"; Boolean)
        {
            Caption = 'Link Service to Service Item';
        }
        field(5907; Priority; Option)
        {
            Caption = 'Priority';
            Editable = false;
            OptionCaption = 'Low,Medium,High';
            OptionMembers = Low,Medium,High;
        }
        field(5911; "Allocated Hours"; Decimal)
        {
            CalcFormula = Sum ("Service Order Allocation"."Allocated Hours" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                                  "Document No." = FIELD ("No."),
                                                                                  "Allocation Date" = FIELD ("Date Filter"),
                                                                                  "Resource No." = FIELD ("Resource Filter"),
                                                                                  Status = FILTER (Active | Finished),
                                                                                  "Resource Group No." = FIELD ("Resource Group Filter")));
            Caption = 'Allocated Hours';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5915; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(5916; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(5917; "Phone No. 2"; Text[30])
        {
            Caption = 'Phone No. 2';
            ExtendedDatatype = PhoneNo;
        }
        field(5918; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(5921; "No. of Unallocated Items"; Integer)
        {
            CalcFormula = Count ("Service Item Line" WHERE ("Document Type" = FIELD ("Document Type"),
                                                           "Document No." = FIELD ("No."),
                                                           "No. of Active/Finished Allocs" = CONST (0)));
            Caption = 'No. of Unallocated Items';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5923; "Order Time"; Time)
        {
            Caption = 'Order Time';
            NotBlank = true;
        }
        field(5924; "Default Response Time (Hours)"; Decimal)
        {
            Caption = 'Default Response Time (Hours)';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5925; "Actual Response Time (Hours)"; Decimal)
        {
            Caption = 'Actual Response Time (Hours)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(5926; "Service Time (Hours)"; Decimal)
        {
            Caption = 'Service Time (Hours)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5927; "Response Date"; Date)
        {
            Caption = 'Response Date';
            Editable = false;
        }
        field(5928; "Response Time"; Time)
        {
            Caption = 'Response Time';
            Editable = false;
        }
        field(5929; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(5930; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(5931; "Finishing Date"; Date)
        {
            Caption = 'Finishing Date';
        }
        field(5932; "Finishing Time"; Time)
        {
            Caption = 'Finishing Time';
        }
        field(5933; "Contract Serv. Hours Exist"; Boolean)
        {
            CalcFormula = Exist ("Service Hour" WHERE ("Service Contract No." = FIELD ("Contract No.")));
            Caption = 'Contract Serv. Hours Exist';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5934; "Reallocation Needed"; Boolean)
        {
            CalcFormula = Exist ("Service Order Allocation" WHERE (Status = CONST ("Reallocation Needed"),
                                                                  "Resource No." = FIELD ("Resource Filter"),
                                                                  "Document Type" = FIELD ("Document Type"),
                                                                  "Document No." = FIELD ("No."),
                                                                  "Resource Group No." = FIELD ("Resource Group Filter")));
            Caption = 'Reallocation Needed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5936; "Notify Customer"; Option)
        {
            Caption = 'Notify Customer';
            OptionCaption = 'No,By Phone 1,By Phone 2,By Fax,By E-Mail';
            OptionMembers = No,"By Phone 1","By Phone 2","By Fax","By E-Mail";
        }
        field(5937; "Max. Labor Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Max. Labor Unit Price';
        }
        field(5938; "Warning Status"; Option)
        {
            Caption = 'Warning Status';
            OptionCaption = ' ,First Warning,Second Warning,Third Warning';
            OptionMembers = " ","First Warning","Second Warning","Third Warning";
        }
        field(5939; "No. of Allocations"; Integer)
        {
            CalcFormula = Count ("Service Order Allocation" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                  "Document No." = FIELD ("No."),
                                                                  "Resource No." = FIELD ("Resource Filter"),
                                                                  "Resource Group No." = FIELD ("Resource Group Filter"),
                                                                  "Allocation Date" = FIELD ("Date Filter"),
                                                                  Status = FILTER (Active | Finished)));
            Caption = 'No. of Allocations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5940; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract),
                                                                            "Customer No." = FIELD ("Customer No."),
                                                                            "Ship-to Code" = FIELD ("Ship-to Code"),
                                                                            "Bill-to Customer No." = FIELD ("Bill-to Customer No."));
        }
        field(5951; "Type Filter"; Option)
        {
            Caption = 'Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Resource,Item,Service Cost,Service Contract';
            OptionMembers = " ",Resource,Item,"Service Cost","Service Contract";
        }
        field(5952; "Customer Filter"; Code[20])
        {
            Caption = 'Customer Filter';
            FieldClass = FlowFilter;
            TableRelation = Customer."No.";
        }
        field(5953; "Resource Filter"; Code[20])
        {
            Caption = 'Resource Filter';
            FieldClass = FlowFilter;
            TableRelation = Resource;
        }
        field(5954; "Contract Filter"; Code[20])
        {
            Caption = 'Contract Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract));
        }
        field(5955; "Ship-to Fax No."; Text[30])
        {
            Caption = 'Ship-to Fax No.';
        }
        field(5956; "Ship-to E-Mail"; Text[80])
        {
            Caption = 'Ship-to E-Mail';
            ExtendedDatatype = EMail;
        }
        field(5957; "Resource Group Filter"; Code[20])
        {
            Caption = 'Resource Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Resource Group";
        }
        field(5958; "Ship-to Phone"; Text[30])
        {
            Caption = 'Ship-to Phone';
            ExtendedDatatype = PhoneNo;
        }
        field(5959; "Ship-to Phone 2"; Text[30])
        {
            Caption = 'Ship-to Phone 2';
            ExtendedDatatype = PhoneNo;
        }
        field(5966; "Service Zone Filter"; Code[10])
        {
            Caption = 'Service Zone Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Zone".Code;
        }
        field(5968; "Service Zone Code"; Code[10])
        {
            Caption = 'Service Zone Code';
            Editable = false;
            TableRelation = "Service Zone".Code;
        }
        field(5981; "Expected Finishing Date"; Date)
        {
            Caption = 'Expected Finishing Date';
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            TableRelation = "User Setup";
        }
        field(9001; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
        }
        field(50002; SignatureName; Text[50])
        {
            Caption = 'Name Signature';
            Description = '#AT';
        }
        field(50003; "Qty Service Items"; Integer)
        {
            CalcFormula = Count ("Service Item Line" WHERE ("Document No." = FIELD ("No."),
                                                           "Document Type" = FIELD ("Document Type")));
            Caption = 'Qty Service Items';
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50010; InternerKommentar; Integer)
        {
            CalcFormula = Count ("Service Comment Line" WHERE ("No." = FIELD ("No."),
                                                              Type = CONST (Internal)));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50012; "Service Salesperson Code"; Code[10])
        {
            Caption = 'Service Salesperson Code';
            Description = '#AT';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50020; "Quote Expiration Date"; Date)
        {
            Caption = 'Quote Expiration Date';
            Description = '#AT';
        }
        field(50030; "fix Termin-Lieferung"; Text[20])
        {
            Description = '#AT';
        }
        field(50031; "External Document No."; Code[35])
        {
            Description = '#AT';
        }
        field(50032; "PO Date"; Date)
        {
            Description = '#AT';
        }
        field(50400; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Description = '#AT';
            Editable = false;
        }
        field(50401; Creationuser; Code[50])
        {
            Caption = 'Erstellungsnutzer';
            Description = '#AT';
            TableRelation = User;
        }
        field(50500; Amount; Decimal)
        {
            CalcFormula = Sum ("Service Line".Amount WHERE ("Document Type" = FIELD ("Document Type"),
                                                           "Document No." = FIELD ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013400; "Checklist No."; Code[20])
        {
            Caption = 'Checklist No.';
            Description = ':DMW14.04:1:01';
            TableRelation = "Checklist Header"."No.";
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
        field(5013411; "Building Site-to Code"; Code[10])
        {
            Caption = 'Building Site-to Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
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
        field(5072650; "Next Stack No to Invoice"; Integer)
        {
            Caption = 'Next Stack No to Invoice';
            Description = '#RENW16.00:10-001';
        }
        field(5072651; "Rental Mgt. Document"; Boolean)
        {
            Caption = 'Rental Mgt. Document';
            Description = '#RENW16.00:10-001';
        }
        field(5072652; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            Description = '#RENW16.00:10-001';
        }
        field(5072653; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
            Description = '#RENW16.00:10-001';
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
        field(5292333; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292334; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292335; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5107970),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Job Line Unique No."),
                                                               Type = CONST (Support)));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292336; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
        field(5292337; "Total Direct Cost Proc. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost Proc. (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5305932; "FD Blob"; BLOB)
        {
            Caption = 'FD Blob';
            Description = 'CCFD';
        }
        field(42014822; "GPS Latitude"; Decimal)
        {
            Caption = 'GPS Latitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
            Editable = false;
        }
        field(42014823; "GPS Longitude"; Decimal)
        {
            Caption = 'GPS Longitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
            Editable = false;
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
        key(Key3; "Customer No.", "Order Date")
        {
        }
        key(Key4; "Contract No.", Status, "Posting Date")
        {
        }
        key(Key5; Status, "Response Date", "Response Time", Priority)
        {
        }
        key(Key6; Status, Priority, "Response Date", "Response Time")
        {
        }
        key(Key7; "Document Type", "Customer No.", "Order Date")
        {
            MaintainSQLIndex = false;
        }
        key(Key8; "Job No.", "Job Line Unique No.")
        {
        }
        key(Key9; "Job Procurement No.")
        {
        }
        key(Key10; "Document Type", Status, "Response Date", "Responsibility Center")
        {
        }
        key(Key11; "Checklist No.")
        {
        }
        key(Key12; "Order Date")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Document Type", "No.", "Customer No.", "Posting Date", Status)
        {
        }
    }
}

