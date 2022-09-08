table 5101260 "DIS - ADO Conn. String Key"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Connection String';

    fields
    {
        field(1; "Connection String Key"; Text[80])
        {
            Caption = 'Key';
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(5; "Init Value"; Text[250])
        {
            Caption = 'Initial Value';
        }
    }

    keys
    {
        key(Key1; "Connection String Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

