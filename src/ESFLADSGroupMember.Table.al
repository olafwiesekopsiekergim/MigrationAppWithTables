table 14123817 "ES FLADS Group Member"
{
    Caption = 'Field Level and Data Security Group Member';

    fields
    {
        field(1; "Group User ID"; Code[50])
        {
            Caption = 'Group User ID';
            NotBlank = true;
        }
        field(2; "Member User ID"; Code[50])
        {
            Caption = 'Member User ID';
        }
        field(11; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(12; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(13; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(16; "Do Not Use"; Boolean)
        {
            Caption = 'Do Not Use';
        }
    }

    keys
    {
        key(Key1; "Group User ID", "Member User ID")
        {
            Clustered = true;
        }
        key(Key2; "Member User ID", Priority)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Group User ID", "Member User ID", Priority)
        {
        }
    }
}

