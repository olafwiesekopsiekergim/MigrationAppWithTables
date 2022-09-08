table 5101261 "DIS - ADO Interface"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'ADO Interface';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "ADO Provider"; Code[20])
        {
            Caption = 'ADO Provider';
            TableRelation = "DIS - ADO Provider";
        }
        field(5; "ADO Provider Type"; Option)
        {
            BlankZero = true;
            CalcFormula = Lookup ("DIS - ADO Provider"."Provider Type" WHERE (Code = FIELD ("ADO Provider")));
            Caption = 'Provider Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ',OLE DB,ODBC';
            OptionMembers = ,"OLE DB",ODBC;
        }
        field(30; "Connection Type"; Option)
        {
            Caption = 'Connection Type';
            OptionCaption = 'Data Source (ODBC DSN),Connection String';
            OptionMembers = "Data Source","Connection String";
        }
        field(31; "ODBC DNS"; Code[20])
        {
            Caption = 'ODBC DNS';
        }
        field(40; "ODBC DNS Login"; Code[50])
        {
            Caption = 'ODBC DNS Login';
        }
        field(41; "ODBC DNS Password"; Text[50])
        {
            Caption = 'ODBC DNS Password';
        }
        field(60; "Command Timeout"; Integer)
        {
            Caption = 'Command Timeout (sec.)';
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

