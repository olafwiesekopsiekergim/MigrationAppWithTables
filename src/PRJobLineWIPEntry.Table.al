table 5292346 "PR - Job Line WIP Entry"
{
    Caption = 'Job Line WIP Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(2320; "Total Cost Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Budget (LCY)';
            Editable = false;
        }
        field(2530; "Sales Line Amount Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Amount Budget (LCY)';
            Editable = false;
        }
        field(3000; "-- Schedule"; Integer)
        {
            Caption = '-- Expectation';
            Enabled = false;
        }
        field(3230; "Estimated Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Estimated Total Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(3250; "Estimated Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Estimated Total Price (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5000; "-- Procurement"; Integer)
        {
            Caption = '-- Procurement';
            Enabled = false;
        }
        field(5340; "Total Cost Procurement (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Procurement (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(6000; "-- Usage"; Integer)
        {
            Caption = '-- Usage';
            Enabled = false;
        }
        field(6340; "Total Cost Usage (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Usage (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(8000; "-- Sale"; Integer)
        {
            Caption = '-- Sale';
            Enabled = false;
        }
        field(8210; "Total Price Released (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price Released (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(8540; "Total Price Posted (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price Posted (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(9000; "-- Invoicing"; Integer)
        {
            Caption = '-- Invoicing';
            Enabled = false;
        }
        field(9520; "Invoicing Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Invoicing Total Price (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10000; "-- WIP Options"; Integer)
        {
            Caption = '-- WIP Options';
            Enabled = false;
        }
        field(10001; "WIP Method"; Option)
        {
            Caption = 'WIP Method';
            Editable = false;
            OptionCaption = ' ,Cost Value,Sales Value,Cost of Sales,Percentage of Completion,Completed Contract';
            OptionMembers = " ","Cost Value","Sales Value","Cost of Sales","Percentage of Completion","Completed Contract";
        }
        field(10010; "WIP Date"; Date)
        {
            Caption = 'WIP Date';
        }
        field(10011; "WIP Max. Cost Range"; Option)
        {
            Caption = 'WIP Max. Cost Range';
            Description = 'Cost Amount,Sales Amount';
            OptionCaption = 'Cost Amount,Sales Amount';
            OptionMembers = "Cost Amount","Sales Amount";
        }
        field(10012; "WIP Adm./Sales %"; Decimal)
        {
            Caption = 'WIP Adm./Sales %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(10020; "Exp.: Cost Calculation"; Boolean)
        {
            Caption = 'Exp.: Cost Calculation';
        }
        field(10021; "Exp.: Cost Released"; Boolean)
        {
            Caption = 'Exp.: Cost Released';
        }
        field(10022; "Exp.: Cost Estimated"; Boolean)
        {
            Caption = 'Exp.: Cost Estimated';
        }
        field(10030; "Exp.: Sale Calculation"; Boolean)
        {
            Caption = 'Exp.: Sale Calculation';
        }
        field(10031; "Exp.: Sale Released"; Boolean)
        {
            Caption = 'Exp.: Sale Released';
        }
        field(10032; "Exp.: Sale Estimated"; Boolean)
        {
            Caption = 'Exp.: Sale Estimated';
        }
        field(10100; "-- Expected Values"; Integer)
        {
            Caption = '-- Expected Values';
            Enabled = false;
        }
        field(10130; "Expected Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Total Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10150; "Expected Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Total Price (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10180; "WIP Maximum (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'WIP Maximum (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10200; "-- WIP Calculation"; Integer)
        {
            Caption = '-- WIP Calculation';
            Enabled = false;
        }
        field(10210; "Factor Sales Variance"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Factor Exp. Sales Variance';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(10220; "Factor Portion of Costs"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Factor Portion of Costs';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(10250; "WIP Revenue-based (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'WIP Revenue-based (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10260; "WIP Revenue-adjusted (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'WIP Revenue-adjusted (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10300; "-- WIP Values"; Integer)
        {
            Caption = '-- WIP Values';
            Enabled = false;
        }
        field(10310; "WIP Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'WIP Amount (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10320; "Impending Losses (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Impending Losses (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10330; "Prospective Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prospective Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10350; "Cost of Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Cost of Sales (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10400; "-- WIP Postings"; Integer)
        {
            Caption = '-- WIP Postings';
            Enabled = false;
        }
        field(10410; "Posted WIP Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Posted WIP Amount (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10420; "Posted Impending Losses (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Posted Impending Losses (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10430; "Posted Prospective Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Posted Prospective Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10450; "Posted Cost of Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Posted Cost of Sales (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(10490; "WIP Posted"; Boolean)
        {
            Caption = 'WIP Posted';
            Editable = false;
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292334; WBS; Code[50])
        {
            Caption = 'WBS';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Job Line Unique No.", "WIP Date")
        {
            SumIndexFields = "Expected Total Cost (LCY)", "Expected Total Price (LCY)", "WIP Amount (LCY)", "Impending Losses (LCY)", "Prospective Cost (LCY)", "Cost of Sales (LCY)";
        }
    }

    fieldgroups
    {
    }
}

