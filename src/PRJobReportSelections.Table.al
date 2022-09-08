table 5292373 "PR - Job Report Selections"
{
    Caption = 'Report Selections';

    fields
    {
        field(1; Usage; Option)
        {
            Caption = 'Usage';
            OptionCaption = 'Inventory Request,Posted Inventory Request,Job Shipment,Posted Job Shipment,JobOrder';
            OptionMembers = "Inventory Request","Posted Inventory Request","Job Shipment","Posted Job Shipment",JobOrder;
        }
        field(2; Sequence; Code[10])
        {
            Caption = 'Sequence';
            Numeric = true;
        }
        field(3; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(4; "Report Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Report ID")));
            Caption = 'Report Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; Usage, Sequence)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

