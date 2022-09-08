table 1114 "Cost Budget Buffer"
{
    Caption = 'Cost Budget Buffer';

    fields
    {
        field(1; "Cost Type No."; Code[20])
        {
            Caption = 'Cost Type No.';
            TableRelation = "Cost Type";
        }
        field(2; "Budget Name"; Code[10])
        {
            Caption = 'Budget Name';
            TableRelation = "Cost Budget Name";
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
            ClosingDates = true;
        }
        field(4; "Cost Center Code"; Code[20])
        {
            Caption = 'Cost Center Code';
            TableRelation = "Cost Center";
        }
        field(5; "Cost Object Code"; Code[20])
        {
            Caption = 'Cost Object Code';
            TableRelation = "Cost Object";
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
        }
    }

    keys
    {
        key(Key1; "Cost Type No.", "Cost Center Code", "Cost Object Code", Date)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

