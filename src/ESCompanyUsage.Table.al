table 14123536 "ES Company Usage"
{
    Caption = 'Company Usage';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = "ES Company";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Windows Access Control" WHERE ("Company Name" = FIELD ("Company Name")));
            Caption = 'User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Companies; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Company" WHERE (Name = FIELD ("Company Name")));
            Caption = 'Companies';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "RestPnt Windows Access Ctrls."; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Rest Point Windows Acc Ctrl" WHERE ("Company Name" = FIELD ("Company Name")));
            Caption = 'Restore Point User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Restore Point Companies"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Restore Point Company" WHERE (Name = FIELD ("Company Name")));
            Caption = 'Restore Point Companies';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Company Group Lines"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Company Group Line" WHERE ("Company Name" = FIELD ("Company Name")));
            Caption = 'Company Group Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Live Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Access Control" WHERE ("Company Name" = FIELD ("Company Name")));
            Caption = 'Live User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Live Companies"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (Company WHERE (Name = FIELD ("Company Name")));
            Caption = 'Live Companies';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE ("Company Name" = FIELD ("Company Name")));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

