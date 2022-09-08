table 5050251 "TE-Voucher Type"
{
    Caption = 'TE-Voucher Type';
    DataCaptionFields = "No.", Description;
    Permissions = TableData "TE-Ledger Entry" = rimd;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Search Word"; Code[50])
        {
            Caption = 'Search Word';
        }
        field(4; "Payed By"; Option)
        {
            Caption = 'Payed By';
            OptionCaption = ' ,Private,Employer';
            OptionMembers = " ",Private,Employer;
        }
        field(5; Category; Option)
        {
            Caption = 'Category';
            OptionCaption = ' ,Driving Expenses,Boarding,Lodging,Entertainment,Miscellaneous,Payment in Advance,Staff Car';
            OptionMembers = " ","Driving Expenses",Boarding,Lodging,Entertainment,Miscellaneous,"Payment in Advance","Staff Car","Medical Costs";
        }
        field(6; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Caption';
            OptionMembers = " ",Caption;
        }
        field(7; "Legal Voucher Type"; Option)
        {
            Caption = 'Legal Vouch Type';
            OptionCaption = ' ,Boarding,Lodging,KM Car,KM Motorbike,KM Moped,Payment in Kind Breakfast,Payment in Kind Lunch,Payment in Kind Dinner,Breakfast Deduction,Passenger Surcharge Car,Passenger Surcharge Motorbike,KM Bicycle,KM Staff Car,Commuting I,Commuting II,Lodging Delegation';
            OptionMembers = " ",Boarding,Lodging,"KM Car","KM Motorbike","KM Moped","Payment in Kind Breakfast","Payment in Kind Lunch","Payment in Kind Dinner","Breakfast Deduction","Passenger Surcharge Car","Passenger Surcharge Motorbike","KM Bicycle","KM Staff Car","Commuting I","Commuting II","Lodging Delegation";
        }
        field(10; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            TableRelation = "G/L Account";
        }
        field(11; "Pay Type"; Code[20])
        {
            Caption = 'Pay Type';
            Editable = true;
        }
        field(12; "Proposed Pay Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Proposed Pay Amount';
        }
        field(13; "Taxfree Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Taxfree Amount';
        }
        field(14; "Liable To Tax"; Boolean)
        {
            Caption = 'Liable To Tax';
        }
        field(15; "Fixed Amount"; Boolean)
        {
            Caption = 'Fixed Amount';
        }
        field(16; "Amount To Charge"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount To Charge';
        }
        field(17; "Additional Voucher Type"; Code[20])
        {
            Caption = 'Additional Voucher Type';
            TableRelation = "TE-Voucher Type";
        }
        field(18; "Date Check"; Boolean)
        {
            Caption = 'Date Check';
            InitValue = true;
        }
        field(19; "Chargable To Job"; Boolean)
        {
            Caption = 'Chargable To Job';
            InitValue = true;
        }
        field(20; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(21; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(22; "Maximal Quantity"; Decimal)
        {
            Caption = 'Maximal Quantity';
        }
        field(23; "Maximum Amount"; Decimal)
        {
            Caption = 'Maximum Amount';
        }
        field(24; "Post Type"; Option)
        {
            Caption = 'Post Type';
            OptionCaption = ' ,Purchase';
            OptionMembers = " ",Purchase;
        }
        field(25; "Business Posting Group"; Code[10])
        {
            Caption = 'Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(26; "VAT Business Posting Group"; Code[10])
        {
            Caption = 'VAT Business Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(27; "Product Posting Group"; Code[10])
        {
            Caption = 'Product Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(28; "VAT Product Posting Group"; Code[10])
        {
            Caption = 'VAT Product Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(29; "Additional Pay Type"; Code[20])
        {
            Caption = 'Additional Pay Type';
        }
        field(30; "100% Rule"; Boolean)
        {
            Caption = '100% Rule';
        }
        field(31; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(32; "Employee Filter"; Code[20])
        {
            Caption = 'Employee Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Employee";
        }
        field(33; "Shortcut Dimension 1 Filter"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(34; "Shortcut Dimension 2 Filter"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(35; Split; Boolean)
        {
            Caption = 'Split';
        }
        field(36; "Key"; Decimal)
        {
            Caption = 'Key';
        }
        field(37; "Additional VT. Calculation"; Option)
        {
            Caption = 'Additional VT. Calculation';
            OptionCaption = 'Normal,Splitting,Passenger,Tax Base,Tax Amount,Rest,Payment Amount,Percentage Kilometer,Limiting,Balance';
            OptionMembers = Normal,Splitting,Passenger,"Tax Base","Tax Amount",Rest,"Payment Amount","Percentage Kilometer",Limiting,Balance;
        }
        field(38; "Changeoption Amount"; Option)
        {
            Caption = 'Changeoption Amount';
            OptionCaption = 'Change,No Change,Only Administrator';
            OptionMembers = Change,"No Change","Only Administrator";
        }
        field(39; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(40; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(41; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(42; "Job No./Customer"; Code[20])
        {
            Caption = 'Job No./Customer';
            TableRelation = IF ("Job Integration" = CONST (Job)) Job
            ELSE
            IF ("Job Integration" = CONST (Customer)) Customer;
        }
        field(43; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(44; "Charge Quotient Job"; Decimal)
        {
            Caption = 'Charge Quotient Job';
            InitValue = 100;
        }
        field(45; "G/L Account Source"; Option)
        {
            Caption = 'G/L Account Source';
            OptionCaption = 'Vouch Type,Employee,Travel Type,Array';
            OptionMembers = "Vouch Type",Employee,"Travel Type","Array";
        }
        field(46; "Voucher Type Driving Staff Car"; Code[20])
        {
            Caption = 'Voucher Type Driving Staff Car';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(47; Comment; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = CONST (5050251),
                                                         "Account No." = FIELD ("No."),
                                                         "Part Account No." = CONST (0),
                                                         "Part Account Line No." = CONST (0)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Vouchertype Distance"; Boolean)
        {
            Caption = 'Vouchertype Distance';
        }
        field(49; "Tax Not Clearable"; Boolean)
        {
            Caption = 'Tax Not Clearable';
        }
        field(50; "Without Tax Exemption"; Boolean)
        {
            Caption = 'Without Tax Exemption';
        }
        field(51; "Hour Calculation"; Option)
        {
            Caption = 'Hour Calculation';
            OptionCaption = 'Hours From,Hours Until,Round Off,Round Up,Round Exact,Exact Time,Irrelevant';
            OptionMembers = "Hours From","Hours Until","Round Off","Round Up","Round Exact","Exact Time",Irrelevant;
        }
        field(52; "No. Serie"; Code[10])
        {
            Caption = 'No. Serie';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(53; "Pay Type Payment"; Code[20])
        {
            Caption = 'Pay Type Payment';
        }
        field(54; "Pay Type Certificate"; Code[20])
        {
            Caption = 'Pay Type Certificate';
        }
        field(55; Certifiable; Boolean)
        {
            Caption = 'Certifiable';
        }
        field(56; "Payed By Not Changeable"; Boolean)
        {
            Caption = 'Payed By Not Changeable';
        }
        field(60; "Charge Tachometer"; Boolean)
        {
            Caption = 'Charge Tachometer';
        }
        field(61; "Job Item"; Code[20])
        {
            Caption = 'Job Item';
            TableRelation = Item;
        }
        field(62; "Job Item Variant Code"; Code[10])
        {
            Caption = 'Job Item Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Job Item"));
        }
        field(63; "Job Item Price Calculation"; Option)
        {
            Caption = 'Job Item Price Calculation';
            OptionCaption = 'No,Only Item,Minimal Price,Maximal Price';
            OptionMembers = No,"Only Item","Minimal Price","Maximal Price";
        }
        field(70; "Total Amount (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Ledger Entry"."Amount (LCY)" WHERE ("TE-Voucher Type" = FIELD ("No."),
                                                                      "Employee No." = FIELD ("Employee Filter"),
                                                                      "Post Date" = FIELD ("Date Filter"),
                                                                      "Shortcut Dimension 1 Code" = FIELD ("Shortcut Dimension 1 Filter"),
                                                                      "Shortcut Dimension 2 Code" = FIELD ("Shortcut Dimension 2 Filter")));
            Caption = 'Total Amount (ACY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Total Payment (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Ledger Entry"."Amount Payment (LCY)" WHERE ("TE-Voucher Type" = FIELD ("No."),
                                                                              "Employee No." = FIELD ("Employee Filter"),
                                                                              "Post Date" = FIELD ("Date Filter"),
                                                                              "Shortcut Dimension 1 Code" = FIELD ("Shortcut Dimension 1 Filter"),
                                                                              "Shortcut Dimension 2 Code" = FIELD ("Shortcut Dimension 2 Filter")));
            Caption = 'Total Payment (ACY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Total Charged (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Ledger Entry"."Charged Amount Job (LCY)" WHERE ("TE-Voucher Type" = FIELD ("No."),
                                                                                  "Employee No." = FIELD ("Employee Filter"),
                                                                                  "Post Date" = FIELD ("Date Filter"),
                                                                                  "Shortcut Dimension 1 Code" = FIELD ("Shortcut Dimension 1 Filter"),
                                                                                  "Shortcut Dimension 2 Code" = FIELD ("Shortcut Dimension 2 Filter")));
            Caption = 'Total Charged (ACY)';
            DecimalPlaces = 2 : 2;
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Total Quantity"; Decimal)
        {
            CalcFormula = Sum ("TE-Ledger Entry".Quantity WHERE ("TE-Voucher Type" = FIELD ("No."),
                                                                "Employee No." = FIELD ("Employee Filter"),
                                                                "Post Date" = FIELD ("Date Filter"),
                                                                "Shortcut Dimension 1 Code" = FIELD ("Shortcut Dimension 1 Filter"),
                                                                "Shortcut Dimension 2 Code" = FIELD ("Shortcut Dimension 2 Filter")));
            Caption = 'Total Quantity';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Lines Existing"; Boolean)
        {
            CalcFormula = Exist ("TE-Rate" WHERE ("Voucher Type" = FIELD ("No.")));
            Caption = 'Lines Existing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "With Duration"; Boolean)
        {
            Caption = 'With Duration';
        }
        field(76; "Dimensions from Staff-Car"; Boolean)
        {
            Caption = 'Dimensions from Staff-Car';
        }
        field(77; "Entry Negative"; Boolean)
        {
            Caption = 'Entry Negative';
        }
        field(78; "Drive Type"; Option)
        {
            Caption = 'Drive Type';
            OptionCaption = ' ,Car,Train,Plane,Staff Car,Leased Car';
            OptionMembers = " ",Auto,Bahn,Flugzeug,Mietwagen,Dienstwagen;
        }
        field(79; "Ignore Description"; Boolean)
        {
            Caption = 'Ignore Description';
        }
        field(80; "Rounding Factor Hours"; Option)
        {
            Caption = 'Rounding Factor Hours';
            OptionCaption = 'No Rounding,Exact Hour,Hour Rounded Up,Hour Rounded Off';
            OptionMembers = "No Rounding","Exact Hour","Hour Rounded Up","Hour Rounded Off";
        }
        field(81; "Pay Type Payment Reverse"; Code[20])
        {
            Caption = 'Pay Type Payment Reverse';
        }
        field(82; "Pay Type Reverse"; Code[20])
        {
            Caption = 'Pay Type Reverse';
        }
        field(83; "Additional Pay Type Reverse"; Code[20])
        {
            Caption = 'Additional Pay Type Reverse';
        }
        field(84; Accomodation; Boolean)
        {
            Caption = 'Accomodation';
        }
        field(85; "M Certificate"; Boolean)
        {
            Caption = 'M Certificate';
        }
        field(86; "Pay Type Certificate Reverse"; Code[20])
        {
            Caption = 'Pay Type Reverse Certificate';
        }
        field(130; "Payroll Version"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Payroll Version");
            Caption = 'Payroll Version';
            FieldClass = FlowField;
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(131; "Job Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer,Work Order';
            OptionMembers = Job,Customer,"Work Order";
        }
        field(132; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(133; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(134; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(135; "Amount as Tax"; Boolean)
        {
            Caption = 'Amount as Tax';
        }
        field(136; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No./Customer"));
        }
        field(137; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(138; "Tax-Calculation"; Option)
        {
            Caption = 'Tax-Calculation';
            OptionCaption = ' ,Regular Tax,Flat Tax';
            OptionMembers = " ","Regular Tax","Flat Tax";
        }
        field(139; "Tax Percentage"; Decimal)
        {
            Caption = 'Tax Percentage';
        }
        field(140; "Voucher Driving Private"; Code[20])
        {
            Caption = 'Voucher Driving Private';
            TableRelation = "TE-Voucher Type";
        }
        field(141; "Voucher Driving Home"; Code[20])
        {
            Caption = 'Voucher Driving Home';
            TableRelation = "TE-Voucher Type";
        }
        field(142; "Posting Groups from Country"; Boolean)
        {
            Caption = 'Posting Groups from Country';
        }
        field(143; "Business Posting Group Sales"; Code[10])
        {
            Caption = 'Business Posting Group Sales';
            TableRelation = "Gen. Business Posting Group";
        }
        field(144; "VAT Bus. Posting Group Sales"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group Sales';
            TableRelation = "VAT Business Posting Group";
        }
        field(145; "Product Posting Group Sales"; Code[10])
        {
            Caption = 'Product Posting Group Sales';
            TableRelation = "Gen. Product Posting Group";
        }
        field(146; "VAT Prod.Posting Group Sales"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group Sales';
            TableRelation = "VAT Product Posting Group";
        }
        field(147; "GL-Account Sales"; Code[20])
        {
            Caption = 'GL-Account Sales';
            TableRelation = "G/L Account";
        }
        field(200; "Flat Tax Maximum"; Option)
        {
            Caption = 'Flat Tax Maximum';
            OptionCaption = ',Daily Flatrate,Actual Flatrate';
            OptionMembers = " ",Tagespauschale,"Aktuelle Pauschale";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Description)
        {
        }
    }

    fieldgroups
    {
    }
}

