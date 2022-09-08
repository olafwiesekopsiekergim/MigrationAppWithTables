table 5050273 "TE-Travel-Purpose"
{
    Caption = 'TE-Travel-Purpose';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Purpose; Text[80])
        {
            Caption = 'Purpose';
        }
        field(3; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(4; User; Code[50])
        {
            Caption = 'User';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5; Range; Option)
        {
            Caption = 'Range';
            OptionCaption = 'All,User';
            OptionMembers = All,User;
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

