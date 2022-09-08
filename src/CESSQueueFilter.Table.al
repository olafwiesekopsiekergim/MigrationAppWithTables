table 5138405 "CESS - Queue Filter"
{
    // diese Tabelle soll Felder einrichten lassen, bei deren Erfüllung der eingetragenen Bedingung der Datensatz
    // NICHT in die ScreenQueue eingetragen werden soll
    // 
    // Zum Beispiel Status = Freigegeben bei Tabelle 36

    Caption = 'SanScreen Queue Filter';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = "CESS - Field Mapping";
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(10; "Table Caption"; Text[100])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Field Caption"; Text[100])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Type Name"; Text[30])
        {
            CalcFormula = Lookup (Field."Type Name" WHERE (TableNo = FIELD ("Table No."),
                                                          "No." = FIELD ("Field No.")));
            Caption = 'Field Type';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Field Filter"; Text[250])
        {
            Caption = 'Field Filter';
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

