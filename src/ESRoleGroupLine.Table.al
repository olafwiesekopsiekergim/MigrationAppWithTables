table 14123526 "ES Role Group Line"
{
    Caption = 'Permission Group Line';

    fields
    {
        field(1; "Role Group ID"; Code[20])
        {
            Caption = 'Permission Group ID';
            NotBlank = true;
            TableRelation = "ES Role Group";
        }
        field(2; "Role Type"; Option)
        {
            Caption = 'Permission Set Type';
            OptionCaption = 'Permission Set,Group';
            OptionMembers = Role,Group;
        }
        field(3; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
            TableRelation = IF ("Role Type" = CONST (Role)) "ES Role"."Role ID"
            ELSE
            IF ("Role Type" = CONST (Group)) "ES Role Group"."Group ID";
        }
        field(4; "Role Group Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role Group".Name WHERE ("Group ID" = FIELD ("Role Group ID")));
            Caption = 'Permission Group Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(6; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Role Group ID", "Role Type", "Role ID")
        {
            Clustered = true;
        }
        key(Key2; "Created Date Time")
        {
        }
        key(Key3; "Created By User", "Created Date Time")
        {
        }
        key(Key4; "Role Type", "Role ID")
        {
        }
    }

    fieldgroups
    {
    }
}

