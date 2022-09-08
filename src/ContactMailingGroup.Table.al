table 5056 "Contact Mailing Group"
{
    Caption = 'Contact Mailing Group';

    fields
    {
        field(1; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            NotBlank = true;
            TableRelation = Contact;
        }
        field(2; "Mailing Group Code"; Code[10])
        {
            Caption = 'Mailing Group Code';
            NotBlank = true;
            TableRelation = "Mailing Group";
        }
        field(3; "Contact Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Contact Company Name"; Text[50])
        {
            CalcFormula = Lookup (Contact."Company Name" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact Company Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Mailing Group Description"; Text[50])
        {
            CalcFormula = Lookup ("Mailing Group".Description WHERE (Code = FIELD ("Mailing Group Code")));
            Caption = 'Mailing Group Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50001; "Salesperson Code"; Code[10])
        {
            CalcFormula = Lookup (Contact."Salesperson Code" WHERE ("No." = FIELD ("Contact No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; "E-Mail"; Text[80])
        {
            CalcFormula = Lookup (Contact."E-Mail" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'E-Mail';
            Description = '#AT';
            Editable = false;
            ExtendedDatatype = EMail;
            FieldClass = FlowField;
        }
        field(50003; "Country/Region Code"; Code[10])
        {
            CalcFormula = Lookup (Contact."Country/Region Code" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Country/Region Code';
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50004; "Language Code"; Code[10])
        {
            CalcFormula = Lookup (Contact."Language Code" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Language Code';
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50005; "Company No."; Code[20])
        {
            CalcFormula = Lookup (Contact."Company No." WHERE ("No." = FIELD ("Contact No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Contact No.", "Mailing Group Code")
        {
            Clustered = true;
        }
        key(Key2; "Mailing Group Code")
        {
        }
    }

    fieldgroups
    {
    }
}

