table 5050262 "TE-Register"
{
    Caption = 'TE-Journal';

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(2; "From Entry No."; Integer)
        {
            Caption = 'From Entry  No.';
        }
        field(3; "To Entry No."; Integer)
        {
            Caption = 'To Entry No.';
        }
        field(4; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(5; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(6; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(7; "TE Journal Name"; Code[20])
        {
            Caption = 'TE Journal Name';
            //This property is currently not supported
            //TestTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Creation Date")
        {
        }
        key(Key3; "Source Code", "TE Journal Name", "Creation Date")
        {
        }
    }

    fieldgroups
    {
    }
}

