table 5100922 "DIS - Sequence Notification"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Sequence Notification';

    fields
    {
        field(1; "Sequence Code"; Code[20])
        {
            Caption = 'Sequence Code';
            TableRelation = "DIS - Sequence Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(25; "Group Notifications"; Option)
        {
            Caption = 'Group Notifications';
            OptionCaption = 'None,After Sequence,Hourly';
            OptionMembers = "None",Sequence,Hour;
        }
        field(40; Recipient; Text[250])
        {
            Caption = 'Recipient';
            NotBlank = true;
        }
        field(45; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(46; "Body Text"; BLOB)
        {
            Caption = 'Body Text';
        }
    }

    keys
    {
        key(Key1; "Sequence Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

