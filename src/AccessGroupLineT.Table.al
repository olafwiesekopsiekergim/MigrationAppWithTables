table 5056441 "Access Group Line/T"
{
    Caption = 'Access Group Line';
    Description = 'GrAccessGroupLine';

    fields
    {
        field(1; "Access Group No."; Code[10])
        {
            Caption = 'Access Group No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Access Group"));
        }
        field(10; "Terminal No."; Code[10])
        {
            Caption = 'Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(11; "Terminal Description"; Text[80])
        {
            CalcFormula = Lookup ("Org-Form/T".Description WHERE ("Org-Form Code" = FIELD ("Terminal No."),
                                                                 "Org-Form Type" = CONST (Terminal)));
            Caption = 'Terminal Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Time Profile No."; Text[2])
        {
            Caption = 'Time Profile No.';
        }
    }

    keys
    {
        key(Key1; "Access Group No.", "Terminal No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

