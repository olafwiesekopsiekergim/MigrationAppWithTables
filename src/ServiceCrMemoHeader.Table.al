table 5994 "Service Cr.Memo Header"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.05.13   OPplus Modules
    //                 - New Fields added
    // -----------------------------------------------------
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 30.06.14 DEMSR.SSZ
    //   #New Text Set ID fields and functions
    // 
    // #RENW16.00:10-001  19.04.2009  DEMSR.KHS
    //   Rental Fields
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW18.00.01.01:T500 30.10.15 DEMSR.KHS
    //   Wrong report opened on print
    // 
    // cc|dms (CCDMS)

    Caption = 'Service Cr.Memo Header';
    DataCaptionFields = "No.", Name;
    Permissions = TableData "Service Order Allocation" = rimd;

    fields
    {
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            NotBlank = true;
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
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(18; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
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
            Editable = false;
            TableRelation = "Customer Posting Group";
        }
        field(32; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
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
            CalcFormula = Exist ("Service Comment Line" WHERE ("Table Name" = CONST ("Service Cr.Memo Header"),
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
        field(61; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Service Cr.Memo Line"."Amount Including VAT" WHERE ("Document No." = FIELD ("No.")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
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
            TableRelation = "Post Code".City;
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
        field(88; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
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
        field(107; "Pre-Assigned No. Series"; Code[10])
        {
            Caption = 'Pre-Assigned No. Series';
            TableRelation = "No. Series";
        }
        field(108; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(111; "Pre-Assigned No."; Code[20])
        {
            Caption = 'Pre-Assigned No.';
        }
        field(112; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(113; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
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
        field(119; "VAT Base Discount %"; Decimal)
        {
            Caption = 'VAT Base Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(710; "Document Exchange Identifier"; Text[50])
        {
            Caption = 'Document Exchange Identifier';
        }
        field(711; "Document Exchange Status"; Option)
        {
            Caption = 'Document Exchange Status';
            OptionCaption = 'Not Sent,Sent to Document Exchange Service,Delivered to Recipient,Delivery Failed';
            OptionMembers = "Not Sent","Sent to Document Exchange Service","Delivered to Recipient","Delivery Failed";
        }
        field(712; "Doc. Exch. Original Identifier"; Text[50])
        {
            Caption = 'Doc. Exch. Original Identifier';
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
            CalcFormula = Sum ("Service Order Allocation"."Allocated Hours" WHERE ("Document Type" = CONST (Order),
                                                                                  "Document No." = FIELD ("No."),
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
            CalcFormula = Count ("Service Item Line" WHERE ("Document Type" = CONST (Order),
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
                                                                  "Document Type" = CONST (Order),
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
            CalcFormula = Count ("Service Order Allocation" WHERE ("Document Type" = CONST (Order),
                                                                  "Document No." = FIELD ("No."),
                                                                  "Resource No." = FIELD ("Resource Filter"),
                                                                  "Resource Group No." = FIELD ("Resource Group Filter"),
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
        field(50012; "Service Salesperson Code"; Code[10])
        {
            Caption = 'Service Salesperson Code';
            Description = '#AT';
            TableRelation = "Salesperson/Purchaser";
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
        field(42015200; "E-Bill Status"; Option)
        {
            CalcFormula = Lookup ("E-Bill Invoice Header".Status WHERE ("Document Type" = CONST ("Service Credit Memo"),
                                                                       "Document No." = FIELD ("No.")));
            Caption = 'E-Bill Status';
            Description = 'EBST1.0.0.0';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,To Send,Sent,Viewed,Printed,Paid,Rejected,Cancelled,Completed';
            OptionMembers = " ","To Send",Sent,Viewed,Printed,Paid,Rejected,Cancelled,Completed;
        }
        field(42015201; "E-Bill Comment"; Text[250])
        {
            CalcFormula = Lookup ("E-Bill Invoice Header".Comment WHERE ("Document Type" = CONST ("Service Credit Memo"),
                                                                        "Document No." = FIELD ("No.")));
            Caption = 'E-Bill Comment';
            Description = 'EBST1.0.0.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42015202; "E-Bill"; Boolean)
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
        key(Key2; "Customer No.")
        {
        }
        key(Key3; "Contract No.", "Posting Date")
        {
        }
        key(Key4; "Response Date", "Response Time", Priority)
        {
        }
        key(Key5; Priority, "Response Date", "Response Time")
        {
        }
        key(Key6; "Rental Mgt. Document")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Customer No.", "Bill-to Customer No.", "Contract No.", "Posting Date")
        {
        }
    }
}

