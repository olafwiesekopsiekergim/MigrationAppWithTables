table 5138407 "CESS - Whitelist"
{
    // Tabelle wird nur temporär für die Anzeige gefüllt.

    Caption = 'SanScreen Whitelist';

    fields
    {
        field(1; ID; Text[30])
        {
            Caption = 'ID';
            Description = 'ID vom SanScreen System';
        }
        field(10; Locked; Boolean)
        {
            Caption = 'Locked';
        }
        field(100; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(101; Address; Text[250])
        {
            Caption = 'Address';
        }
        field(102; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(103; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(104; City; Text[30])
        {
            Caption = 'City';
        }
        field(200; Reason; Text[250])
        {
            Caption = 'Reason';
        }
        field(201; NAVUserID; Text[50])
        {
            Caption = 'User ID';
        }
        field(202; "Entry Date"; Text[30])
        {
            Caption = 'Entry Date';
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

