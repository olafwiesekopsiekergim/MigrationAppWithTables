table 5292356 "PR - Version Job"
{
    Caption = 'Version Job';
    DataCaptionFields = "No.";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
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
        field(6; Version; Code[10])
        {
            Caption = 'Version';
            Description = 'TR "Version".Code WHERE (Job No.=FIELD(No.))';
            NotBlank = true;
            TableRelation = "PR - Version".Code WHERE("Job No." = FIELD("No."));
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
            TableRelation = Resource;
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
        field(61; "Bill-to City"; Text[50])
        {
            Caption = 'Bill-to City';
        }
        field(63; County; Text[30])
        {
            CalcFormula = Lookup(Customer.County WHERE("No." = FIELD("Bill-to Customer No.")));
            Caption = 'County';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64; "Bill-to Post Code"; Code[20])
        {
            Caption = 'Bill-to Post Code';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
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
            TableRelation = "Country/Region";
        }
        field(68; "Bill-to Name 2"; Text[50])
        {
            CalcFormula = Lookup(Customer."Name 2" WHERE("No." = FIELD("Bill-to Customer No.")));
            Caption = 'Bill-to Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1000; "WIP Method"; Code[20])
        {
            Caption = 'WIP Method';
            TableRelation = "Job WIP Method" WHERE(Valid = CONST(true));
        }
        field(1001; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(1002; "Bill-to Contact No."; Code[20])
        {
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
            CalcFormula = Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                        "Job Complete" = CONST(false),
                                                                        Type = FILTER("Accrued Costs" | "Applied Sales" | "Recognized Costs")));
            Caption = 'Total WIP Cost Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1006; "Total WIP Cost G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                            Reversed = CONST(false),
                                                                            "Job Complete" = CONST(false),
                                                                            Type = FILTER("Accrued Costs" | "Applied Sales" | "Recognized Costs")));
            Caption = 'Total WIP Cost G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1007; "WIP Posted To G/L"; Boolean)
        {
            Caption = 'WIP Posted To G/L';
            Editable = false;
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
        field(1010; "Posted WIP Method Used"; Option)
        {
            Caption = 'Posted WIP Method Used';
            Editable = false;
            OptionCaption = ' ,Cost Value,Sales Value,Cost of Sales,Percentage of Completion,Completed Contract';
            OptionMembers = " ","Cost Value","Sales Value","Cost of Sales","Percentage of Completion","Completed Contract";
        }
        field(1011; "Invoice Currency Code"; Code[10])
        {
            Caption = 'Invoice Currency Code';
            TableRelation = Currency;
        }
        field(1012; "Exch. Calculation (Cost)"; Option)
        {
            Caption = 'Exch. Calculation (Cost)';
            OptionCaption = 'Fixed LCY,Fixed FCY';
            OptionMembers = "Fixed LCY","Fixed FCY";
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
        field(1016; "Calc. WIP Method Used"; Option)
        {
            Caption = 'Calc. WIP Method Used';
            Editable = false;
            OptionCaption = ' ,Cost Value,Sales Value,Cost of Sales,Percentage of Completion,Completed Contract';
            OptionMembers = " ","Cost Value","Sales Value","Cost of Sales","Percentage of Completion","Completed Contract";
        }
        field(1017; "Recog. Sales Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                        Type = FILTER("Recognized Sales")));
            Caption = 'Recog. Sales Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1018; "Recog. Sales G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                            Type = FILTER("Recognized Sales"),
                                                                            Reversed = CONST(false)));
            Caption = 'Recog. Sales G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1019; "Recog. Costs Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                         Type = FILTER("Recognized Costs")));
            Caption = 'Recog. Costs Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1020; "Recog. Costs G/L Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Job WIP G/L Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                             Type = FILTER("Recognized Costs"),
                                                                             Reversed = CONST(false)));
            Caption = 'Recog. Costs G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1021; "Total WIP Sales Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Job WIP Entry"."WIP Entry Amount" WHERE("Job No." = FIELD("No."),
                                                                        "Job Complete" = CONST(false),
                                                                        Type = FILTER("Accrued Sales" | "Applied Costs" | "Recognized Sales")));
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
                                                                            Type = FILTER("Accrued Sales" | "Applied Costs" | "Recognized Sales")));
            Caption = 'Total WIP Sales G/L Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1023; "Completion Calculated"; Boolean)
        {
            CalcFormula = Exist("Job WIP Entry" WHERE("Job No." = FIELD("No."),
                                                       "Job Complete" = FILTER(= true)));
            Caption = 'Completion Calculated';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1024; "Next Invoice Date"; Date)
        {
            CalcFormula = Min("Job Planning Line"."Planning Date" WHERE("Job No." = FIELD("No."),
                                                                         "Contract Line" = CONST(true),
                                                                         "Qty. Invoiced" = CONST(0)));
            Caption = 'Next Invoice Date';
            FieldClass = FlowField;
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
            Description = 'TR Contact';
            TableRelation = Contact;
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
            Description = 'TR Contact';
            TableRelation = Contact;
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
            TableRelation = Resource;
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
            Caption = 'Job Link Main Job No.';
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
        field(5292362; "Job Link User Filter"; Code[20])
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
        field(5292400; "MSP Export Only Planning"; Boolean)
        {
            Caption = 'MSP Export Only Planning';
        }
        field(5292401; "Position Numbering"; Option)
        {
            Caption = 'Position Numbering';
            Description = 'Automatic (1.1.1.),Dynamic (Performance+)';
            OptionCaption = 'Automatic (1.1.1.),Dynamic (Performance+)';
            OptionMembers = "Automatic (1.1.1.)","Dynamic (Performance+)";
        }
        field(5292402; "Rounding Prec. Calc. Prices"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rounding Prec. Calc. Prices';
        }
        field(5292403; "Default Sales Code"; Code[10])
        {
            Caption = 'Default Sales Code';
            Description = 'TR "Job Sales Code"';
            TableRelation = "PR - Job Sales Code";
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
        key(Key1; "No.", Version)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

