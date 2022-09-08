table 5292347 "PR - Job Line Liquidity Entry"
{
    Caption = 'Job Line Liquidity Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(20; "Liquidity Type"; Option)
        {
            Caption = 'Liquidity Type';
            Description = ' ,Schedule,Request,Payment';
            OptionCaption = ' ,Schedule,Request,Payment';
            OptionMembers = " ",Schedule,Request,Payment;
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
        field(2220; "Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost (LCY)';
            Description = 'AF1';
        }
        field(2320; "Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost (LCY)';
            Description = 'AF1';
        }
        field(2530; "Sales Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Sales Line Amount (LCY)';
            Description = 'AF1';
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4020; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
        }
        field(5000; "-- Procurement"; Integer)
        {
            Caption = '-- Procurement';
            Enabled = false;
        }
        field(5910; "Document Area"; Option)
        {
            Caption = 'Document Area';
            Description = ' ,Purchase,Sale,,,,,,,,,Posted Purchase,Posted Sale';
            OptionCaption = ' ,Purchase,Sale,,,,,,,,,Posted Purchase,Posted Sale';
            OptionMembers = " ",Purchase,Sale,,,,,,,,,"Posted Purchase","Posted Sale";
        }
        field(5920; "Document Type"; Integer)
        {
            Caption = 'Document Type';
        }
        field(5921; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5922; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(8000; "-- Sale"; Integer)
        {
            Caption = '-- Sale';
            Enabled = false;
        }
        field(8100; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,,,Supplement,,Increase';
            OptionCaption = ' ,,,Supplement,,Increase';
            OptionMembers = " ",,,Supplement,,Increase;
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
        field(5292335; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Job Line Unique No.", "Job Procurement No.", Date, "Liquidity Type")
        {
            SumIndexFields = "Total Direct Cost (LCY)", "Total Cost (LCY)", "Sales Line Amount (LCY)";
        }
    }

    fieldgroups
    {
    }
}

