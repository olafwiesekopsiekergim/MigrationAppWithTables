table 5138360 "Exp Atlas User Setup"
{
    Caption = 'Atlas User Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = "User Setup";
        }
        field(2; "AES-Client"; Code[15])
        {
            Caption = 'AES-Client';
            TableRelation = "Exp Atlas Client";
        }
        field(10; "AES-User"; Text[30])
        {
            Caption = 'AES-User';
        }
        field(11; "AES-Password"; Text[30])
        {
            Caption = 'AES-Password';
        }
        field(100; Position; Text[35])
        {
            Caption = 'Position';
        }
        field(101; Name; Text[35])
        {
            Caption = 'Name';
        }
        field(102; "E-Mail"; Text[35])
        {
            Caption = 'E-Mail';
        }
        field(103; "Phone No."; Text[35])
        {
            Caption = 'Phone No.';
        }
        field(104; "Fax No."; Text[35])
        {
            Caption = 'Fax No.';
        }
    }

    keys
    {
        key(Key1; "User ID", "AES-Client")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

