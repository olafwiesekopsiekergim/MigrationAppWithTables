table 5331 "CRM Integration Record"
{
    Caption = 'CRM Integration Record';

    fields
    {
        field(2; "CRM ID"; Guid)
        {
            Caption = 'CRM ID';
        }
        field(3; "Integration ID"; Guid)
        {
            Caption = 'Integration ID';
            TableRelation = "Integration Record"."Integration ID";
        }
        field(4; "Last Synch. Modified On"; DateTime)
        {
            Caption = 'Last Synch. Modified On';
        }
        field(5; "Last Synch. CRM Modified On"; DateTime)
        {
            Caption = 'Last Synch. CRM Modified On';
        }
        field(6; "Table ID"; Integer)
        {
            CalcFormula = Lookup ("Integration Record"."Table ID" WHERE ("Integration ID" = FIELD ("Integration ID")));
            Caption = 'Table ID';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "CRM ID", "Integration ID")
        {
            Clustered = true;
        }
        key(Key2; "Integration ID")
        {
        }
        key(Key3; "Last Synch. Modified On", "Integration ID")
        {
        }
        key(Key4; "Last Synch. CRM Modified On", "CRM ID")
        {
        }
    }

    fieldgroups
    {
    }
}

