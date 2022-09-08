table 710 "Activity Log"
{
    // cc|mail (MAIL)

    Caption = 'Activity Log';

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(2; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(3; "Activity Date"; DateTime)
        {
            Caption = 'Activity Date';
        }
        field(4; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Success,Failed';
            OptionMembers = Success,Failed;
        }
        field(6; Context; Text[30])
        {
            Caption = 'Context';
        }
        field(10; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(20; "Activity Message"; Text[250])
        {
            Caption = 'Activity Message';
        }
        field(76000; "cc Mail"; Boolean)
        {
            Caption = 'cc Mail';
            Description = 'MAILW19.00';
        }
        field(76001; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            Description = 'MAILW19.00';
        }
        field(76002; "Process Mail"; Boolean)
        {
            Caption = 'Process Mail';
            Description = 'MAILW19.00.01';
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

