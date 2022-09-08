table 14123507 "ES Company"
{
    Caption = 'Company';

    fields
    {
        field(1; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(1003; "Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Windows Access Control" WHERE ("Company Name" = FIELD (Name)));
            Caption = 'User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1004; "Company Groups"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Company Group Line" WHERE ("Company Name" = FIELD (Name)));
            Caption = 'Company Groups';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

