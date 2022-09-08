table 5138381 "Exp Atlas User Storage"
{
    Caption = 'Atlas User Storage';

    fields
    {
        field(1; Id; Code[50])
        {
            Caption = 'Id';
        }
        field(10; InfoHash; Text[250])
        {
            Caption = 'InfoHash';
            Description = 'Hash der aktuellen Atlas Teilnehmer-Infomationen';
        }
        field(11; "last Upd. InfoHash"; DateTime)
        {
            Caption = 'last Upd. InfoHash';
        }
    }

    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

