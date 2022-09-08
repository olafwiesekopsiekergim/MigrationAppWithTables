table 5050257 "TE-Ledger Entry"
{
    Caption = 'TE Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; Description2; Text[80])
        {
            Caption = 'Description2';
        }
        field(4; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "TE-Employee";
        }
        field(5; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = true;
        }
        field(7; "Amount Payment (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Payment (LCY)';
            Editable = true;
        }
        field(8; "Taxfree Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Taxfree Amount (LCY)';
        }
        field(10; "Charged Amount Job (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Charged Amount Job (LCY)';
        }
        field(11; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(12; "TE-Voucher Type"; Code[20])
        {
            Caption = 'TE-Voucher Type';
            TableRelation = "TE-Voucher Type";
        }
        field(13; "Amount Tax Liabilty"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Tax Liabilty';
        }
        field(14; "Voucher Category"; Option)
        {
            Caption = 'Voucher Category';
            OptionCaption = ' ,Driving Expenses,Boarding,Lodging,Entertainment,miscellaneous,payment in advance,Staff Car';
            OptionMembers = " ","Driving Expenses",Boarding,Lodging,Entertainment,miscellaneous,"payment in advance","Staff Car";
        }
        field(15; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            NotBlank = true;
        }
        field(18; "Period Start Date"; Date)
        {
            Caption = 'Period Startdate';
            NotBlank = true;
        }
        field(20; "Period Final Date"; Date)
        {
            Caption = 'Period Final Date';
            NotBlank = true;
        }
        field(25; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            TableRelation = "G/L Account";
        }
        field(26; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(27; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(28; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(30; Kilometer; Decimal)
        {
            Caption = 'Kilometer';
        }
        field(31; "Staff Car Kilometer"; Decimal)
        {
            Caption = 'Staff Car Kilometer';
        }
        field(35; "Tax Flat"; Decimal)
        {
            Caption = 'Tax Flat';
        }
        field(36; "Tax Regular"; Decimal)
        {
            Caption = 'Tax Regular';
        }
        field(37; "Taxfree Not Exhausted"; Decimal)
        {
            Caption = 'Taxfree Not Exhausted';
        }
        field(41; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(42; Postdescription; Text[50])
        {
            Caption = 'Postdescription';
        }
        field(43; "Account Date"; Date)
        {
            Caption = 'Account Date';
        }
        field(44; "Post Date"; Date)
        {
            Caption = 'Post Date';
        }
        field(45; "Offset Account Type"; Option)
        {
            Caption = 'Offset Account Type';
            OptionCaption = 'Vendor,G/L Account,Payroll,Incoming Invoice';
            OptionMembers = Kreditor,Sachkonto,Lohn,"Kreditorisch Rechnung";
        }
        field(46; "Offset Account No."; Code[20])
        {
            Caption = 'Offset account No.';
            TableRelation = IF ("Offset Account Type" = CONST (Kreditor)) Vendor
            ELSE
            IF ("Offset Account Type" = CONST (Sachkonto)) "G/L Account"
            ELSE
            IF ("Offset Account Type" = CONST (Lohn)) Employee;
        }
        field(47; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(48; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Account,Credit Memo';
            OptionMembers = Account,"Credit Memo";
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
        field(92; "Authorization Group Filter"; Code[20])
        {
            Caption = 'Authorization Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Account Group";
        }
        field(105; "Authorization Employee"; Boolean)
        {
            CalcFormula = Exist ("TE-Employee" WHERE ("No." = FIELD ("Employee No."),
                                                     "Account Group" = FIELD ("Authorization Group Filter")));
            Caption = 'Authorization Employee';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "Authorization Group"; Boolean)
        {
            CalcFormula = Exist ("TE-Account Group Member" WHERE ("TE-Employee" = FIELD ("Employee No."),
                                                                 Code = FIELD ("Authorization Group Filter")));
            Caption = 'Authorization Group';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "Pay Date"; Date)
        {
            Caption = 'Pay Date';
        }
        field(108; "Tax Free"; Boolean)
        {
            Caption = 'Tax Fre';
        }
        field(109; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(110; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(111; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(112; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Employee No.", "Entry No.")
        {
        }
        key(Key3; "Employee No.", "TE-Voucher Type", "Post Date", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Voucher Category")
        {
            SumIndexFields = "Amount (LCY)", "Amount Payment (LCY)", "Taxfree Amount (LCY)", "Charged Amount Job (LCY)", Quantity, Kilometer, "Staff Car Kilometer", "Tax Flat", "Tax Regular", "Taxfree Not Exhausted";
        }
        key(Key4; "Account No.", "Post Date")
        {
        }
        key(Key5; "External Document No.", "Post Date")
        {
        }
        key(Key6; "TE-Voucher Type")
        {
        }
        key(Key7; "Job No.")
        {
            SumIndexFields = "Charged Amount Job (LCY)";
        }
    }

    fieldgroups
    {
    }
}

