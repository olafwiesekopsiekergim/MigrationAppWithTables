table 2087628 "DS Filter Group"
{
    Caption = 'DS Filter Group';
    DataCaptionFields = GroupName;

    fields
    {
        field(1; GroupName; Text[50])
        {
            Caption = 'Group';
        }
        field(2; ColumnNo; Integer)
        {
            Caption = 'Order';
        }
        field(3; "Security Filter-only"; Boolean)
        {
            Caption = 'Security Filter-only';
        }
        field(11; "Count Values"; Integer)
        {
            CalcFormula = Count ("DS Filter Value" WHERE (GroupName = FIELD (GroupName)));
            Caption = 'Value Count';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; Type; Option)
        {
            OptionMembers = FilterGroup,Category,TimeMarker;
        }
    }

    keys
    {
        key(Key1; Type, GroupName)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

