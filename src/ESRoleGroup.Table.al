table 14123525 "ES Role Group"
{
    Caption = 'Permission Group';
    DataCaptionFields = "Group ID", Name;

    fields
    {
        field(1; "Group ID"; Code[20])
        {
            Caption = 'Group ID';
            NotBlank = true;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; "Login Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Role Type" = CONST (Group),
                                                                 "Role ID" = FIELD ("Group ID")));
            Caption = 'Login Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(5; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(6; Lines; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Group Line" WHERE ("Role Group ID" = FIELD ("Group ID")));
            Caption = 'Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Role Lines"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Group Line" WHERE ("Role Group ID" = FIELD ("Group ID"),
                                                            "Role Type" = CONST (Role)));
            Caption = 'Permission Set Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Role Group Lines"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Group Line" WHERE ("Role Group ID" = FIELD ("Group ID"),
                                                            "Role Type" = CONST (Group)));
            Caption = 'Permission Group Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Exported Date Time"; DateTime)
        {
            Caption = 'Exported Date Time';
            Editable = false;
        }
        field(10; "Imported Date Time"; DateTime)
        {
            Caption = 'Imported Date Time';
            Editable = false;
        }
        field(11; "File Name"; Text[250])
        {
            Caption = 'File Name';
        }
    }

    keys
    {
        key(Key1; "Group ID")
        {
            Clustered = true;
        }
        key(Key2; "Created Date Time")
        {
        }
        key(Key3; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

