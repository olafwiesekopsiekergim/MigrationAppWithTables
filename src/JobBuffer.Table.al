table 1017 "Job Buffer"
{
    Caption = 'Job Buffer';

    fields
    {
        field(1; "Account No. 1"; Code[20])
        {
            Caption = 'Account No. 1';
        }
        field(2; "Account No. 2"; Code[20])
        {
            Caption = 'Account No. 2';
        }
        field(3; "Amount 1"; Decimal)
        {
            Caption = 'Amount 1';
        }
        field(4; "Amount 2"; Decimal)
        {
            Caption = 'Amount 2';
        }
        field(5; "Amount 3"; Decimal)
        {
            Caption = 'Amount 3';
        }
        field(6; "Amount 4"; Decimal)
        {
            Caption = 'Amount 4';
        }
        field(7; "Amount 5"; Decimal)
        {
            Caption = 'Amount 5';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "New Total"; Boolean)
        {
            Caption = 'New Total';
        }
    }

    keys
    {
        key(Key1; "Account No. 1", "Account No. 2")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

