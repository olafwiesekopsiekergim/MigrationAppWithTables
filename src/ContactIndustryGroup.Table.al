table 5058 "Contact Industry Group"
{
    // #AT 03.07.2018 added fields
    // -Salesperson Code
    // -Country/Region Code

    Caption = 'Contact Industry Group';

    fields
    {
        field(1; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            NotBlank = true;
            TableRelation = Contact WHERE (Type = CONST (Company));
        }
        field(2; "Industry Group Code"; Code[10])
        {
            Caption = 'Industry Group Code';
            NotBlank = true;
            TableRelation = "Industry Group";
        }
        field(3; "Industry Group Description"; Text[50])
        {
            CalcFormula = Lookup ("Industry Group".Description WHERE (Code = FIELD ("Industry Group Code")));
            Caption = 'Industry Group Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Contact Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact Name';
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
        field(50003; "Country/Region Code"; Code[10])
        {
            CalcFormula = Lookup (Contact."Country/Region Code" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Country/Region Code';
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Contact No.", "Industry Group Code")
        {
            Clustered = true;
        }
        key(Key2; "Industry Group Code")
        {
        }
    }

    fieldgroups
    {
    }
}

