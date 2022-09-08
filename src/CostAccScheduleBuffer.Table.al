table 5000216 "CostAcc. Schedule Buffer"
{
    Caption = 'CostAcc. Schedule Buffer';

    fields
    {
        field(1; "Schedule Name"; Code[10])
        {
            Caption = 'Schedule Name';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Row No."; Code[10])
        {
            Caption = 'Row No.';
        }
        field(4; "Amount Fix"; Decimal)
        {
            Caption = 'Amount Fix';
        }
        field(5; "Amount Var"; Decimal)
        {
            Caption = 'Amount Var';
        }
        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
    }

    keys
    {
        key(Key1; "Schedule Name", "Line No.", "Row No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

