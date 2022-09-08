table 5101263 "DIS - ADO Provider"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Provider';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Provider Type"; Option)
        {
            Caption = 'Provider Type';
            NotBlank = true;
            OptionCaption = ',OLE DB,ODBC';
            OptionMembers = ,"OLE DB",ODBC;
        }
        field(50; "Object Start Delimiter"; Code[1])
        {
            Caption = 'Object Start Delimiter';
        }
        field(51; "Object End Delimiter"; Code[1])
        {
            Caption = 'Object End Delimiter';
        }
        field(55; "Value Start Delimiter"; Code[1])
        {
            Caption = 'Value Start Delimiter';
        }
        field(56; "Value End Delimiter"; Code[1])
        {
            Caption = 'Value End Delimiter';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

