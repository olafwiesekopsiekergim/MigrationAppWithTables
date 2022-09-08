table 5050280 "TE-Absence"
{
    Caption = 'TE-Absence';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "TE-Employee";
        }
        field(2; "Date From"; Date)
        {
            Caption = 'Date from';
        }
        field(3; "Date Until"; Date)
        {
            Caption = 'Date until';
        }
        field(4; Reason; Text[80])
        {
            Caption = 'Reason';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Date From", "Date Until")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

