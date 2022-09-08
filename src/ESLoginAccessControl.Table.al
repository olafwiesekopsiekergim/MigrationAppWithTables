table 14123528 "ES Login Access Control"
{
    Caption = 'Login Access Control';

    fields
    {
        field(1; "Login Type"; Option)
        {
            Caption = 'Login Type';
            OptionCaption = ' ,Database,Windows';
            OptionMembers = " ",Database,Windows;
        }
        field(2; "Login User ID"; Code[50])
        {
            Caption = 'Login User ID';
            NotBlank = true;
            TableRelation = "ES Login"."User ID" WHERE (Type = FIELD ("Login Type"));
        }
        field(3; "Role Type"; Option)
        {
            Caption = 'Permission Set Type';
            InitValue = Group;
            OptionCaption = 'Permission Set,Group';
            OptionMembers = Role,Group;
        }
        field(4; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
            TableRelation = IF ("Role Type" = CONST (Role)) "ES Role"."Role ID"
            ELSE
            IF ("Role Type" = CONST (Group)) "ES Role Group"."Group ID";
        }
        field(5; "User Name"; Text[208])
        {
            CalcFormula = Lookup ("ES Login"."User Name" WHERE (Type = FIELD ("Login Type"),
                                                               "User ID" = FIELD ("Login User ID")));
            Caption = 'User Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Company Group ID"; Code[30])
        {
            Caption = 'Company Group ID';
            TableRelation = "ES Company Group";
        }
        field(7; "Company Group Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Company Group".Name WHERE ("Group ID" = FIELD ("Company Group ID")));
            Caption = 'Company Group Name';
            FieldClass = FlowField;
        }
        field(8; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(9; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(10; "No Permissions"; Boolean)
        {
            Caption = 'No Permissions';
        }
        field(11; "Expiry Date"; Date)
        {
            Caption = 'Expiry Date';
        }
    }

    keys
    {
        key(Key1; "Login Type", "Login User ID", "Role Type", "Role ID", "Company Group ID")
        {
            Clustered = true;
        }
        key(Key2; "Role Type", "Role ID")
        {
        }
        key(Key3; "Company Group ID")
        {
        }
        key(Key4; "Created Date Time")
        {
        }
        key(Key5; "Expiry Date")
        {
        }
        key(Key6; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

