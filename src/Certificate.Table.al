table 11014 Certificate
{
    Caption = 'Certificate';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(2; "Certificate Type"; Option)
        {
            Caption = 'Certificate Type';
            InitValue = "Soft token";
            OptionCaption = 'Soft token,Hardware token';
            OptionMembers = "Soft token","Hardware token";
        }
        field(4; "PFX File"; BLOB)
        {
            Caption = 'PFX File';
        }
        field(5; "Elster Certificate"; BLOB)
        {
            Caption = 'Elster Certificate';
        }
        field(6; "PFX File Password"; BLOB)
        {
            Caption = 'PFX File Password';
        }
        field(7; "Client Certificate"; BLOB)
        {
            Caption = 'Client Certificate';
        }
        field(8; "Client Certificate Password"; BLOB)
        {
            Caption = 'Client Certificate Password';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

