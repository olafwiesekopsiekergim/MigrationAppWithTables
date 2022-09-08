table 42014835 "Servotion Common Setup"
{
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(31; "Lic. Last Successful Check"; DateTime)
        {
            Caption = 'License Last Successful Check';
        }
        field(32; "Lic. Succ. Req. License Count"; Integer)
        {
            Caption = 'License Last Successful Requested License Count';
        }
        field(33; "Lic. First Failed Check"; DateTime)
        {
            Caption = 'License First Failed Check';
        }
        field(34; "Lic. First Failed Message"; Text[250])
        {
            Caption = 'License First Failed Check Message';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

