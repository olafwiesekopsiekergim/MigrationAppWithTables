table 5138408 "CESS - Sanctionlist"
{
    // Tabelle wird nur temporär für die Anzeige gefüllt.

    Caption = 'SanScreen Sanctionlist';

    fields
    {
        field(1; List; Text[30])
        {
            Caption = 'List';
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(10; Enabled; Boolean)
        {
            Caption = 'enabled';
        }
        field(11; Created; Text[30])
        {
            Caption = 'created';
        }
        field(12; "Last released"; Text[30])
        {
            Caption = 'last released';
        }
        field(13; Modified; Text[30])
        {
            Caption = 'modified';
        }
        field(50; Licensed; Boolean)
        {
            Caption = 'Licensed';
        }
        field(100; ListIndex; Integer)
        {
            Caption = 'ListIndex';
            Description = 'nur intern';
        }
    }

    keys
    {
        key(Key1; List)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

