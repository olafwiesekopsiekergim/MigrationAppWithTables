table 5292850 "PQM - Setup"
{
    Caption = 'PQM Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(10; "PQM Nos."; Code[10])
        {
            Caption = 'PQM Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(81; "Assign Vendors autom."; Boolean)
        {
            Caption = 'Assign Vendors autom.';
        }
        field(82; "Assign Vendors per Line"; Boolean)
        {
            Caption = 'Assign Vendors per Line';
        }
        field(84; "Show Vendor Lead Time Calc."; Boolean)
        {
            Caption = 'Show Vendor Lead Time Calc.';
        }
        field(85; "Show Exp. Receipt Date"; Boolean)
        {
            Caption = 'Show Exp. Receipt Date';
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

