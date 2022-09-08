table 5330281 "CMS Migration Record"
{
    Caption = 'CMS Migration Record';

    fields
    {
        field(5; "Migration Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = "CMS Migration Pack";
        }
        field(10; TableID; Integer)
        {
            Caption = 'TableID';
            Editable = true;
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(20; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(30; Invalid; Boolean)
        {
            Caption = 'Invalid';
        }
        field(50; "Fields to check available"; Boolean)
        {
            CalcFormula = Exist ("CMS Migration Data" WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                            TableID = FIELD (TableID),
                                                            "No." = FIELD ("No."),
                                                            "To Check" = CONST (true)));
            Caption = 'Fields to check available';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Migration Code", TableID, "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

