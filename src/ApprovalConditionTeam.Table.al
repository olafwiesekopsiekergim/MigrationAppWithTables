table 5103651 "Approval Condition Team"
{
    // WF0131  Approval Teams.
    // 
    // WF3.01:
    // -------
    // WF0182  New field Approved for changed Approval Condition Check function.
    // WF0191  Added TableRelation in field "No.".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 5 "Group Code" from Code[10] to Code[20].

    Caption = 'Approval Condition Team';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0191';
            NotBlank = true;
            TableRelation = "Approval Condition";
        }
        field(2; "Approval Team"; Code[50])
        {
            Caption = 'Approval Team';
            Description = 'WFNAV7';
            NotBlank = true;
            TableRelation = "Workflow Team";
        }
        field(3; Description; Text[80])
        {
            CalcFormula = Lookup ("Workflow Team".Name WHERE (Code = FIELD ("Approval Team")));
            Caption = 'Description';
            Description = 'WFNAV7';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Group Code"; Code[20])
        {
            Caption = 'Group Code';
            Description = 'WF0253';
        }
        field(8; "Direct Approval required"; Boolean)
        {
            Caption = 'Direct Approval Required';
        }
        field(10; Approved; Boolean)
        {
            Caption = 'Approved';
            Description = 'WF0182';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "No.", "Group Code")
        {
        }
    }

    fieldgroups
    {
    }
}

