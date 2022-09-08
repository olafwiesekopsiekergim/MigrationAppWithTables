table 5103615 "Condition Table"
{
    // WF0024  Added new key: Condition No.,Primary,Table No.
    // WF0096  Flowfield shows existing table relation.
    // WF0127  Corrected length of field "Condition No." from 10 to 20.
    // WF0153  Corrected deletion of Condition Relation to current deleted table.
    // 
    // WF3.01:
    // -------
    // WF0194  Added DropDown Field Group "Table ID,Table Caption,Primary,Condition No.".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0251  Check for exactly one primary table. Added status check in field Primary. Changed TextConst Text1105103600.
    // WF0253  Changed Length in field 2 "Table ID" from Code[10] to Code[20].

    Caption = 'Condition Table';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition Nr.';
            Description = 'WF0127';
            NotBlank = true;
            TableRelation = Condition;
        }
        field(2; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
            NotBlank = true;
        }
        field(3; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; Condition; Option)
        {
            Caption = 'Condition';
            OptionCaption = ' ,Records exist,No Records';
            OptionMembers = " ","Records exist","No Records";
        }
        field(13; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(14; Primary; Boolean)
        {
            Caption = 'Primary';
        }
        field(20; "Table Relation"; Boolean)
        {
            CalcFormula = Exist ("Condition Relation" WHERE ("Condition No." = FIELD ("Condition No."),
                                                            "Condition Table ID" = FIELD ("Table ID")));
            Caption = 'Table Relation';
            Description = 'WF0096';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Condition No.", "Table ID")
        {
            Clustered = true;
        }
        key(Key2; "Condition No.", Primary, "Table No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Table ID", "Table Caption", Primary, "Condition No.")
        {
        }
    }
}

