table 5050269 "TE-Account Group Member"
{
    Caption = 'TE-Account Group Member';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "TE-Account Group";
            ValidateTableRelation = true;
        }
        field(2; "TE-Employee"; Code[20])
        {
            Caption = 'TE-Employee';
            TableRelation = "TE-Employee";
        }
        field(12; "Employee Name"; Text[30])
        {
            CalcFormula = Lookup ("TE-Employee".Name WHERE ("No." = FIELD ("TE-Employee")));
            Caption = 'Employee Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Group Name"; Text[30])
        {
            Caption = 'Group Name';
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
        key(Key1; "Code", "TE-Employee")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

