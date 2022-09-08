table 5103600 "Workflow Header"
{
    // WF0024  Check if Table Nos. match for Entry/Exit Conditions
    // WF0039  Auto complete Tasks
    // WF0141  Page Filter.
    // WF0152  Modified CalcFormula in Field "Workflow Line Exists" ("Table No." -> "Primary Table No.") from
    //         "No.=FIELD(No.),Table No.=FIELD(Table No. Filter),Predecessors=CONST(No),Manual Workflow Allowed=CONST(Yes)" to
    //         "No.=FIELD(No.),Primary Table No.=FIELD(Table No. Filter),Predecessors=CONST(No),Manual Workflow Allowed=CONST(Yes)"
    //         to execute manual Workflows for secondary Tables.
    // 
    // WF3.01:
    // -------
    // WF0193  Added missing Text Constants translations for ENU and ENG in Text1105103607 and Text1105103608.
    // WF0210  Reset Workflow Line Status in function CopyFrom.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0251  Check Table ID in exit condition in function Check Workflow.
    // WF0253  Changed Length in field 14 "Workflow Category" from Code[10] to Code[20].

    Caption = 'Workflow Header';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(4; "Building Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(5; "Last Modify"; Date)
        {
            Caption = 'Date Modified';
            Editable = false;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(14; "Workflow Category"; Code[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
            TableRelation = "ccWorkflow Category";
        }
        field(25; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(26; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(37; "Table No. Filter"; Integer)
        {
            Caption = 'Table No. Filter';
            FieldClass = FlowFilter;
        }
        field(38; "Workflow Line Exists"; Boolean)
        {
            CalcFormula = Exist ("Workflow Line" WHERE ("No." = FIELD ("No."),
                                                       "Primary Table No." = FIELD ("Table No. Filter"),
                                                       Predecessors = CONST (false),
                                                       "Manual Workflow Allowed" = CONST (true)));
            Caption = 'Workflow Line Exists';
            Description = 'WF0152';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Workflow ID Filter"; Integer)
        {
            Caption = 'Workflow ID Filter';
            FieldClass = FlowFilter;
        }
        field(40; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST ("Workflow Header"),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(41; "Page Filter"; Code[80])
        {
            Caption = 'Page Filter';
            Description = 'WF0141,WFNAV7';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Workflow Category")
        {
        }
    }

    fieldgroups
    {
    }
}

