table 5351552 "CESS - QueueFilter Param"
{
    Caption = 'SanScreen QueueFilter Parameter Table';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(10000; InsertNewEntry; Boolean)
        {
        }
        field(11000; "Source Rec Position"; Text[250])
        {
        }
        field(11001; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11002; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(11003; "Force NewEntry"; Boolean)
        {
        }
        field(11004; "Ignore Filter"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

