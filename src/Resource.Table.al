table 156 Resource
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - Type,Resource Group No.,No.
    //                                     - Component Group 1 No.,Component Group 2 No.,...
    //                                     - Component Type
    //                                     - Type,User ID,Windows Login
    //                                     Update Field "Type":
    //                                     - Person,Machine + ,Service,,Traveling
    // #CAW17.00:103 08.08.12 DEMSR.KHS
    //   New field: "Calculation Group Code"
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding

    Caption = 'Resource';
    DataCaptionFields = "No.", Name;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            Description = 'Person,Machine,Service,,Traveling';
            OptionCaption = 'Person,Machine,Service,,Traveling';
            OptionMembers = Person,Machine,Service,,Traveling;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(5; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(6; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(7; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(8; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Social Security No."; Text[30])
        {
            Caption = 'Social Security No.';
        }
        field(10; "Job Title"; Text[30])
        {
            Caption = 'Job Title';
        }
        field(11; Education; Text[30])
        {
            Caption = 'Education';
        }
        field(12; "Contract Class"; Text[30])
        {
            Caption = 'Contract Class';
        }
        field(13; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(14; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            TableRelation = "Resource Group";
        }
        field(16; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(17; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(18; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            TableRelation = "Unit of Measure";
        }
        field(19; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            MinValue = 0;
        }
        field(20; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 2 : 2;
        }
        field(21; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            MinValue = 0;
        }
        field(22; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
            DecimalPlaces = 0 : 5;
        }
        field(23; "Price/Profit Calculation"; Option)
        {
            Caption = 'Price/Profit Calculation';
            OptionCaption = 'Profit=Price-Cost,Price=Cost+Profit,No Relationship';
            OptionMembers = "Profit=Price-Cost","Price=Cost+Profit","No Relationship";
        }
        field(24; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(25; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(26; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(27; Comment; Boolean)
        {
            CalcFormula = Exist ("Comment Line" WHERE ("Table Name" = CONST (Resource),
                                                      "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(39; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(40; "Unit of Measure Filter"; Code[10])
        {
            Caption = 'Unit of Measure Filter';
            FieldClass = FlowFilter;
            TableRelation = "Unit of Measure";
        }
        field(41; Capacity; Decimal)
        {
            CalcFormula = Sum ("Res. Capacity Entry".Capacity WHERE ("Resource No." = FIELD ("No."),
                                                                    Date = FIELD ("Date Filter")));
            Caption = 'Capacity';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(42; "Qty. on Order (Job)"; Decimal)
        {
            CalcFormula = Sum ("Job Planning Line"."Quantity (Base)" WHERE (Status = CONST (Order),
                                                                           "Schedule Line" = CONST (true),
                                                                           Type = CONST (Resource),
                                                                           "No." = FIELD ("No."),
                                                                           "Planning Date" = FIELD ("Date Filter")));
            Caption = 'Qty. on Order (Job)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(43; "Qty. Quoted (Job)"; Decimal)
        {
            CalcFormula = Sum ("Job Planning Line"."Quantity (Base)" WHERE (Status = CONST (Quote),
                                                                           "Schedule Line" = CONST (true),
                                                                           Type = CONST (Resource),
                                                                           "No." = FIELD ("No."),
                                                                           "Planning Date" = FIELD ("Date Filter")));
            Caption = 'Qty. Quoted (Job)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(44; "Usage (Qty.)"; Decimal)
        {
            CalcFormula = Sum ("Res. Ledger Entry"."Quantity (Base)" WHERE ("Entry Type" = CONST (Usage),
                                                                           Chargeable = FIELD ("Chargeable Filter"),
                                                                           "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                           "Resource No." = FIELD ("No."),
                                                                           "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(45; "Usage (Cost)"; Decimal)
        {
            AutoFormatType = 2;
            CalcFormula = Sum ("Res. Ledger Entry"."Total Cost" WHERE ("Entry Type" = CONST (Usage),
                                                                      Chargeable = FIELD ("Chargeable Filter"),
                                                                      "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                      "Resource No." = FIELD ("No."),
                                                                      "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(46; "Usage (Price)"; Decimal)
        {
            AutoFormatType = 2;
            CalcFormula = Sum ("Res. Ledger Entry"."Total Price" WHERE ("Entry Type" = CONST (Usage),
                                                                       Chargeable = FIELD ("Chargeable Filter"),
                                                                       "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                       "Resource No." = FIELD ("No."),
                                                                       "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Price)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "Sales (Qty.)"; Decimal)
        {
            CalcFormula = - Sum ("Res. Ledger Entry"."Quantity (Base)" WHERE ("Entry Type" = CONST (Sale),
                                                                            "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                            "Resource No." = FIELD ("No."),
                                                                            "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Sales (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Sales (Cost)"; Decimal)
        {
            AutoFormatType = 2;
            CalcFormula = - Sum ("Res. Ledger Entry"."Total Cost" WHERE ("Entry Type" = CONST (Sale),
                                                                       "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                       "Resource No." = FIELD ("No."),
                                                                       "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Sales (Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(49; "Sales (Price)"; Decimal)
        {
            AutoFormatType = 2;
            CalcFormula = - Sum ("Res. Ledger Entry"."Total Price" WHERE ("Entry Type" = CONST (Sale),
                                                                        "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                        "Resource No." = FIELD ("No."),
                                                                        "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Sales (Price)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Chargeable Filter"; Boolean)
        {
            Caption = 'Chargeable Filter';
            FieldClass = FlowFilter;
        }
        field(51; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(52; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(53; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(54; County; Text[30])
        {
            Caption = 'County';
        }
        field(55; "Automatic Ext. Texts"; Boolean)
        {
            Caption = 'Automatic Ext. Texts';
        }
        field(56; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(57; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(58; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(59; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(60; "IC Partner Purch. G/L Acc. No."; Code[20])
        {
            Caption = 'IC Partner Purch. G/L Acc. No.';
            TableRelation = "IC G/L Account";
        }
        field(900; "Qty. on Assembly Order"; Decimal)
        {
            CalcFormula = Sum ("Assembly Line"."Remaining Quantity (Base)" WHERE ("Document Type" = CONST (Order),
                                                                                 Type = CONST (Resource),
                                                                                 "No." = FIELD ("No."),
                                                                                 "Due Date" = FIELD ("Date Filter")));
            Caption = 'Qty. on Assembly Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(950; "Use Time Sheet"; Boolean)
        {
            Caption = 'Use Time Sheet';
        }
        field(951; "Time Sheet Owner User ID"; Code[50])
        {
            Caption = 'Time Sheet Owner User ID';
            TableRelation = "User Setup";
        }
        field(952; "Time Sheet Approver User ID"; Code[50])
        {
            Caption = 'Time Sheet Approver User ID';
            TableRelation = "User Setup";
        }
        field(1700; "Default Deferral Template Code"; Code[10])
        {
            Caption = 'Default Deferral Template Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(5900; "Qty. on Service Order"; Decimal)
        {
            CalcFormula = Sum ("Service Order Allocation"."Allocated Hours" WHERE (Posted = CONST (false),
                                                                                  "Resource No." = FIELD ("No."),
                                                                                  "Allocation Date" = FIELD ("Date Filter"),
                                                                                  Status = CONST (Active)));
            Caption = 'Qty. on Service Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5901; "Service Zone Filter"; Code[10])
        {
            Caption = 'Service Zone Filter';
            TableRelation = "Service Zone";
        }
        field(5902; "In Customer Zone"; Boolean)
        {
            CalcFormula = Exist ("Resource Service Zone" WHERE ("Resource No." = FIELD ("No."),
                                                               "Service Zone Code" = FIELD ("Service Zone Filter")));
            Caption = 'In Customer Zone';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW17.00:103';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(5292332; "Job No. Filter"; Code[20])
        {
            Caption = 'Job No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No. Filter"; Integer)
        {
            Caption = 'Job Line Unique No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(5292334; "Job Process No. Filter"; Code[20])
        {
            Caption = 'Job Process No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
            TableRelation = "PRPL - Job Line Process";
        }
        field(5292335; "Category Filter"; Option)
        {
            Caption = 'Category Filter';
            Description = 'FF  ,Internal,Pipeline,Backlog';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Internal,Pipeline,Backlog';
            OptionMembers = " ",Internal,Pipeline,Backlog;
        }
        field(5292336; "Service Work Type Code"; Code[10])
        {
            Caption = 'Service Work Type Code';
            Description = 'TR Work Type';
            TableRelation = "Work Type";
        }
        field(5292337; "Traveling Work Type Code"; Code[10])
        {
            Caption = 'Traveling Work Type Code';
            Description = 'TR Work Type';
            TableRelation = "Work Type";
        }
        field(5292338; "Person Work Type Code"; Code[10])
        {
            Caption = 'Person Work Type Code';
            Description = 'TR Work Type';
            TableRelation = "Work Type";
        }
        field(5292339; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (156),
                                                               Code1 = FIELD ("No.")));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292340; "Job Calculation Group"; Code[10])
        {
            Caption = 'Job Calculation Group';
            Description = 'TR "Job Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(5292341; "Manual Pricing"; Option)
        {
            Caption = 'Manual Pricing';
            Description = ' ,Direct Unit Cost,Unit Price,Both';
            OptionCaption = ' ,Direct Unit Cost,Unit Price,Both';
            OptionMembers = " ","Direct Unit Cost","Unit Price",Both;
        }
        field(5292342; Milestone; Boolean)
        {
            Caption = 'Milestone';
        }
        field(5292343; "Quantity Posted"; Decimal)
        {
            CalcFormula = Sum ("Job Ledger Entry"."Quantity (Base)" WHERE ("Entry Type" = CONST (Usage),
                                                                          Type = CONST (Resource),
                                                                          "No." = FIELD ("No."),
                                                                          "Posting Date" = FIELD ("Date Filter"),
                                                                          "Job No." = FIELD ("Job No. Filter"),
                                                                          "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                          "Travel Code" = CONST ('')));
            Caption = 'Quantity Posted';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292344; "Procurement Cost Source"; Option)
        {
            Caption = 'Procurement Cost Source';
            Description = ' ,Standard Costs,Job Line,Procurement Line';
            OptionCaption = ' ,Standard Costs,Job Line,Procurement Line';
            OptionMembers = " ","Standard Costs","Job Line","Procurement Line";
        }
        field(5292345; "Procurement Channel"; Option)
        {
            Caption = 'Procurement Channel';
            Description = ' ,...,Time Entry,Quote,Requisition,Order,,,Service Order';
            OptionCaption = ' ,...,Time Entry,Quote,Requisition,Order,,,Service Order';
            OptionMembers = " ","...","Time Entry",Quote,Requisition,"Order",,,"Service Order";
        }
        field(5292346; "Procurement Info Line"; Boolean)
        {
            Caption = 'Procurement Info Line';
        }
        field(5292347; "Sales Unit of Measure"; Code[10])
        {
            Caption = 'Sales Unit of Measure';
            Description = 'TR "Resource Unit of Measure".Code WHERE (Resource No.=FIELD(No.))';
            TableRelation = "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."));
        }
        field(5292348; "Shipment Channel"; Option)
        {
            Caption = 'Shipment Channel';
            Description = ' ,...,Structure Position,Job Line,Posted Item';
            OptionCaption = ' ,...,Structure Position,Job Line,Posted Item';
            OptionMembers = " ","...","Structure Position","Job Line","Posted Item";
        }
        field(5292349; "Realized % (Base)"; Option)
        {
            Caption = 'Realized % (Base)';
            Description = ' ,Quantity,Cost';
            OptionCaption = ' ,Quantity,Cost';
            OptionMembers = " ",Quantity,Cost;
        }
        field(5292350; "Component Type"; Code[10])
        {
            Caption = 'Component Type';
            Description = 'TR "Component Type"';
            TableRelation = "PR - Component Type";
        }
        field(5292351; "Component Group 1 No."; Integer)
        {
            Caption = 'Component Group 1 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292352; "Component Group 2 No."; Integer)
        {
            Caption = 'Component Group 2 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292353; "Component Group 3 No."; Integer)
        {
            Caption = 'Component Group 3 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292354; "Component Group 4 No."; Integer)
        {
            Caption = 'Component Group 4 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292355; "Component Group 5 No."; Integer)
        {
            Caption = 'Component Group 5 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292356; "Component Group 1 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 1 No.")));
            Caption = 'Component Group 1 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292357; "Component Group 2 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 2 No.")));
            Caption = 'Component Group 2 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292358; "Component Group 3 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 3 No.")));
            Caption = 'Component Group 3 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292359; "Component Group 4 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 4 No.")));
            Caption = 'Component Group 4 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292360; "Component Group 5 Code"; Code[10])
        {
            CalcFormula = Lookup ("PR - Component Group".Code WHERE ("Entry No." = FIELD ("Component Group 5 No.")));
            Caption = 'Component Group 5 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292361; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'TR User."User Name"';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5292364; "Salesperson/Purchaser"; Code[10])
        {
            Caption = 'Salesperson/Purchaser';
            Description = 'TR Salesperson/Purchaser';
            TableRelation = "Salesperson/Purchaser";
        }
        field(5292365; "Job Journal Time Entry"; Code[10])
        {
            Caption = 'Job Journal Time Entry';
            Description = 'TR "Job Journal Template"';
            TableRelation = "Job Journal Template";
        }
        field(5292366; "Job Journal Batch Name"; Code[10])
        {
            Caption = 'Job Journal Batch Name';
            Description = 'TR "Job Journal Batch"';
            TableRelation = "Job Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Job Journal Time Entry"));
        }
        field(5292367; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(5292368; "Job Person Filter"; Code[100])
        {
            Caption = 'Job Person Filter';
        }
        field(5292369; "Activate Job Person Filter"; Boolean)
        {
            Caption = 'Activate Job Person Filter';
        }
        field(5292370; "Job Line Person Filter"; Code[100])
        {
            Caption = 'Job Line Person Filter';
        }
        field(5292371; "Activate Job Line Person Fil."; Boolean)
        {
            Caption = 'Activate Job Line Person Fil.';
        }
        field(5292372; "Procurement by Job Order"; Boolean)
        {
            Caption = 'Procurement by Job Order';
        }
        field(5292373; "Vacation entitlement Days/Year"; Decimal)
        {
            BlankZero = true;
            Caption = 'Vacation entitlement Days/Year';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292374; "Vacation entitlement available"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("PR - Vacation Entry"."Vacation days" WHERE ("Person No." = FIELD ("No.")));
            Caption = 'Vacation entitlement available';
            DecimalPlaces = 0 : 5;
            Description = 'CF';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292375; "Application for leave"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("PR - Vacation Journal Line"."Vacation days" WHERE ("Person No." = FIELD ("No."),
                                                                                  "Entry Type" = CONST ("Application for leave")));
            Caption = 'Application for leave';
            DecimalPlaces = 0 : 5;
            Description = 'CF';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292376; "Vacation Job No."; Code[20])
        {
            Caption = 'Vacation Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292377; "Vacation Job Line Unique No."; Integer)
        {
            Caption = 'Vacation Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Vacation Job No."),
                                                                       "Unique No." = FIELD ("Vacation Job Line Unique No."));
        }
        field(5292378; "Vacation WBS"; Code[50])
        {
            Caption = 'Vacation WBS';
            Description = 'ne';
            Editable = false;
        }
        field(5292379; "Terminal Password"; Text[30])
        {
            Caption = 'Terminal Password';
        }
        field(5292380; "Job Work-Hour Template Code"; Code[10])
        {
            Caption = 'Job Work-Hour Template Code';
            Description = 'TR Job Work-Hour Template';
            TableRelation = "PR - Job Work-Hour Template";
        }
        field(5292381; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            Description = 'TR Base Calendar';
            TableRelation = "Base Calendar";
        }
        field(5292750; "Process Channel"; Option)
        {
            Caption = 'Process Channel';
            Description = ' ,Work,Lead time,Structure';
            OptionCaption = ' ,Work,Lead time,Structure';
            OptionMembers = " ",Work,"Lead time",Structure;
        }
        field(5292751; "MS-Project Path"; Text[250])
        {
            Caption = 'MS-Project Path';
        }
        field(5292752; Planning; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Schedule Channel" = CONST (Calendar),
                                                                                   "Person No." = FIELD ("No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Job No." = FIELD ("Job No. Filter"),
                                                                                   "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                                   "Job Process No." = FIELD ("Job Process No. Filter"),
                                                                                   "Schedule Type" = FILTER (<> Simulated)));
            Caption = 'Planning';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292753; Simulation; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Schedule Channel" = CONST (Calendar),
                                                                                   "Person No." = FIELD ("No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Job No." = FIELD ("Job No. Filter"),
                                                                                   "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                                   "Job Process No." = FIELD ("Job Process No. Filter"),
                                                                                   "Schedule Type" = CONST (Simulated)));
            Caption = 'Simulation';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292754; Planned; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Schedule Channel" = CONST (Calendar),
                                                                                   "Person No." = FIELD ("No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Job No." = FIELD ("Job No. Filter"),
                                                                                   "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                                   "Job Process No." = FIELD ("Job Process No. Filter"),
                                                                                   "Schedule Type" = CONST (Planned)));
            Caption = 'Planned';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292755; "Quantity in Time Entry"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Quantity (Base)" WHERE ("Source Channel" = CONST ("Time Entry"),
                                                                          Type = CONST (Resource),
                                                                          "No." = FIELD ("No."),
                                                                          "Posting Date" = FIELD ("Date Filter"),
                                                                          "Job No." = FIELD ("Job No. Filter"),
                                                                          "Job Line Unique No." = FIELD ("Job Line Unique No. Filter")));
            Caption = 'Quantity in Time Entry';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Journal Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42014822; "Capacity Start"; Time)
        {
            CalcFormula = Lookup ("Res. Capacity Entry"."Start Time" WHERE ("Resource No." = FIELD ("No."),
                                                                           Date = FIELD ("Date Filter")));
            Caption = 'Capacity Start';
            Description = 'SNST1.0.0.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42014823; "Capacity Finish Date"; Date)
        {
            CalcFormula = Lookup ("Res. Capacity Entry"."Finish Date" WHERE ("Resource No." = FIELD ("No."),
                                                                            Date = FIELD ("Date Filter")));
            Caption = 'Capacity Finish Date';
            Description = 'SNST1.0.0.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42014824; "Capacity Finish Time"; Time)
        {
            CalcFormula = Lookup ("Res. Capacity Entry"."Finish Time" WHERE ("Resource No." = FIELD ("No."),
                                                                            Date = FIELD ("Date Filter")));
            Caption = 'Capacity Finish Time';
            Description = 'SNST1.0.0.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42014825; "GPS Latitude"; Decimal)
        {
            Caption = 'GPS Latitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
        }
        field(42014826; "GPS Longitude"; Decimal)
        {
            Caption = 'GPS Longitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
        }
        field(42014827; "Last Task Start DateTime"; DateTime)
        {
            Caption = 'Last Task Start DateTime';
            Description = 'SNST1.0.0.0';
        }
        field(42014828; "Last Task GPS Latitude"; Decimal)
        {
            Caption = 'Last Task GPS Latitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
        }
        field(42014829; "Last Taks GPS Longitude"; Decimal)
        {
            Caption = 'Last Taks GPS Longitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
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
        key(Key3; "Gen. Prod. Posting Group")
        {
        }
        key(Key4; Name)
        {
        }
        key(Key5; Type)
        {
        }
        key(Key6; "Base Unit of Measure")
        {
        }
        key(Key7; Type, "Resource Group No.", "No.")
        {
        }
        key(Key8; "Component Group 1 No.", "Component Group 2 No.", "Component Group 3 No.", "Component Group 4 No.", "Component Group 5 No.")
        {
        }
        key(Key9; "Component Type")
        {
        }
        key(Key10; Type, "User ID")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, Type, "Base Unit of Measure")
        {
        }
    }
}

