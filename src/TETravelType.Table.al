table 5050263 "TE-Travel-Type"
{
    Caption = 'TE-Travel-Type';

    fields
    {
        field(1; "Travel Type No."; Code[20])
        {
            Caption = 'Travel Type No.';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Voucher Type Boarding"; Code[20])
        {
            Caption = 'Voucher Type Boarding';
            TableRelation = "TE-Voucher Type";
        }
        field(12; "Voucher Type Lodging"; Code[20])
        {
            Caption = 'Voucher Type Lodging';
            TableRelation = "TE-Voucher Type";
        }
        field(13; "Voucher Type Driving"; Code[20])
        {
            Caption = 'Voucher Type Driving';
            TableRelation = "TE-Voucher Type";
        }
        field(14; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(15; Acceptance; Option)
        {
            Caption = 'Acceptance';
            OptionCaption = 'No,Vouchtypes,Expenses Groups,Vouchtypes+Expensesgroups';
            OptionMembers = No,Vouchtypes,"Expenses Groups","Vouchtypes+Expensesgroups";
        }
        field(16; "Payment in Kind Mode"; Option)
        {
            Caption = 'Payment in Kind Mode';
            OptionCaption = 'No Subtraction,Vouch-Rate,Substraction in Percentage Rate,Substraction in Percentage Day-Rate,Substraction Breakfastcost';
            OptionMembers = "No Subtraction","Vouch-Rate","Substraction in Percentage","Substraction in Percentage Dayrate","Substraction Breakfastcost";
        }
        field(17; "Acceptance Boarding"; Boolean)
        {
            Caption = 'Acceptance Boarding';
        }
        field(18; "Acceptance Lodging"; Boolean)
        {
            Caption = 'Acceptance Lodging';
        }
        field(19; "Acceptance Driving"; Boolean)
        {
            Caption = 'Acceptance Driving';
        }
        field(20; "Exclusion Travelinstrument 1"; Code[20])
        {
            Caption = 'Exclusion Travelinstrument 1';
            TableRelation = "TE-Voucher Type";
        }
        field(21; "Exclusion Travelinstrument 2"; Code[20])
        {
            Caption = 'Exclusion Travelinstrument 2';
            TableRelation = "TE-Voucher Type";
        }
        field(22; "Exclusion Travelinstrument 3"; Code[20])
        {
            Caption = 'Exclusion Travelinstrument 3';
            TableRelation = "TE-Voucher Type";
        }
        field(23; "Exclusion Travelinstrument 4"; Code[20])
        {
            Caption = 'Exclusion Travelinstrument 4';
            TableRelation = "TE-Voucher Type";
        }
        field(24; "Exclusion Travelinstrument 5"; Code[20])
        {
            Caption = 'Exclusion Travelinstrument 5';
            TableRelation = "TE-Voucher Type";
        }
        field(25; "Payment In Kind Breakfast %"; Decimal)
        {
            Caption = 'Payment In Kind Breakfast %';
        }
        field(26; "Payment In Kind Lunch %"; Decimal)
        {
            Caption = 'Payment In Kind Lunch %';
        }
        field(27; "Payment In Kind Dinner %"; Decimal)
        {
            Caption = 'Payment In Kind Dinner %';
        }
        field(28; "Consider Legal PIK"; Boolean)
        {
            Caption = 'Consider Legal Payment In Kind ';
        }
        field(29; "Acceptance Expenses Group"; Boolean)
        {
            Caption = 'Acceptance Expenses Group';
        }
        field(30; "Explanation Necessary"; Boolean)
        {
            Caption = 'Explanation Necessary';
        }
        field(31; "Authorization Necessary"; Boolean)
        {
            Caption = 'Authorization Necessary';
        }
        field(32; "Post Type"; Option)
        {
            Caption = 'Post Type';
            OptionCaption = ' ,Purchase';
            OptionMembers = " ",Purchase;
        }
        field(33; "Business Posting Group"; Code[10])
        {
            Caption = 'Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(34; "VAT Business Posting Group"; Code[10])
        {
            Caption = 'VAT Business Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(35; "Product Posting Group"; Code[10])
        {
            Caption = 'Product Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(36; "VAT Product Posting Group"; Code[10])
        {
            Caption = 'VAT Product Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(37; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            TableRelation = "G/L Account";
        }
        field(38; "G/L Account Acceptance"; Boolean)
        {
            Caption = 'G/L Account Acceptance';
        }
        field(39; Comment; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = CONST (5050263),
                                                         "Account No." = FIELD ("Travel Type No."),
                                                         "Part Account No." = CONST (0),
                                                         "Part Account Line No." = CONST (0)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(41; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(42; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(43; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(44; "Voucher Type Lodging 1 Day"; Code[20])
        {
            Caption = 'Voucher Type Lodging 1 Day';
            TableRelation = "TE-Voucher Type";
        }
        field(45; "Voucher Type Lodging Sev. Days"; Code[20])
        {
            Caption = 'Voucher Type Lodging Sev. Days';
            TableRelation = "TE-Voucher Type";
        }
        field(46; "Limiting Payment In Kind"; Option)
        {
            Caption = 'Limiting Payment In Kind';
            OptionCaption = 'No Limit,Limit Daily Flat Rate,Limit Daily Flat Rate Rest,Rest Payment in Kind';
            OptionMembers = "No Limit","Limit Daily Flat Rate","Limit Daily Flat Rate Rest","Rest Payment in Kind";
        }
        field(47; "Authorization Not Necessary"; Boolean)
        {
            Caption = 'Authorization Not Necessary';
        }
        field(48; "Authorization Main"; Boolean)
        {
            Caption = 'Authorization Main';
        }
        field(49; "Authorization Vice"; Boolean)
        {
            Caption = 'Authorization Vice';
        }
        field(50; "Authorization Personal"; Boolean)
        {
            Caption = 'Authorization Personal';
        }
        field(51; "Authorization Betriebsrat"; Boolean)
        {
            Caption = 'Authorization Betriebsrat';
        }
        field(52; "Voucher Type L. Dep. 1 Day"; Code[20])
        {
            Caption = 'Voucher Type L. Dep. 1 Day';
            TableRelation = "TE-Voucher Type";
        }
        field(53; "Voucher Type L. Dep. S. Days"; Code[20])
        {
            Caption = 'Voucher Type L. Dep. S. Days';
            TableRelation = "TE-Voucher Type";
        }
        field(54; "Acceptance Lodging Dep."; Boolean)
        {
            Caption = 'Acceptance Lodging Dep.';
        }
        field(55; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(56; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(57; "Job No./Customer"; Code[20])
        {
            Caption = 'Job No./Customer';
            TableRelation = IF ("Job Integration" = CONST (Job)) Job
            ELSE
            IF ("Job Integration" = CONST (Customer)) Customer;
        }
        field(58; "Job Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer';
            OptionMembers = Job,Customer;
        }
        field(59; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(60; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task";
        }
        field(61; "Amount Grant Necessary"; Decimal)
        {
            Caption = 'Amount Grant Necessary';
        }
        field(62; "Voucher Type Filter"; Text[150])
        {
            Caption = 'Voucher Type Filter';
        }
        field(63; "Voucher Type Category"; Code[20])
        {
            Caption = 'Voucher Type Category';
        }
        field(64; "Grant Steps"; Integer)
        {
            Caption = 'Grant Steps';
        }
        field(65; "Complete Meals"; Option)
        {
            Caption = 'Complete Meals';
            OptionCaption = ' ,Meals without deduction,Meals with deduction';
            OptionMembers = " ","Vollverpflegung ohne Mahlzeitenabzug","Vollverpflegung mit Mahlzeitenabzug";
        }
        field(66; "Check Destination"; Boolean)
        {
            Caption = 'Check Destination';
        }
        field(67; "Destination Filter"; Text[50])
        {
            Caption = 'Destination Filter';
        }
        field(68; "Inland/ Ausland"; Option)
        {
            Caption = 'Domestic/Foreign';
            OptionCaption = 'Both,Domestic,Foreign';
            OptionMembers = Beides,Inland,Ausland;
        }
        field(69; "Eigener Ort"; Boolean)
        {
            Caption = 'Private Location';
        }
        field(70; "Range Amount Grant Necessary"; Option)
        {
            Caption = 'Range Amount Grant Necessary';
            OptionCaption = ' ,Travel,Account,Both';
            OptionMembers = " ",Travel,Account,Both;
        }
        field(200; "gültig bis"; Date)
        {
            Caption = 'Valid Until';
        }
        field(201; Folgereiseart; Code[20])
        {
            Caption = 'Additional Travel Type';
            TableRelation = "TE-Travel-Type";
        }
    }

    keys
    {
        key(Key1; "Travel Type No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

