table 5103609 "Condition Relation"
{
    // WF0127  Corrected length of field "Condition No." from 10 to 20.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 2 "Condition Table ID", 4 "Table ID" from Code[10] to Code[20].

    Caption = 'Condition Relation';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
            Description = 'WF0127';
            NotBlank = true;
            TableRelation = Condition;
        }
        field(2; "Condition Table ID"; Code[20])
        {
            Caption = 'Condition Table ID';
            Description = 'WF0253';
            NotBlank = true;
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Condition No."));
        }
        field(4; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
            NotBlank = true;
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Condition No."));
        }
        field(5; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Condition Table No."; Integer)
        {
            Caption = 'Condition Table No.';
        }
        field(7; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(8; Primary; Boolean)
        {
            Caption = 'Primary';
        }
    }

    keys
    {
        key(Key1; "Condition No.", "Condition Table ID", "Table ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

