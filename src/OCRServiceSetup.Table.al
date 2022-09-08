table 1270 "OCR Service Setup"
{
    Caption = 'OCR Service Setup';
    Permissions = TableData "Service Password" = rimd;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "User Name"; Text[50])
        {
            Caption = 'User Name';
        }
        field(3; "Password Key"; Guid)
        {
            Caption = 'Password Key';
            TableRelation = "Service Password".Key;
        }
        field(4; "Signup URL"; Text[250])
        {
            Caption = 'Signup URL';
            ExtendedDatatype = URL;
        }
        field(5; "Service URL"; Text[250])
        {
            Caption = 'Service URL';
        }
        field(6; "Login URL"; Text[250])
        {
            Caption = 'Login URL';
            ExtendedDatatype = URL;
        }
        field(7; "Authorization Key"; Guid)
        {
            Caption = 'Authorization Key';
            TableRelation = "Service Password".Key;
        }
        field(8; "Customer Name"; Text[80])
        {
            Caption = 'Customer Name';
            Editable = false;
        }
        field(9; "Customer ID"; Text[50])
        {
            Caption = 'Customer ID';
            Editable = false;
        }
        field(10; "Customer Status"; Text[30])
        {
            Caption = 'Customer Status';
            Editable = false;
        }
        field(11; "Organization ID"; Text[50])
        {
            Caption = 'Organization ID';
            Editable = false;
        }
        field(12; "Default OCR Doc. Template"; Code[20])
        {
            Caption = 'Default OCR Doc. Template';
            TableRelation = "OCR Service Document Template";
        }
        field(13; Enabled; Boolean)
        {
            Caption = 'Enabled';
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

