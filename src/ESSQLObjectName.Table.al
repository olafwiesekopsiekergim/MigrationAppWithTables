table 14123658 "ES SQL Object Name"
{
    Caption = 'SQL Object Name';

    fields
    {
        field(1; "SQL Object Name"; Text[30])
        {
            Caption = 'SQL Object Name';
        }
        field(11; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(12; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
        }
        field(13; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Object Not Found"; Boolean)
        {
            Caption = 'Object Not Found';
            Editable = false;
        }
        field(15; "Inserted for Faster Search"; Boolean)
        {
            Caption = 'Inserted for Faster Search';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "SQL Object Name")
        {
            Clustered = true;
        }
        key(Key2; "Table ID")
        {
        }
    }

    fieldgroups
    {
    }
}

