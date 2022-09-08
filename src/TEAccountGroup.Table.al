table 5050260 "TE-Account Group"
{
    Caption = 'TE-Account Group';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "TE-Account Group";
            ValidateTableRelation = false;
        }
        field(11; "Group Description"; Text[30])
        {
            Caption = 'Group Description';
        }
        field(17; Permissions; Option)
        {
            Caption = 'Permissions';
            OptionCaption = 'Unrestricted,,,Posting,,,,No Posting';
            OptionMembers = Unrestricted,,,Posting,,,,"No Posting";
        }
        field(101; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(102; "Last Time Modified"; Time)
        {
            Caption = 'Last Time Modified';
            Editable = false;
        }
        field(103; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
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

