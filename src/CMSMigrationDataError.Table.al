table 5330284 "CMS Migration Data Error"
{
    Caption = 'CMS Migration Data Error';

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
            Editable = false;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(20; "RecordNo."; Integer)
        {
            Caption = 'RecordNo.';
            Editable = false;
            TableRelation = "CMS Migration Record"."No." WHERE (TableID = FIELD (TableID),
                                                                "Migration Code" = FIELD ("Migration Code"));
        }
        field(30; FieldID; Integer)
        {
            Caption = 'FieldID';
            Editable = false;
        }
        field(40; "Field Name"; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD (TableID),
                                                        "No." = FIELD (FieldID)));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Error Text"; Text[250])
        {
            Caption = 'Error Text';
            Editable = false;
        }
        field(60; "Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD (TableID),
                                                              "No." = FIELD (FieldID)));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Migration Code", TableID, "RecordNo.", FieldID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

