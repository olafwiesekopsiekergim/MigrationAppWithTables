table 5101264 "DIS - ADO Provider Key"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Provider Key';

    fields
    {
        field(1; "ADO Provider"; Code[20])
        {
            Caption = 'ADO Provider';
            TableRelation = "DIS - ADO Provider";
        }
        field(2; "Connection String Key"; Text[80])
        {
            Caption = 'Connection String Key';
            NotBlank = true;
            TableRelation = "DIS - ADO Conn. String Key";
        }
        field(5; "Connection String Init Value"; Text[250])
        {
            Caption = 'Connectin String Initial Value';
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
        key(Key1; "ADO Provider", "Connection String Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

