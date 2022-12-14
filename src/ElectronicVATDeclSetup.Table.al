table 11013 "Electronic VAT Decl. Setup"
{
    Caption = 'Electronic VAT Decl. Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Use Authentication"; Boolean)
        {
            Caption = 'Use Authentication';
        }
        field(5; "Use Proxy Server"; Boolean)
        {
            Caption = 'Use Proxy Server';
        }
        field(6; "Proxy Server Authent. Required"; Boolean)
        {
            Caption = 'Proxy Server Authent. Required';
        }
        field(7; "Proxy Server IP-Address/Port"; Code[250])
        {
            Caption = 'Proxy Server IP-Address/Port';
        }
        field(8; "HTTP Server URL 1"; Text[250])
        {
            Caption = 'HTTP Server URL 1';
            ExtendedDatatype = URL;
        }
        field(9; "HTTP Server URL 2"; Text[250])
        {
            Caption = 'HTTP Server URL 2';
            ExtendedDatatype = URL;
        }
        field(10; "HTTP Server URL 3"; Text[250])
        {
            Caption = 'HTTP Server URL 3';
            ExtendedDatatype = URL;
        }
        field(11; "HTTP Server URL 4"; Text[250])
        {
            Caption = 'HTTP Server URL 4';
            ExtendedDatatype = URL;
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

