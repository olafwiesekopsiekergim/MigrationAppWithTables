table 5940 "Service Item"
{
    // #RENW16.00.01:R059    12.10.09 DEMSR.KHS
    //   Divide Items into Types: Item, Machine, Supplementary Part, Machine Component
    // 
    // #RENW16.00.01:R170    15.10.09 DEMSR.KHS
    //   Internal Service Order
    // 
    // #RENW16.00.01.01:T504 03.02.10 DEMSR.KHS
    //   The Extended Data Type for the "Internet Link" Field was not set to URL
    // 
    // #RENW16.00.01.02:T513 06.04.10 DEMSR.KHS
    //   Separate Rental Revenue from Service Revenue
    // 
    // #RENW16.00.01.02:T519 06.05.10 DEMSR.KHS
    //   Wrong Table Relation in Color Fields
    // 
    // #RENW16.00.02:R062    27.08.10 DEMSR.KHS
    //   Connecting Machines to Fixed Assets
    //   New field: "Fixed Asset No."
    // 
    // #RENW17.00 26.06.12 DEMSR.KHS
    //   Add field: "Default Rent Cost"
    //   Captions changed External Color, Internal Color
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.02:T513 15.04.14 DEMSR.KHS
    //   Update License Checks
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :DMW14.00:1:01 #neue Felder: 5013400,5013410,5013420,5013430
    // :DMW14.04:1:01 #new FlowField: 5013450 "Service BOM exists", Completed the Delete-Function,
    //  # new fields "Document Checklist No.", "Service Item Checklist"
    // :DMW14.04:1:02 #DMW14.00-01 editable = false und translated
    // :DMW15.02:64:01 #new key: "Service Item Checklist"
    // :DMW16.00.01:76:01 #New fields for Building Side Adress (field ID's 5013470..5013479)
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // #DMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Service Item';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(3; "Service Item Group Code"; Code[10])
        {
            Caption = 'Service Item Group Code';
            TableRelation = "Service Item Group";
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Own Service Item,Installed,Temporarily Installed,Defective,not available';
            OptionMembers = " ","Own Service Item",Installed,"Temporarily Installed",Defective," not available";
        }
        field(7; Priority; Option)
        {
            Caption = 'Priority';
            OptionCaption = 'Low,Medium,High';
            OptionMembers = Low,Medium,High;
        }
        field(8; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
            ValidateTableRelation = true;
        }
        field(9; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(11; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            "Unit of Measure";
        }
        field(12; "Location of Service Item"; Text[30])
        {
            Caption = 'Location of Service Item';
        }
        field(13; "Sales Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Sales Unit Price';
        }
        field(14; "Sales Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Sales Unit Cost';
        }
        field(15; "Warranty Starting Date (Labor)"; Date)
        {
            Caption = 'Warranty Starting Date (Labor)';
        }
        field(16; "Warranty Ending Date (Labor)"; Date)
        {
            Caption = 'Warranty Ending Date (Labor)';
        }
        field(17; "Warranty Starting Date (Parts)"; Date)
        {
            Caption = 'Warranty Starting Date (Parts)';
        }
        field(18; "Warranty Ending Date (Parts)"; Date)
        {
            Caption = 'Warranty Ending Date (Parts)';
        }
        field(19; "Warranty % (Parts)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Warranty % (Parts)';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(20; "Warranty % (Labor)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Warranty % (Labor)';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(21; "Response Time (Hours)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Response Time (Hours)';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(22; "Installation Date"; Date)
        {
            Caption = 'Installation Date';
        }
        field(23; "Sales Date"; Date)
        {
            Caption = 'Sales Date';
        }
        field(24; "Last Service Date"; Date)
        {
            Caption = 'Last Service Date';
        }
        field(25; "Default Contract Value"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Default Contract Value';
        }
        field(26; "Default Contract Discount %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Default Contract Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(28; "No. of Active Contracts"; Integer)
        {
            CalcFormula = Count ("Service Contract Line" WHERE ("Service Item No." = FIELD ("No."),
                                                               "Contract Status" = FILTER (<> Cancelled)));
            Caption = 'No. of Active Contracts';
            FieldClass = FlowField;
        }
        field(33; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(34; "Vendor Item No."; Code[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(47; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(48; "Item Description"; Text[50])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Item No.")));
            Caption = 'Item Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(49; Name; Text[50])
        {
            CalcFormula = Lookup (Customer.Name WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; Address; Text[50])
        {
            CalcFormula = Lookup (Customer.Address WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Address';
            Editable = false;
            FieldClass = FlowField;
        }
        field(51; "Address 2"; Text[50])
        {
            CalcFormula = Lookup (Customer."Address 2" WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Address 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(52; "Post Code"; Code[20])
        {
            CalcFormula = Lookup (Customer."Post Code" WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Post Code';
            Editable = false;
            FieldClass = FlowField;
        }
        field(53; City; Text[30])
        {
            CalcFormula = Lookup (Customer.City WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'City';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Post Code".City;
            ValidateTableRelation = false;
        }
        field(54; Contact; Text[50])
        {
            CalcFormula = Lookup (Customer.Contact WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(55; "Phone No."; Text[30])
        {
            CalcFormula = Lookup (Customer."Phone No." WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Phone No.';
            Editable = false;
            ExtendedDatatype = PhoneNo;
            FieldClass = FlowField;
        }
        field(56; "Ship-to Name"; Text[50])
        {
            CalcFormula = Lookup ("Ship-to Address".Name WHERE ("Customer No." = FIELD ("Customer No."),
                                                               Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; "Ship-to Address"; Text[50])
        {
            CalcFormula = Lookup ("Ship-to Address".Address WHERE ("Customer No." = FIELD ("Customer No."),
                                                                  Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Address';
            Editable = false;
            FieldClass = FlowField;
        }
        field(58; "Ship-to Address 2"; Text[50])
        {
            CalcFormula = Lookup ("Ship-to Address"."Address 2" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                      Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Address 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59; "Ship-to Post Code"; Code[20])
        {
            CalcFormula = Lookup ("Ship-to Address"."Post Code" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                      Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Post Code';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; "Ship-to City"; Text[30])
        {
            CalcFormula = Lookup ("Ship-to Address".City WHERE ("Customer No." = FIELD ("Customer No."),
                                                               Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to City';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Post Code".City;
            ValidateTableRelation = false;
        }
        field(61; "Ship-to Contact"; Text[50])
        {
            CalcFormula = Lookup ("Ship-to Address".Contact WHERE ("Customer No." = FIELD ("Customer No."),
                                                                  Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Ship-to Phone No."; Text[30])
        {
            CalcFormula = Lookup ("Ship-to Address"."Phone No." WHERE ("Customer No." = FIELD ("Customer No."),
                                                                      Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Phone No.';
            Editable = false;
            ExtendedDatatype = PhoneNo;
            FieldClass = FlowField;
        }
        field(63; "Usage (Cost)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Service Ledger Entry"."Cost Amount" WHERE ("Entry Type" = CONST (Usage),
                                                                          "Service Item No. (Serviced)" = FIELD ("No."),
                                                                          "Service Contract No." = FIELD ("Contract Filter"),
                                                                          "Service Order No." = FIELD ("Service Order Filter"),
                                                                          Type = FIELD ("Type Filter"),
                                                                          "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64; "Usage (Amount)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Entry Type" = CONST (Usage),
                                                                           "Service Item No. (Serviced)" = FIELD ("No."),
                                                                           "Service Contract No." = FIELD ("Contract Filter"),
                                                                           "Service Order No." = FIELD ("Service Order Filter"),
                                                                           Type = FIELD ("Type Filter"),
                                                                           "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Amount)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65; "Invoiced Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Entry Type" = CONST (Sale),
                                                                            "Moved from Prepaid Acc." = CONST (true),
                                                                            "Service Item No. (Serviced)" = FIELD ("No."),
                                                                            "Service Contract No." = FIELD ("Contract Filter"),
                                                                            "Service Order No." = FIELD ("Service Order Filter"),
                                                                            Type = FIELD ("Type Filter"),
                                                                            "Posting Date" = FIELD ("Date Filter"),
                                                                            Open = CONST (false),
                                                                            "Rent Order No." = CONST ('')));
            Caption = 'Invoiced Amount';
            Description = '#RENW16.00.01.02:T513';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66; "Total Quantity"; Decimal)
        {
            CalcFormula = Sum ("Service Ledger Entry".Quantity WHERE ("Entry Type" = CONST (Usage),
                                                                     "Service Item No. (Serviced)" = FIELD ("No."),
                                                                     "Service Contract No." = FIELD ("Contract Filter"),
                                                                     "Service Order No." = FIELD ("Service Order Filter"),
                                                                     Type = FIELD ("Type Filter"),
                                                                     "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Total Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Total Qty. Invoiced"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Charged Qty." WHERE ("Entry Type" = CONST (Sale),
                                                                            "Service Item No. (Serviced)" = FIELD ("No."),
                                                                            "Service Contract No." = FIELD ("Contract Filter"),
                                                                            "Service Order No." = FIELD ("Service Order Filter"),
                                                                            Type = FIELD ("Type Filter"),
                                                                            "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Total Qty. Invoiced';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(68; "Resources Used"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Service Ledger Entry"."Cost Amount" WHERE ("Service Item No. (Serviced)" = FIELD ("No."),
                                                                           "Entry Type" = CONST (Sale),
                                                                           Type = CONST (Resource),
                                                                           "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Resources Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(69; "Parts Used"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Service Ledger Entry"."Cost Amount" WHERE ("Service Item No. (Serviced)" = FIELD ("No."),
                                                                           "Entry Type" = CONST (Sale),
                                                                           Type = CONST (Item),
                                                                           "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Parts Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "Cost Used"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Service Ledger Entry"."Cost Amount" WHERE ("Service Item No. (Serviced)" = FIELD ("No."),
                                                                           "Entry Type" = CONST (Sale),
                                                                           Type = CONST ("Service Cost"),
                                                                           "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Cost Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Vendor Name"; Text[50])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Vendor Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Vendor Item Name"; Text[50])
        {
            Caption = 'Vendor Item Name';
        }
        field(73; Comment; Boolean)
        {
            CalcFormula = Exist ("Service Comment Line" WHERE ("Table Name" = CONST ("Service Item"),
                                                              "Table Subtype" = CONST ("0"),
                                                              "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Service Item Components"; Boolean)
        {
            CalcFormula = Exist ("Service Item Component" WHERE ("Parent Service Item No." = FIELD ("No."),
                                                                Active = CONST (true)));
            Caption = 'Service Item Components';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "Preferred Resource"; Code[20])
        {
            Caption = 'Preferred Resource';
            TableRelation = Resource."No.";
        }
        field(76; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(77; County; Text[30])
        {
            CalcFormula = Lookup (Customer.County WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'County';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; "Ship-to County"; Text[30])
        {
            CalcFormula = Lookup ("Ship-to Address".County WHERE ("Customer No." = FIELD ("Customer No."),
                                                                 Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to County';
            Editable = false;
            FieldClass = FlowField;
        }
        field(79; "Contract Cost"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Cost Amount" WHERE ("Entry Type" = CONST (Sale),
                                                                           "Service Item No. (Serviced)" = FIELD ("No."),
                                                                           "Service Contract No." = FIELD ("Contract Filter"),
                                                                           "Service Order No." = FIELD ("Service Order Filter"),
                                                                           Type = CONST ("Service Contract"),
                                                                           "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Contract Cost';
            FieldClass = FlowField;
        }
        field(81; "Country/Region Code"; Code[10])
        {
            CalcFormula = Lookup (Customer."Country/Region Code" WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Country/Region Code';
            Editable = false;
            FieldClass = FlowField;
        }
        field(82; "Ship-to Country/Region Code"; Code[10])
        {
            CalcFormula = Lookup ("Ship-to Address"."Country/Region Code" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                                Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Country/Region Code';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "Name 2"; Text[50])
        {
            CalcFormula = Lookup (Customer."Name 2" WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "Ship-to Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Ship-to Address"."Name 2" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                   Code = FIELD ("Ship-to Code")));
            Caption = 'Ship-to Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(85; "Service Price Group Code"; Code[10])
        {
            Caption = 'Service Price Group Code';
            TableRelation = "Service Price Group";
        }
        field(86; "Default Contract Cost"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Default Contract Cost';
        }
        field(87; "Prepaid Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Entry Type" = CONST (Sale),
                                                                            "Moved from Prepaid Acc." = CONST (false),
                                                                            "Service Item No. (Serviced)" = FIELD ("No."),
                                                                            "Service Contract No." = FIELD ("Contract Filter"),
                                                                            "Service Order No." = FIELD ("Service Order Filter"),
                                                                            Type = FIELD ("Type Filter"),
                                                                            "Posting Date" = FIELD ("Date Filter"),
                                                                            Open = CONST (false)));
            Caption = 'Prepaid Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(89; "Service Contracts"; Boolean)
        {
            CalcFormula = Exist ("Service Contract Line" WHERE ("Service Item No." = FIELD ("No.")));
            Caption = 'Service Contracts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Total Qty. Consumed"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry".Quantity WHERE ("Entry Type" = CONST (Consume),
                                                                      "Service Item No. (Serviced)" = FIELD ("No."),
                                                                      "Service Contract No." = FIELD ("Contract Filter"),
                                                                      "Service Order No." = FIELD ("Service Order Filter"),
                                                                      Type = FIELD ("Type Filter"),
                                                                      "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Total Qty. Consumed';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(101; "Type Filter"; Option)
        {
            Caption = 'Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Resource,Item,Service Cost,Service Contract,G/L Account';
            OptionMembers = " ",Resource,Item,"Service Cost","Service Contract","G/L Account";
        }
        field(102; "Contract Filter"; Code[20])
        {
            Caption = 'Contract Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract));
        }
        field(103; "Service Order Filter"; Code[20])
        {
            Caption = 'Service Order Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Header"."No.";
        }
        field(104; "Sales/Serv. Shpt. Document No."; Code[20])
        {
            Caption = 'Sales/Serv. Shpt. Document No.';
            TableRelation = "Sales Shipment Line"."Document No.";
        }
        field(105; "Sales/Serv. Shpt. Line No."; Integer)
        {
            Caption = 'Sales/Serv. Shpt. Line No.';
            TableRelation = "Sales Shipment Line"."Line No." WHERE ("Document No." = FIELD ("Sales/Serv. Shpt. Document No."));
        }
        field(106; "Shipment Type"; Option)
        {
            Caption = 'Shipment Type';
            OptionCaption = 'Sales,Service';
            OptionMembers = Sales,Service;
        }
        field(50001; Servicebarcode; Code[10])
        {
            Description = '#AT';
        }
        field(50002; Copyfrom; Code[20])
        {
            Description = '#AT';
        }
        field(50010; "Gebäude"; Text[50])
        {
            Description = '#AT';
        }
        field(50011; Ebene; Text[30])
        {
            Description = '#AT';
        }
        field(50012; Raum; Text[30])
        {
            Description = '#AT';
        }
        field(50013; Model; Code[20])
        {
            Description = '#AT';
        }
        field(50014; Hersteller; Text[30])
        {
            Description = '#AT';
        }
        field(50015; "Key-No."; Code[10])
        {
            Description = '#AT';
        }
        field(50020; "Customer Service ID"; Code[20])
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
        field(5013400; "Document BOM No."; Code[20])
        {
            Caption = 'Document BOM No.';
            Description = ':DMW14.00:1:01';
            Editable = false;
        }
        field(5013410; "Construction Order No."; Code[20])
        {
            Caption = 'Construction Order No.';
            Description = ':DMW14.00:1:01';
            Editable = false;
        }
        field(5013420; "Prod. Order Status"; Option)
        {
            Caption = 'Prod. Order Status';
            Description = ':DMW14.00:1:01';
            Editable = false;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(5013430; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Description = ':DMW14.00:1:01';
            Editable = false;
        }
        field(5013440; "Document Checklist No."; Code[20])
        {
            Caption = 'Document Checklist No.';
            Description = ':DMW14.04:1:01';
            Editable = false;
        }
        field(5013450; "Service BOM exists"; Boolean)
        {
            CalcFormula = Exist ("Service BOM Header" WHERE ("Source Type" = CONST ("Service Item"),
                                                            "Source No." = FIELD ("No.")));
            Caption = 'Service BOM exists';
            Description = ':DMW14.04:1:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013460; "Service Item Checklist"; Code[20])
        {
            Caption = 'Service Item Checklist';
            Description = ':DMW14.04:1:01';
            TableRelation = "Checklist Header"."No.";
        }
        field(5013470; "Building Site-to Code"; Code[10])
        {
            Caption = 'Building Site-to Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(5013471; "Building Site-to Name"; Text[50])
        {
            Caption = 'Building Site-to Name';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013472; "Building Site-to Name 2"; Text[50])
        {
            Caption = 'Building Site-to Name 2';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013473; "Building Site-to Address"; Text[50])
        {
            Caption = 'Building Site-to Address';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013474; "Building Site-to Address 2"; Text[50])
        {
            Caption = 'Building Site-to Address 2';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013475; "Building Site-to City"; Text[30])
        {
            Caption = 'Building Site-to City';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Post Code".City;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013476; "Building Site-to Contact"; Text[50])
        {
            Caption = 'Building Site-to Contact';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013477; "Building Site-to Post Code"; Code[20])
        {
            Caption = 'Building Site-to Post Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013478; "Building Site-to County"; Text[30])
        {
            Caption = 'Building Site-to County';
            Description = ':DMW16.00.01:76:01';
        }
        field(5013479; "Building Site-to C/R Code"; Code[10])
        {
            Caption = 'Building Site-to Country/Region Code';
            Description = ':DMW16.00.01:76:01';
            TableRelation = "Country/Region";
        }
        field(5013480; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013481; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013482; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = '#DMW16.00.02:T102';
        }
        field(5072450; Type; Option)
        {
            Caption = 'Type';
            Description = '#RENW16.00.01:R059';
            OptionCaption = 'Item,Machine,Supplementary Part,Machine Component';
            OptionMembers = Item,Machine,"Supplementary Part","Machine Component";
        }
        field(5072451; "Type of Counter"; Option)
        {
            Caption = 'Type of Counter';
            Description = '#RENW16.00.01:R059';
            OptionCaption = ' ,Hours,Miles,Hours+Miles';
            OptionMembers = " ",Hours,Miles,"Hours+Miles";
        }
        field(5072452; "Operation Hours"; Integer)
        {
            Caption = 'Operation Hours';
            Description = '#RENW16.00.01:R059';
        }
        field(5072453; "Operation Miles"; Integer)
        {
            Caption = 'Operation Miles';
            Description = '#RENW16.00.01:R059';
        }
        field(5072454; "Performance (KW)"; Decimal)
        {
            Caption = 'Performance (kW)';
            DecimalPlaces = 0 : 2;
            Description = '#RENW16.00.01:R059';
        }
        field(5072455; "Performance (HP)"; Decimal)
        {
            Caption = 'Performance (HP)';
            DecimalPlaces = 0 : 2;
            Description = '#RENW16.00.01:R059';
        }
        field(5072456; "External Color"; Code[10])
        {
            Caption = 'External Color';
            Description = '#RENW16.00.01:R059,#RENW16.00.01.02:T519,#RENW17.00';
            TableRelation = "Machine Color";
        }
        field(5072457; "Internal Color"; Code[10])
        {
            Caption = 'Internal Color';
            Description = '#RENW16.00.01:R059,#RENW16.00.01.02:T519,#RENW17.00';
            TableRelation = "Machine Color";
        }
        field(5072458; "Internet Link"; Text[250])
        {
            Caption = 'Internet Link';
            Description = '#RENW16.00.01:R059,#RENW16.00.01.01:T504';
            ExtendedDatatype = URL;
        }
        field(5072459; "Fixed Asset No."; Code[20])
        {
            CalcFormula = Lookup ("Fixed Asset"."No." WHERE ("Item No." = FIELD ("Item No."),
                                                            "Serial No." = FIELD ("Serial No.")));
            Caption = 'Fixed Asset No.';
            Description = '#RENW16.00.02:R062';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072490; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            Description = '#RENW16.00.01:R170';
            TableRelation = "Gen. Product Posting Group";
        }
        field(5072650; "Rent Home Location Code"; Code[10])
        {
            Caption = 'Rent Home Location Code';
            Description = '#RENW16.00.01:R056';
        }
        field(5072651; "Invoiced Rent Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Entry Type" = CONST (Sale),
                                                                            "Moved from Prepaid Acc." = CONST (true),
                                                                            "Service Item No. (Serviced)" = FIELD ("No."),
                                                                            "Service Contract No." = FIELD ("Contract Filter"),
                                                                            "Service Order No." = FIELD ("Service Order Filter"),
                                                                            Type = FIELD ("Type Filter"),
                                                                            "Posting Date" = FIELD ("Date Filter"),
                                                                            Open = CONST (false),
                                                                            "Rent Order No." = FILTER (<> '')));
            Caption = 'Invoiced Rent Amount';
            Description = '#RENW16.00.01.02:T513';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072652; "Default Rent Cost"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Default Rent Cost';
            Description = '#RENW17.00';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Serial No.")
        {
        }
        key(Key3; "Customer No.", "Ship-to Code", "Item No.", "Serial No.")
        {
        }
        key(Key4; "Warranty Ending Date (Parts)", "Customer No.", "Ship-to Code")
        {
        }
        key(Key5; "Sales/Serv. Shpt. Document No.", "Sales/Serv. Shpt. Line No.")
        {
        }
        key(Key6; "Service Item Group Code")
        {
        }
        key(Key7; "Service Item Checklist")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Status, "Item No.", "Service Contracts")
        {
        }
    }
}

