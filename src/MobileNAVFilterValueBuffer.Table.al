table 42012839 "MobileNAV FilterValue Buffer"
{
    Caption = 'FilterValue Buffer';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(3; "Code"; Text[100])
        {
            Caption = 'Code';
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(5; IsOption; Boolean)
        {
            Caption = 'IsOption';
        }
    }

    keys
    {
        key(Key1; "Table No.", "Field No.", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

