table 167 Job
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - Job Link,Job Link No.,Status
    //                                     - Complete
    //                                     - Job Link Outline No.,Complete
    //                                     - Complete,Job Type
    //                                     - Person Responsible
    //                                     - Person Responsible 2
    //                                     - Sell-to Customer No.
    //                                     - Job Link Main Job No.
    //                                     - Contact Company No.
    //                                     - "WIP Transfer"
    //                                     Update Fields:
    //                                     - Field 19: no Init
    //                                     - Field 20: TR + Table Filter for "Person"
    //                                            New key: "WIP Transfer"
    // PR02 PRODUKT.01:8023 20.04.15 DENUE.SKOL BUGFIX: WIP View incorrect after change of WIP Basis
    // PR03 PRODUKT.01:AMP0007 12.06.15 DENUE.SKOL Code added for QC-Management
    // PR04 PRODUKT.01:AMP0015 12.06.15 DENUE.SKOL Integration Textmodule
    //                                             New Fields
    //                                             - 5060600 Text Set ID Header
    //                                             - 5060601 Text Set ID Footer
    // #PRW18.00.06:T503 19.10.15 DENUE.SKOL Bugfix: Dimensions from "Person
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        New Key:
    //                                        - "Structure Type","No."
    // AM01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|alloy management
    // PRBQ01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|boq manager

    Caption = 'Job';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(5; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;
        }
        field(12; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(13; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(14; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(19; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Planning,Quote,Order,Completed';
            OptionMembers = Planning,Quote,"Order",Completed;
        }
        field(20; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource WHERE(Type = CONST(Person));
        }
        field(21; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(22; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(23; "Job Posting Group"; Code[10])
        {
            Caption = 'Job Posting Group';
            TableRelation = "Job Posting Group";
        }
        field(24; Blocked; Option)
        {
            Caption = 'Blocked';
            OptionCaption = ' ,Posting,All';
            OptionMembers = " ",Posting,All;
        }
        field(29; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(30; Comment; Boolean)
        {
            CalcFormula = Exist("Comment Line" WHERE("Table Name" = CONST(Job),
                                                      "No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Customer Disc. Group"; Code[20])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(32; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(41; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(49; "Scheduled Res. Qty."; Decimal)
        {
            CalcFormula = Sum("Job Planning Line"."Quantity (Base)" WHERE("Job No." = FIELD("No."),
                                                                           "Schedule Line" = CONST(true),
                                                                           Type = CONST(Resource),
                                                                           "No." = FIELD("Resource Filter"),
                                                                           "Planning Date" = FIELD("Planning Date Filter")));
            Caption = 'Scheduled Res. Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Resource Filter"; Code[20])
        {
            Caption = 'Resource Filter';
            FieldClass = FlowFilter;
            TableRelation = Resource;
        }
        field(51; "Posting Date Filter"; Date)
        {
            Caption = 'Posting Date Filter';
            FieldClass = FlowFilter;
        }
        field(55; "Resource Gr. Filter"; Code[20])
        {
            Caption = 'Resource Gr. Filter';
            FieldClass = FlowFilter;
            TableRelation = "Resource Group";
        }
        field(56; "Scheduled Res. Gr. Qty."; Decimal)
        {
            CalcFormula = Sum("Job Planning Line"."Quantity (Base)" WHERE("Job No." = FIELD("No."),
                                                                           "Schedule Line" = CONST(true),
                                                                           Type = CONST(Resource),
                                                                           "Resource Group No." = FIELD("Resource Gr. Filter"),
                                                                           "Planning Date" = FIELD("Planning Date Filter")));
            Caption = 'Scheduled Res. Gr. Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(58; "Bill-to Name"; Text[50])
        {
            Caption = 'Bill-to Name';
        }
        field(59; "Bill-to Address"; Text[50])
        {
            Caption = 'Bill-to Address';
        }
        field(60; "Bill-to Address 2"; Text[50])
        {
            Caption = 'Bill-to Address 2';
        }
        field(61; "Bill-to City"; Text[30])
        {
            Caption = 'Bill-to City';
            TableRelation = IF ("Bill-to Country/Region Code" = CONST('')) "Post Code".City
            ELSE
            IF ("Bill-to Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Bill-to Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(63; "Bill-to County"; Text[30])
        {
            Caption = 'Bill-to County';
        }
        field(64; "Bill-to Post Code"; Code[20])
        {
            Caption = 'Bill-to Post Code';
            TableRelation = IF ("Bill-to Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Bill-to Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Bill-to Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(66; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(67; "Bill-to Country/Region Code"; Code[10])
        {
            Caption = 'Bill-to Country/Region Code';
            Editable = true;
            TableRelation = "Country/Region";
        }
        field(68; "Bill-to Name 2"; Text[50])
        {
            Caption = 'Bill-to Name 2';
        }
        field(117; Reserve; Option)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(1000; "WIP Method"; Code[20])
        {
            Caption = 'WIP Method';
            TableRelation = "Job WIP Method".Code WHERE(Valid = CONST(true));
        }
        field(1001; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(1002; "Bill-to Contact No."; Code[20])
        {
            AccessByPermission = TableData Contact = R;
            Caption = 'Bill-to Contact No.';
        }
        field(1003; "Bill-to Contact"; Text[50])
        {
            Caption = 'Bill-to Contact';
        }
        field(1004; "Planning Date Filter"; Date)
        {
            Caption = 'Planning Date Filter';
            FieldClass = FlowFilter;
        }
        field(1005; "Total WIP Cost Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                         "Job Complete" = CONST(false),
                                                                         Type = FILTER("Accrued Costs" | "Applied Costs" | "Recognized Costs")));
            Caption = 'Total WIP Cost Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1006; "Total WIP Cost G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                             Reversed = CONST(false),
                                                                             "Job Complete" = CONST(false),
                                                                             Type = FILTER("Accrued Costs" | "Applied Costs" | "Recognized Costs")));
            Caption = 'Total WIP Cost G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1007; "WIP Entries Exist"; Boolean)
        {
            CalcFormula = Exist("Job WIP Entry" WHERE("Job No." = FIELD("No.")));
            Caption = 'WIP Entries Exist';
            FieldClass = FlowField;
        }
        field(1008; "WIP Posting Date"; Date)
        {
            Caption = 'WIP Posting Date';
            Editable = false;
        }
        field(1009; "WIP G/L Posting Date"; Date)
        {
            CalcFormula = Min("Job WIP G/L Entry"."WIP Posting Date" WHERE(Reversed = CONST(false),
                                                                            "Job No." = FIELD("No.")));
            Caption = 'WIP G/L Posting Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1011; "Invoice Currency Code"; Code[10])
        {
            Caption = 'Invoice Currency Code';
            TableRelation = Currency;
        }
        field(1012; "Exch. Calculation (Cost)"; Option)
        {
            Caption = 'Exch. Calculation (Cost)';
            OptionCaption = 'Fixed FCY,Fixed LCY';
            OptionMembers = "Fixed FCY","Fixed LCY";
        }
        field(1013; "Exch. Calculation (Price)"; Option)
        {
            Caption = 'Exch. Calculation (Price)';
            OptionCaption = 'Fixed FCY,Fixed LCY';
            OptionMembers = "Fixed FCY","Fixed LCY";
        }
        field(1014; "Allow Schedule/Contract Lines"; Boolean)
        {
            Caption = 'Allow Schedule/Contract Lines';
        }
        field(1015; Complete; Boolean)
        {
            Caption = 'Complete';
        }
        field(1017; "Recog. Sales Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                         Type = FILTER("Recognized Sales")));
            Caption = 'Recog. Sales Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1018; "Recog. Sales G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                             Reversed = CONST(false),
                                                                             Type = FILTER("Recognized Sales")));
            Caption = 'Recog. Sales G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1019; "Recog. Costs Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                        Type = FILTER("Recognized Costs")));
            Caption = 'Recog. Costs Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1020; "Recog. Costs G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                            Reversed = CONST(false),
                                                                            Type = FILTER("Recognized Costs")));
            Caption = 'Recog. Costs G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1021; "Total WIP Sales Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                        "Job Complete" = CONST(false),
                                                                        Type = FILTER("Accrued Sales" | "Applied Sales" | "Recognized Sales")));
            Caption = 'Total WIP Sales Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1022; "Total WIP Sales G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                            Reversed = CONST(false),
                                                                            "Job Complete" = CONST(false),
                                                                            Type = FILTER("Accrued Sales" | "Applied Sales" | "Recognized Sales")));
            Caption = 'Total WIP Sales G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1023; "WIP Completion Calculated"; Boolean)
        {
            CalcFormula = Exist("Job WIP Entry" WHERE("Job No." = FIELD("No."),
                                                       "Job Complete" = CONST(true)));
            Caption = 'WIP Completion Calculated';
            FieldClass = FlowField;
        }
        field(1024; "Next Invoice Date"; Date)
        {
            CalcFormula = Min("Job Planning Line"."Planning Date" WHERE("Job No." = FIELD("No."),
                                                                         "Contract Line" = CONST(true),
                                                                         "Qty. to Invoice" = FILTER(<> 0)));
            Caption = 'Next Invoice Date';
            FieldClass = FlowField;
        }
        field(1025; "Apply Usage Link"; Boolean)
        {
            Caption = 'Apply Usage Link';
        }
        field(1026; "WIP Warnings"; Boolean)
        {
            CalcFormula = Exist("Job WIP Warning" WHERE("Job No." = FIELD("No.")));
            Caption = 'WIP Warnings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1027; "WIP Posting Method"; Option)
        {
            Caption = 'WIP Posting Method';
            OptionCaption = 'Per Job,Per Job Ledger Entry';
            OptionMembers = "Per Job","Per Job Ledger Entry";
        }
        field(1028; "Applied Costs G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                             Reverse = CONST(false),
                                                                             "Job Complete" = CONST(false),
                                                                             Type = FILTER("Applied Costs")));
            Caption = 'Applied Costs G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1029; "Applied Sales G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                             Reverse = CONST(false),
                                                                             "Job Complete" = CONST(false),
                                                                             Type = FILTER("Applied Sales")));
            Caption = 'Applied Sales G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1030; "Calc. Recog. Sales Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Task"."Recognized Sales Amount" WHERE("Job No." = FIELD("No.")));
            Caption = 'Calc. Recog. Sales Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1031; "Calc. Recog. Costs Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Task"."Recognized Costs Amount" WHERE("Job No." = FIELD("No.")));
            Caption = 'Calc. Recog. Costs Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1032; "Calc. Recog. Sales G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Task"."Recognized Sales G/L Amount" WHERE("Job No." = FIELD("No.")));
            Caption = 'Calc. Recog. Sales G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1033; "Calc. Recog. Costs G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job Task"."Recognized Costs G/L Amount" WHERE("Job No." = FIELD("No.")));
            Caption = 'Calc. Recog. Costs G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1034; "WIP Completion Posted"; Boolean)
        {
            CalcFormula = Exist("Job WIP G/L Entry" WHERE("Job No." = FIELD("No."),
                                                           "Job Complete" = CONST(true)));
            Caption = 'WIP Completion Posted';
            FieldClass = FlowField;
        }
        field(5060600; "Text Set ID Header"; Integer)
        {
            Caption = 'Text Set ID Header';
            Description = 'PR04';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5060601; "Text Set ID Footer"; Integer)
        {
            Caption = 'Text Set ID Footer';
            Description = 'PR04';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5292332; "Job No. Filter"; Code[20])
        {
            Caption = 'Job No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(5292333; "Job Line Type Filter"; Option)
        {
            Caption = 'Job Line Type Filter';
            Description = ' ,Service,Item,General,Traveling';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Service,Item,General,Traveling';
            OptionMembers = " ",Service,Item,General,Traveling;
        }
        field(5292334; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(5292335; "Sell-to Customer Name"; Text[50])
        {
            CalcFormula = Lookup(Customer.Name WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Customer Name';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292336; "Sell-to Customer Name 2"; Text[50])
        {
            CalcFormula = Lookup(Customer."Name 2" WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Customer Name 2';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292337; "Sell-to Address"; Text[50])
        {
            CalcFormula = Lookup(Customer.Address WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Address';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292338; "Sell-to Address 2"; Text[50])
        {
            CalcFormula = Lookup(Customer."Address 2" WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Address 2';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292339; "Sell-to City"; Text[30])
        {
            CalcFormula = Lookup(Customer.City WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to City';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292340; "Sell-to Contact"; Text[50])
        {
            CalcFormula = Lookup(Customer.Contact WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Contact';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292341; "Sell-to Post Code"; Code[20])
        {
            CalcFormula = Lookup(Customer."Post Code" WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Post Code';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Post Code";
            ValidateTableRelation = false;
        }
        field(5292342; "Sell-to Country/Region Code"; Code[10])
        {
            CalcFormula = Lookup(Customer."Country/Region Code" WHERE("No." = FIELD("Sell-to Customer No.")));
            Caption = 'Sell-to Country/Region Code';
            Description = 'LU Sell-to Customer No.';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Country/Region";
        }
        field(5292343; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE("Customer No." = FIELD("Sell-to Customer No."));
        }
        field(5292344; "Shipment Contact No."; Code[20])
        {
            Caption = 'Shipment Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(5292345; "Shipment Contact Name"; Text[50])
        {
            CalcFormula = Lookup(Contact.Name WHERE("No." = FIELD("Shipment Contact No.")));
            Caption = 'Shipment Contact Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292346; "Contact Company No."; Code[20])
        {
            Caption = 'Contact Company No.';
            Description = 'TR Contact WHERE (Type=CONST(Company))';
            TableRelation = Contact WHERE(Type = CONST(Company));
        }
        field(5292347; "Contact Company Name"; Text[50])
        {
            CalcFormula = Lookup(Contact.Name WHERE("No." = FIELD("Contact Company No.")));
            Caption = 'Contact Company Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292348; "Contact Person No."; Code[20])
        {
            Caption = 'Contact Person No.';
            Description = 'TR Contact WHERE (Type=CONST(Person))';
            TableRelation = Contact WHERE(Type = CONST(Person),
                                           "Company No." = FIELD("Contact Company No."));
        }
        field(5292349; "Contact Person Name"; Text[50])
        {
            CalcFormula = Lookup(Contact.Name WHERE("No." = FIELD("Contact Person No.")));
            Caption = 'Contact Person Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292350; "Job Type"; Code[10])
        {
            Caption = 'Job Type';
            Description = 'TR "Job Type"';
            TableRelation = "PR - Job Type";
        }
        field(5292351; "Current Version"; Code[10])
        {
            Caption = 'Current Version';
            Description = 'ne, TR Job Version';
            Editable = false;
            TableRelation = "PR - Version".Code WHERE("Job No." = FIELD("No."));
        }
        field(5292352; "Person Responsible 2"; Code[20])
        {
            Caption = 'Person Responsible 2';
            Description = 'TR Resource WHERE (Type=CONST(Person))';
            TableRelation = Resource WHERE(Type = CONST(Person));
        }
        field(5292353; "WBS Format"; Option)
        {
            Caption = 'WBS Format';
            Description = ' ,Without Level 1,Components only';
            OptionCaption = ' ,Without Level 1,Components only';
            OptionMembers = " ","Without Level 1","Components only";
        }
        field(5292354; "Percent Possibility %"; Decimal)
        {
            Caption = 'Percent Possibility %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5292355; "Estimated Realized %"; Decimal)
        {
            Caption = 'Estimated Realized %';
        }
        field(5292356; "Job Link"; Option)
        {
            Caption = 'Job Link';
            Description = 'ne  ,Main,Sub';
            Editable = false;
            OptionCaption = ' ,Main,Sub';
            OptionMembers = " ",Main,Sub;
        }
        field(5292357; "Job Link No."; Code[20])
        {
            Caption = 'Job Link No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292358; "Job Link Outline No."; Code[100])
        {
            Caption = 'Job Link Outline No.';
            TableRelation = Job;
        }
        field(5292359; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5292360; "Job Link Main Job No."; Code[20])
        {
            Caption = 'Project No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292361; "Job Link Hidden"; Boolean)
        {
            CalcFormula = Exist("PR - Job Line User View" WHERE("Job No." = FIELD("Job Link Main Job No."),
                                                                 "Login ID" = FIELD("Job Link User Filter"),
                                                                 "Form ID" = FIELD("Job Link Form Filter")));
            Caption = 'Job Link Hidden';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292362; "Job Link User Filter"; Code[50])
        {
            Caption = 'Job Link User Filter';
            Description = 'FF';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(5292363; "Job Link Form Filter"; Integer)
        {
            Caption = 'Job Link Form Filter';
            Description = 'FF';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(5292364; "Budget Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Budget Total Cost (LCY)';
            Editable = false;
        }
        field(5292365; "Budget Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Budget Total Price (LCY)';
            Editable = false;
        }
        field(5292366; "Total Price Released (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("PR - Job Sales Released"."Total Price Released (LCY)" WHERE("Job No." = FIELD("No."),
                                                                                            "Document Type" = CONST("Sales Order")));
            Caption = 'Total Price Released (LCY)';
            Description = 'CF Job Sales Confirmed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292367; "Usage Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Usage Total Cost (LCY)';
            Editable = false;
        }
        field(5292368; "Total Price Posted (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price Posted (LCY)';
            Editable = false;
        }
        field(5292369; "Realized % (Amount LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Realized % (Amount LCY)';
            Editable = false;
        }
        field(5292370; "Realized % Based on cost"; Decimal)
        {
            Caption = 'Realized % Based on cost';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            Editable = false;
        }
        field(5292371; "Realized %"; Decimal)
        {
            Caption = 'Realized %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292372; "Variance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Variance (LCY)';
            Editable = false;
        }
        field(5292373; "Last WIP Date"; Date)
        {
            CalcFormula = Max("PR - Job Line WIP Entry"."WIP Date" WHERE("Job No." = FIELD("No.")));
            Caption = 'Last WIP Date';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292374; "WIP Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line WIP Entry"."WIP Amount (LCY)" WHERE("Job No." = FIELD("No.")));
            Caption = 'WIP Amount (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292375; "Impending Losses (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Impending Losses (LCY)" WHERE("Job No." = FIELD("No.")));
            Caption = 'Impending Losses (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292376; "Prospective Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Prospective Cost (LCY)" WHERE("Job No." = FIELD("No.")));
            Caption = 'Prospective Cost (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292377; "WIP Not Posted"; Boolean)
        {
            CalcFormula = Exist("PR - Job Line WIP Entry" WHERE("Job No." = FIELD("No."),
                                                                 "WIP Posted" = CONST(false)));
            Caption = 'WIP Not Posted';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292378; "Variance %"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Variance %';
            Editable = false;
        }
        field(5292379; "Cost of Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("PR - Job Line WIP Entry"."Cost of Sales (LCY)" WHERE("Job No." = FIELD("No.")));
            Caption = 'Cost of Sales (LCY)';
            Description = 'CF Job Line Expected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292380; "Dimension 3 Code"; Code[20])
        {
            Caption = 'Dimension 3 Code';
        }
        field(5292381; "Dimension 4 Code"; Code[20])
        {
            Caption = 'Dimension 4 Code';
        }
        field(5292382; "Job Comment"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(167),
                                                               Code1 = FIELD("No."),
                                                               Int1 = CONST(0)));
            Caption = 'Job Comment';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292383; Category; Option)
        {
            Caption = 'Category';
            Description = ' ,Internal,Pipeline,Backlog';
            OptionCaption = ' ,Internal,Pipeline,Backlog';
            OptionMembers = " ",Internal,Pipeline,Backlog;
        }
        field(5292384; "Location for Inv. Requests"; Code[10])
        {
            Caption = 'Location for Inv. Requests';
            Description = 'TR Location';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(5292385; "Realized % (Base)"; Option)
        {
            Caption = 'Realized % (Base)';
            Description = ' ,Quantity,Cost';
            OptionCaption = ' ,Quantity,Cost';
            OptionMembers = " ",Quantity,Cost;
        }
        field(5292386; "Req. Wksh. Name"; Code[10])
        {
            Caption = 'Req. Wksh. Name';
            Description = 'TR "Requisition Wksh. Name"';
        }
        field(5292387; "Default Sales Code"; Code[10])
        {
            Caption = 'Default Sales Code';
            Description = 'TR "Job Sales Code"';
            TableRelation = "PR - Job Sales Code";
        }
        field(5292388; "Completion Reason Code"; Code[20])
        {
            Caption = 'Completion Reason Code';
            TableRelation = "PR - Completion Reason";
        }
        field(5292389; "Alternative of No."; Code[20])
        {
            Caption = 'Alternative of No.';
            TableRelation = Job;
        }
        field(5292390; "Job Phase Code"; Code[20])
        {
            Caption = 'Job Phase Code';
            TableRelation = "PR - Job Phase Code";
        }
        field(5292391; "Default Unit Price Base"; Option)
        {
            Caption = 'Default Unit Price Base';
            InitValue = Cost;
            OptionCaption = ',Cost,Price';
            OptionMembers = ,Cost,Price;
        }
        field(5292392; "Location for Purchase"; Code[10])
        {
            Caption = 'Location for Purchase';
            Description = 'TR Location';
            TableRelation = Location;
        }
        field(5292393; "WIP Basis"; Option)
        {
            Caption = 'WIP Basis';
            OptionCaption = 'Salescode,WIP-Position,Job';
            OptionMembers = Salescode,"WIP-Position",Job;
        }
        field(5292394; "WIP Transfer"; Code[20])
        {
            Caption = 'WIP Transfer';
            TableRelation = Job;
        }
        field(5292600; "OZ Mask"; Code[20])
        {
            Caption = 'OZ Mask';
        }
        field(5292630; "Alloy Surcharge Date"; Date)
        {
            Caption = 'Alloy Surcharge Date';
            Description = '#156100.01:999:09';
        }
        field(5292650; "Structure Type"; Option)
        {
            Caption = 'Structure Type';
            OptionCaption = ' ,,Bill of Quantities,Process and Controlling, BoQ and PaC';
            OptionMembers = " ",,BoQ,PaC,"BoQ and PaC";
        }
        field(5292652; "Is Project"; Boolean)
        {
            Caption = 'Project';
        }
        field(5292655; "Person Responsible 3"; Code[20])
        {
            Caption = 'Person Responsible 3';
            Description = 'TR Resource WHERE (Type=CONST(Person))';
            TableRelation = Resource WHERE(Type = CONST(Person));
        }
        field(5292656; "Person Responsible 4"; Code[20])
        {
            Caption = 'Person Responsible 4';
            Description = 'TR Resource WHERE (Type=CONST(Person))';
            TableRelation = Resource WHERE(Type = CONST(Person));
        }
        field(5292657; "Submission Date"; Date)
        {
            Caption = 'Submission Date';
        }
        field(5292658; "Submission Time"; Time)
        {
            Caption = 'Submission Time';
        }
        field(5292659; "Quote Valid Until"; Date)
        {
            Caption = 'Quote Valid Until';
        }
        field(5292660; "Quote delivered Date"; Date)
        {
            Caption = 'Quote delivered Date';
        }
        field(5292661; "Quote Date"; Date)
        {
            Caption = 'Quote Date';
        }
        field(5292662; "Negotiation Date"; Date)
        {
            Caption = 'Negotiation Date';
        }
        field(5292663; Subsection; Code[20])
        {
            Caption = 'Subsection';
            Description = 'TR Subsection';
        }
        field(5292664; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(5292665; "Price Fixing Completion"; Boolean)
        {
            Caption = 'Price Fixing Completion';
        }
        field(5292666; "Price Fixing Wage to"; Date)
        {
            Caption = 'Price Fixing Wage to';
        }
        field(5292667; "Measurement Level Required"; Boolean)
        {
            Caption = 'Measurement Level Required';
        }
        field(5292668; "Measurement Location Required"; Boolean)
        {
            Caption = 'Measurement Location Required';
        }
        field(5292669; "Price Fixing Material to"; Date)
        {
            Caption = 'Price Fixing Material to';
        }
        field(5292680; "Opportunity No."; Code[20])
        {
            Caption = 'Opportunity No.';
            TableRelation = Opportunity;
        }
        field(5292681; "BoQ blocked by"; Code[50])
        {
            Caption = 'BoQ Blocked by';
            TableRelation = "User Setup";
        }
        field(5292683; "Final Invoice Date"; Date)
        {
            Caption = 'Final Invoice Date';
        }
        field(5292684; "OZ Pos. Increase with"; Integer)
        {
            Caption = 'OZ Pos. Increase with';
            MinValue = 0;
        }
        field(5292685; "OZ Space instead of Null"; Boolean)
        {
            Caption = 'OZ Space instead of Null';
        }
        field(5292686; "Free OZ Allowed"; Boolean)
        {
            Caption = 'Free OZ Allowed';
        }
        field(5292687; "Unit Price Rounding Precision"; Decimal)
        {
            Caption = 'Unit Price Rounding Precision';
            DecimalPlaces = 0 : 5;
            InitValue = 0.00001;
        }
        field(5292750; "Default Unit of Measure Code"; Option)
        {
            Caption = 'Default Unit of Measure Code';
            Description = 'Base Unit of Measure,Sales Unit of Measure,Purchase Unit of Measure';
            OptionCaption = 'Base Unit of Measure,Sales Unit of Measure,Purchase Unit of Measure';
            OptionMembers = "Base Unit of Measure","Sales Unit of Measure","Purchase Unit of Measure";
        }
        field(5292751; "Standard Calc. View"; Option)
        {
            Caption = 'Standard Calc. View';
            Description = 'Calculation C1,Calculation C2,Calculation C3,Calculation C4';
            OptionCaption = 'Calculation C1,Calculation C2,Calculation C3,Calculation C4';
            OptionMembers = "Calculation C1","Calculation C2","Calculation C3","Calculation C4";
        }
        field(5292752; "Planning Date Calculation"; Date)
        {
            Caption = 'Planning Date Calculation';
        }
        field(5292753; "Planning Date Procurement"; Date)
        {
            Caption = 'Planning Date Procurement';
        }
        field(5292754; "Planning Date Sale"; Date)
        {
            Caption = 'Planning Date Sale';
        }
        field(5292755; "Procurement Planning required"; Boolean)
        {
            Caption = 'Procurement Planning required';
        }
        field(5292756; "Logging Control"; Boolean)
        {
            Caption = 'Logging Control';
        }
        field(5292757; "WIP Method CC"; Option)
        {
            Caption = 'WIP Method';
            OptionCaption = 'Cost Value,Sales Value,Cost of Sales,Percentage of Completion,Completed Contract';
            OptionMembers = "Cost Value","Sales Value","Cost of Sales","Percentage of Completion","Completed Contract";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; "Bill-to Customer No.")
        {
        }
        key(Key4; Description)
        {
        }
        key(Key5; Status)
        {
        }
        key(Key6; "Job Link", "Job Link No.", Status)
        {
        }
        key(Key7; Complete)
        {
        }
        key(Key8; "Job Link Outline No.", Complete)
        {
        }
        key(Key9; Complete, "Job Type")
        {
        }
        key(Key10; "Person Responsible")
        {
        }
        key(Key11; "Person Responsible 2")
        {
        }
        key(Key12; "Sell-to Customer No.")
        {
        }
        key(Key13; "Contact Company No.")
        {
        }
        key(Key14; "WIP Transfer")
        {
        }
        key(Key15; "Structure Type", "No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Bill-to Customer No.", "Starting Date", Status)
        {
        }
    }
}

