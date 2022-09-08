table 5099 "Saved Segment Criteria Line"
{
    Caption = 'Saved Segment Criteria Line';

    fields
    {
        field(1; "Segment Criteria Code"; Code[10])
        {
            Caption = 'Segment Criteria Code';
            TableRelation = "Saved Segment Criteria";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Action,Filter';
            OptionMembers = "Action","Filter";
        }
        field(4; "Action"; Option)
        {
            Caption = 'Action';
            OptionCaption = ' ,Add Contacts,Remove Contacts (Reduce),Remove Contacts (Refine)';
            OptionMembers = " ","Add Contacts","Remove Contacts (Reduce)","Remove Contacts (Refine)";
        }
        field(5; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(7; View; Text[250])
        {
            Caption = 'View';
        }
        field(8; "Allow Existing Contacts"; Boolean)
        {
            Caption = 'Allow Existing Contacts';
        }
        field(9; "Expand Contact"; Boolean)
        {
            Caption = 'Expand Contact';
        }
        field(10; "Allow Company with Persons"; Boolean)
        {
            Caption = 'Allow Company with Persons';
        }
        field(11; "Ignore Exclusion"; Boolean)
        {
            Caption = 'Ignore Exclusion';
        }
        field(12; "Entire Companies"; Boolean)
        {
            Caption = 'Entire Companies';
        }
        field(13; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "No. of Filters"; Integer)
        {
            Caption = 'No. of Filters';
        }
    }

    keys
    {
        key(Key1; "Segment Criteria Code", "Line No.", "Action")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

