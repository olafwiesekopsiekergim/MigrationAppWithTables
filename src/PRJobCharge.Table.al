table 5292335 "PR - Job Charge"
{
    Caption = 'Job Charge';

    fields
    {
        field(1; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Description = 'TR "Responsibility Center"';
            TableRelation = "Responsibility Center";
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            Description = 'TR Customer';
            TableRelation = Customer;
        }
        field(3; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(4; "Calculation Group"; Code[10])
        {
            Caption = 'Calculation Group';
            Description = 'TR "Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(8; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(9; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(2250; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(2350; "Extra Charge %"; Decimal)
        {
            Caption = 'Extra Charge %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2642; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Responsibility Center", "Customer No.", "Job No.", "Calculation Group", "Starting Date", "Ending Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

