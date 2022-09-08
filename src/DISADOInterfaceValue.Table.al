table 5101262 "DIS - ADO Interface Value"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Interface Values';

    fields
    {
        field(1; "ADO Interface"; Code[20])
        {
            Caption = 'ADO Interface Code';
            TableRelation = "DIS - ADO Interface";
        }
        field(2; "Connection String Key"; Text[80])
        {
            Caption = 'Connection String Key';
            NotBlank = true;
            TableRelation = "DIS - ADO Conn. String Key";
        }
        field(3; "Connection String Value"; Text[250])
        {
            Caption = 'Connection String Value';
        }
        field(4; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(10; "Connection String Description"; Text[80])
        {
            CalcFormula = Lookup ("DIS - ADO Conn. String Key".Description WHERE ("Connection String Key" = FIELD ("Connection String Key")));
            Caption = 'Connection String Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "ADO Interface", "Connection String Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

