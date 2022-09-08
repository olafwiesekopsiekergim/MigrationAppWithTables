table 5171705 "CMNM User Permission"
{
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'User Permissions';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = "CMNM User Setup"."User ID";
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Template,Template Group,All';
            OptionMembers = Template,Group,All;
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(4; Permission; Option)
        {
            Caption = 'Permission';
            OptionCaption = 'No Permission,Send,,Modify Template(s)';
            OptionMembers = Nothing,Send,Read,Modify;
        }
        field(10; "Dispatch Type"; Option)
        {
            Caption = 'Permission Region';
            OptionCaption = 'E-Mail,,E-Post,Francotyp';
            OptionMembers = Smtp,Outlook,"E-Post",Francotyp;
        }
    }

    keys
    {
        key(Key1; "User ID", "Dispatch Type", Type, "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

