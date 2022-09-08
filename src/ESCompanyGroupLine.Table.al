table 14123531 "ES Company Group Line"
{
    Caption = 'Company Group Line';

    fields
    {
        field(1; "Company Group ID"; Code[30])
        {
            Caption = 'Company Group ID';
            NotBlank = true;
            TableRelation = "ES Company Group";
        }
        field(2; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            NotBlank = true;
            TableRelation = "ES Company";
        }
        field(3; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(4; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(5; "Company Exists"; Boolean)
        {
            CalcFormula = Exist ("ES Company" WHERE (Name = FIELD ("Company Name")));
            Caption = 'Company Exists';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Company Group ID", "Company Name")
        {
            Clustered = true;
        }
        key(Key2; "Company Name")
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

