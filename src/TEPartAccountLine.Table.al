table 5050256 "TE-Part Account Line"
{
    // //01042015/Corr7.00 - Function AddNewLine

    Caption = 'TE-Part Account Line';
    PasteIsValid = false;

    fields
    {
        field(1; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "TE-Account"."No.";
        }
        field(2; "Part Account No."; Integer)
        {
            Caption = 'Part Account No.';
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Voucher No."; Code[20])
        {
            Caption = 'Voucher No.';
            Numeric = true;
            SQLDataType = Variant;
        }
        field(9; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "TE-Employee";
        }
        field(10; "Voucher Type"; Code[20])
        {
            Caption = 'Voucher Type';
            TableRelation = "TE-Voucher Type";
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; Date; Date)
        {
            Caption = 'Date';
        }
        field(13; "Time From"; Time)
        {
            Caption = 'Time From';
        }
        field(14; "Time Until"; Time)
        {
            Caption = 'Time Until';
        }
        field(15; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(17; Amount; Decimal)
        {
            Caption = 'Amount';
            DecimalPlaces = 2 : 5;
        }
        field(18; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(19; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(20; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            TableRelation = "G/L Account";
        }
        field(21; "Pay Type"; Code[20])
        {
            Caption = 'Pay Type';
        }
        field(22; "Pay Type Reverse"; Code[20])
        {
            Caption = 'Pay Type Reverse';
        }
        field(23; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Description = 'VAT,Tax,Only VAT,Sales Tax';
            Editable = false;
            OptionCaption = 'VAT,Tax,Only VAT,Sales Tax';
            OptionMembers = VAT,Tax,"Only VAT","Sales Tax";
        }
        field(24; "Post Type"; Option)
        {
            Caption = 'Post type';
            Description = ' ,Purchase';
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
        field(29; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
        field(30; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(31; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(32; "Job No./Customer"; Code[20])
        {
            Caption = 'Job No./Customer';
            TableRelation = IF ("Job-Integration" = CONST (Job)) Job
            ELSE
            IF ("Job-Integration" = CONST (Customer)) Customer;
        }
        field(33; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(34; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(35; "Account State"; Option)
        {
            Caption = 'Account State';
            Editable = false;
            OptionCaption = 'Entry,Entry Termination,Checked,Posted,Reversed';
            OptionMembers = Entry,"Entry Termination",Checked,Posted,Reversed;
        }
        field(36; Task; Code[20])
        {
            Caption = 'Task';
        }
        field(38; "Paid By"; Option)
        {
            Caption = 'Paid By';
            Editable = true;
            OptionCaption = 'Private,Employer,Credit Card 1,Credit Card 2';
            OptionMembers = Private,Employer,"Credit Card 1","Credit Card 2";
        }
        field(39; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 2 : 5;
            Editable = true;
            InitValue = 1;
        }
        field(40; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = false;
        }
        field(41; "Paid Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Paid Amount (LCY)';
            Editable = true;
        }
        field(42; "Tax Free Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Tax Free Amount (LCY)';
        }
        field(43; "Liable To Tax"; Boolean)
        {
            Caption = 'Liable To Tax';
            Editable = true;
        }
        field(44; "Charged Job Amount (LCY)"; Decimal)
        {
            Caption = 'Charged Job Amount (LCY)';
            SignDisplacement = 1;
        }
        field(45; "Total Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Amount (LCY)';
            Editable = true;
        }
        field(46; "Total Paid Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Paid Amount (LCY)';
            Editable = true;
        }
        field(47; "Total Taxfree Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Taxfree Amount (LCY)';
        }
        field(48; "Total Charged Job Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Charged Job Amount (LCY)';
        }
        field(49; "Total Liable Tax (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Liable Tax (LCY)';
            Editable = false;
        }
        field(50; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(51; "Post G/L Account"; Option)
        {
            Caption = 'Post G/L Account';
            OptionCaption = ' ,Posting,No Posting';
            OptionMembers = " ",Posting,"No Posting";
        }
        field(52; "Tachometer Departure"; Decimal)
        {
            Caption = 'Tachometer Departure';
        }
        field(53; "Tachometer Arrival"; Decimal)
        {
            Caption = 'Tachometer Arrival';
        }
        field(55; Duration; Decimal)
        {
            Caption = 'Duration';
            Editable = false;
        }
        field(56; "Vouch Classification"; Option)
        {
            Caption = 'Vouch Classification';
            OptionCaption = 'Automatical,Driving,Hotel/Payment,Else,Staff Car,Medical Costs';
            OptionMembers = Automatical,Driving,"Hotel/Payment","Else","Staff Car","Medical Costs";
        }
        field(60; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(61; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(62; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount';
        }
        field(63; "VAT Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Amount (LCY)';
        }
        field(64; "Total Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Amount';
            Editable = false;
        }
        field(65; "Selling Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Selling Amount';
        }
        field(66; "Issuing Invoice Y/N"; Boolean)
        {
            Caption = 'Issuing Invoice Y/N';
        }
        field(67; "Vouch-Type Category"; Option)
        {
            Caption = 'Vouch Type Category';
            OptionCaption = ' ,Driving Expenses,Boarding,Lodging,Entertainment,Miscellaneous,Payment in advance,Staff Car,Medical Costs';
            OptionMembers = " ","Driving Expenses",Boarding,Lodging,Entertainment,Miscellaneous,"Payment in advance","Staff Car","Medical Costs";
        }
        field(92; "Account Group Filter"; Code[20])
        {
            Caption = 'Account Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Account Group";
        }
        field(105; "Employee Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Employee" WHERE ("No." = FIELD ("Employee No."),
                                                     "Account Group" = FIELD ("Account Group Filter")));
            Caption = 'Employee Authorization';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "Group Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Account Group Member" WHERE ("TE-Employee" = FIELD ("Employee No."),
                                                                 Code = FIELD ("Account Group Filter")));
            Caption = 'Group Authorization';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; Source; Option)
        {
            Caption = 'Source';
            OptionCaption = 'Manual,Automatic';
            OptionMembers = Manual,Automatic;
        }
        field(113; "Connected Line"; Integer)
        {
            Caption = 'Connected Line';
        }
        field(114; "Line No. Old"; Integer)
        {
            Caption = 'Line No. Old';
        }
        field(115; "Source Of Amount"; Option)
        {
            Caption = 'Source Of Amount';
            OptionCaption = 'Vouch Rate,Vouch Type,Manual';
            OptionMembers = "Vouch Rate","Vouch Type",Manual;
        }
        field(116; "Offset-Account"; Code[20])
        {
            Caption = 'Offset Account';
            TableRelation = IF ("Offset-Account-Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Offset-Account-Type" = CONST ("G/L-Account")) "G/L Account"
            ELSE
            IF ("Offset-Account-Type" = CONST (Customer)) Customer;
        }
        field(117; "Offset-Account-Type"; Option)
        {
            Caption = 'Offset-Account-Type';
            OptionCaption = 'Vendor,G/L-Account,Customer';
            OptionMembers = Vendor,"G/L-Account",Customer;
        }
        field(119; "Voucher Amount"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."Total Amount (LCY)" WHERE ("Account No." = FIELD ("Account No."),
                                                                                 "Part Account No." = FIELD ("Part Account No."),
                                                                                 "Voucher No." = FIELD ("Voucher No.")));
            Caption = 'Voucher Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; Wizard; Boolean)
        {
            Caption = 'Wizard';
        }
        field(121; "Additional Line"; Boolean)
        {
            Caption = 'Additional Line';
        }
        field(122; "Voucher Type Distance"; Boolean)
        {
            Caption = 'Voucher Type Distance';
            FieldClass = Normal;
        }
        field(123; "Staff Car"; Code[20])
        {
            Caption = 'Staff Car';
        }
        field(124; "Submitted Amount (LCY)"; Decimal)
        {
            Caption = 'Submitted Amount (LCY)';
        }
        field(125; Subunit; Code[20])
        {
            Caption = 'Subunit';
        }
        field(126; "Job Item"; Code[20])
        {
            Caption = 'Job Item';
            TableRelation = Item;
        }
        field(127; "Job Item Variant Code"; Code[10])
        {
            Caption = 'Job Item Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Job Item"));
        }
        field(128; "Job-Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job-Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer';
            OptionMembers = Job,Customer;
        }
        field(129; "Work Order"; Code[20])
        {
            Caption = 'Work Order';
        }
        field(130; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L-Account,Work Order';
            OptionMembers = Sachkonto,Arbeitsauftrag;
        }
        field(131; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(132; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(133; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(134; "Job Task Code"; Code[20])
        {
            Caption = 'Job Task Code';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No./Customer"));
        }
        field(135; "Duration Tax"; Decimal)
        {
            Caption = 'Duration Tax';
            Editable = false;
            Enabled = false;
        }
        field(136; "Breakfast Provided"; Boolean)
        {
            Caption = 'Breakfast Provided';
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
        field(150; "Percentage Substraction"; Decimal)
        {
            Caption = 'Percentage Substraction';
        }
        field(151; Distraction; Option)
        {
            Caption = 'Distraction';
            OptionCaption = ' ,Percentage,Payment In Kind';
            OptionMembers = " ",Percentage,"Payment In Kind";
        }
        field(152; "Job Line Type"; Option)
        {
            Caption = 'Job Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(153; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
            InitValue = true;
        }
        field(154; "Payroll Version"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Payroll Version");
            Caption = 'Payroll Version';
            FieldClass = FlowField;
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
        }
        field(500; "Tax Reverse Entry"; Boolean)
        {
            Caption = 'Tax Reverse Entry';
        }
        field(501; "Tax Reverse Entry Type"; Option)
        {
            Caption = 'Tax Reverse Entry Type';
            OptionCaption = ' ,only taxable,complete';
            OptionMembers = " ","only taxable",complete;
        }
        field(502; Splitting; Boolean)
        {
            CalcFormula = Exist ("TE-Splitting" WHERE ("Table No." = CONST (5050256),
                                                      "Account No." = FIELD ("Account No."),
                                                      "Part Account No." = FIELD ("Part Account No."),
                                                      "Line No." = FIELD ("Line No.")));
            Caption = 'Splitting';
            Editable = false;
            FieldClass = FlowField;
        }
        field(503; "Account-Type"; Option)
        {
            Caption = 'Account-Type';
            InitValue = "GL-Account";
            OptionCaption = 'Vendor,GL-Account,Payroll,Customer,Work Order';
            OptionMembers = Vendor,"GL-Account",Payroll,Customer,"Work Order";
        }
        field(504; Accomodation; Boolean)
        {
        }
        field(505; Picture; BLOB)
        {
            Caption = 'Picture';
            Description = 'DeviceCameraPicture';
            SubType = Bitmap;
        }
        field(506; HasPicture; Boolean)
        {
            Caption = 'Picture';
            Description = 'DeviceCameraPicture';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Account No.", "Part Account No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Total Amount (LCY)", "Total Paid Amount (LCY)", "Total Taxfree Amount (LCY)", "Total Charged Job Amount (LCY)", "Total Liable Tax (LCY)", "Submitted Amount (LCY)";
        }
        key(Key2; "Account No.", "Part Account No.", "Voucher Type", Date)
        {
        }
        key(Key3; "Account No.", "Part Account No.", Date)
        {
        }
        key(Key4; "Account No.", "Part Account No.", "Voucher No.")
        {
            SumIndexFields = "Total Amount (LCY)";
        }
        key(Key5; "Account State", "Voucher Type")
        {
        }
        key(Key6; "Voucher Type", "Account State", Date, "Employee No.", "Vouch-Type Category")
        {
            SumIndexFields = "Total Amount (LCY)", "Total Paid Amount (LCY)", "Total Taxfree Amount (LCY)", "Total Charged Job Amount (LCY)";
        }
        key(Key7; "Employee No.", "Staff Car", "Voucher Type Distance", "Account State")
        {
            SumIndexFields = Quantity;
        }
        key(Key8; "Account No.", "Part Account No.", "Line No. Old")
        {
        }
        key(Key9; "Account State", "Job No./Customer")
        {
            SumIndexFields = "Total Charged Job Amount (LCY)";
        }
        key(Key10; "Account No.", "Part Account No.", "Connected Line")
        {
        }
        key(Key11; "Account No.", "Employee No.", "Vouch-Type Category")
        {
            SumIndexFields = "Total Amount (LCY)", "Total Paid Amount (LCY)", "Total Charged Job Amount (LCY)";
        }
        key(Key12; "Account No.", "Voucher Type Distance", "Staff Car", "Account State")
        {
            SumIndexFields = Quantity;
        }
        key(Key13; "Employee No.", Date, "Time From", "Staff Car")
        {
        }
    }

    fieldgroups
    {
    }
}

