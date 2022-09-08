table 42012826 "MobileNAV Line Format"
{
    Caption = 'Line Format Configuration';
    Permissions = TableData "MobileNAV Line Format" = rimd;

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            Description = 'PK';
            InitValue = "Page";
            OptionMembers = ,,,,,"Codeunit",,,"Page";
        }
        field(2; "Service Name"; Text[235])
        {
            Caption = 'Service Name';
            Description = 'PK';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'PK';
        }
        field(4; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = 'Caption,Value,Separator';
            OptionMembers = Caption,Value,Separator;
        }
        field(5; "Field ID"; Text[3])
        {
            Caption = 'Field ID';
        }
        field(6; Separator; Text[100])
        {
            Caption = 'Separator';
        }
        field(7; "Setup Line No."; Integer)
        {
            Caption = 'Setup Line No.';
            Description = 'PK First = 1, Second = 2,...';
        }
        field(8; "Setup Field Name"; Text[75])
        {
            Caption = 'Setup Field Name';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Service Name", "Setup Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

