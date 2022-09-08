table 5138409 "CESS - Company Setup"
{
    Caption = 'SanScreen Company Setup';
    DataPerCompany = false;

    fields
    {
        field(1; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            NotBlank = true;
            TableRelation = Company.Name;
        }
        field(2; "Central Company"; Boolean)
        {
            Caption = 'Central Company';
        }
        field(10; "Company No."; Text[4])
        {
            Caption = 'Company No.';
            Editable = false;
        }
        field(11; "No. Series Startno."; Code[20])
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Company Name")
        {
            Clustered = true;
        }
        key(Key2; "Company No.")
        {
        }
    }

    fieldgroups
    {
    }
}

