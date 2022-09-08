table 5138403 "CESS - Field Mapping"
{
    Caption = 'SanScreen Field Mapping';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(10; "Mapping to Field No."; Integer)
        {
            Caption = 'Mapping to Field No.';
        }
        field(13; "Address Type"; Option)
        {
            Caption = 'Address Type';
            OptionCaption = ' ,General,Shipment,Invoice,Ship-To-Addr';
            OptionMembers = " ",General,Shipment,Invoice,"Ship-To-Addr";
        }
        field(14; Synchronize; Boolean)
        {
            Caption = 'Synchronize';
        }
        field(20; "Table Caption"; Text[100])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Field Caption"; Text[100])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Mapped Field Caption"; Text[100])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = CONST (5138402),
                                                              "No." = FIELD ("Mapping to Field No.")));
            Caption = 'Mapped Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Table No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

