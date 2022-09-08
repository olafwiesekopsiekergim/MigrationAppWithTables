table 14123654 "ES Role Recording"
{
    Caption = 'Permission Set Recording';

    fields
    {
        field(1; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            NotBlank = true;
            TableRelation = "ES Role"."Role ID";
        }
        field(2; "Recording Code"; Code[30])
        {
            Caption = 'Recording Code';
            NotBlank = true;
            TableRelation = "ES Recording";
        }
        field(3; "Extend Insert Permissions"; Boolean)
        {
            Caption = 'Extend Insert Permissions';
        }
        field(4; "Add Related Permissions"; Boolean)
        {
            Caption = 'Add Related Permissions';
        }
        field(5; "Role for Both Clients"; Boolean)
        {
            Caption = 'Permission Set for Both Clients';
        }
        field(6; "Recording Description"; Text[250])
        {
            CalcFormula = Lookup ("ES Recording".Description WHERE (Code = FIELD ("Recording Code")));
            Caption = 'Recording Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(8; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(9; "Role Name"; Text[30])
        {
            CalcFormula = Lookup ("ES Role".Name WHERE ("Role ID" = FIELD ("Role ID")));
            Caption = 'Permission Set Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Role ID", "Recording Code")
        {
            Clustered = true;
        }
        key(Key2; "Recording Code")
        {
        }
        key(Key3; "Created Date Time")
        {
        }
        key(Key4; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

