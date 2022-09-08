table 5138359 "Exp Atlas Client"
{
    Caption = 'Atlas Client';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[15])
        {
            Caption = 'Code';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
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

