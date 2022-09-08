table 5292366 "PR - Job Travel Code"
{
    Caption = 'Job Travel Code';

    fields
    {
        field(1; Module; Option)
        {
            Caption = 'Module';
            Description = 'General,Job,Customer';
            OptionCaption = 'General,Job,Customer';
            OptionMembers = General,Job,Customer;
        }
        field(2; "Module No."; Code[20])
        {
            Caption = 'Module No.';
            Description = 'MTR 1';
            TableRelation = IF (Module = CONST (Job)) Job
            ELSE
            IF (Module = CONST (Customer)) Customer;
        }
        field(3; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1200; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(1310; Reimbursement; Boolean)
        {
            Caption = 'Reimbursement';
        }
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(2010; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2050; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = 'TR Unit of Measure';
            TableRelation = "Unit of Measure";
        }
        field(2110; "Purch. Currency Code"; Code[10])
        {
            Caption = 'Purch. Currency Code';
            Description = 'TR Currency';
            TableRelation = Currency;
        }
        field(2111; "Purch. Currency Date"; Date)
        {
            Caption = 'Purch. Currency Date';
        }
        field(2112; "Purch. Currency Factor"; Decimal)
        {
            Caption = 'Proc. Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = '0:15';
            Editable = false;
            MinValue = 0;
        }
        field(2120; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            Description = 'AF2';
        }
        field(2130; "Total Direct Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2200; "Direct Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost (LCY)';
            Description = 'AF2';
        }
        field(2220; "Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2250; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(2300; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
            Description = 'AF2';
        }
        field(2320; "Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2500; "Unit Price (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price (LCY)';
            Description = 'AF2';
        }
        field(2520; "Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2530; "Sales Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Amount (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(2610; "Sales Currency Code"; Code[10])
        {
            Caption = 'Sales Currency Code';
            TableRelation = Currency;
        }
        field(2611; "Sales Currency Date"; Date)
        {
            Caption = 'Sales Currency Date';
        }
        field(2612; "Sales Currency Factor"; Decimal)
        {
            Caption = 'Sales Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(2620; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(2630; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
            Description = 'ne';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Module, "Module No.", "Code")
        {
            Clustered = true;
        }
        key(Key2; Module, "Module No.", "Work Type Code")
        {
        }
    }

    fieldgroups
    {
    }
}

