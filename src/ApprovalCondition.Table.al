table 5103644 "Approval Condition"
{
    // WF0109  Add User Approval Value in approval condition check.
    // WF0131  Approval Teams.
    // WF0136  Copy functionality.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 20 "Table ID", 44 "Workflow Category" from Code[10] to Code[20].

    Caption = 'Approval Condition';

    fields
    {
        field(1; "Event No."; Code[20])
        {
            Caption = 'Event No.';
            TableRelation = "ccWorkflow Event";
        }
        field(3; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
            TableRelation = Condition;
        }
        field(9; "Reverse Condition"; Boolean)
        {
            Caption = 'Reverse Condition';
        }
        field(10; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(11; Blocked; Boolean)
        {
            Caption = 'Blocked';
            InitValue = true;
        }
        field(17; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(20; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Condition No."));
        }
        field(37; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(38; "Approval Value"; Integer)
        {
            Caption = 'Approval Value';
        }
        field(39; "Approval Value Comparison"; Option)
        {
            Caption = 'Approval Value Comparison';
            OptionCaption = 'Equal/Greater,Equal';
            OptionMembers = "Equal/Greater",Equal;
        }
        field(40; "Message Text"; Text[250])
        {
            Caption = 'Message';
        }
        field(41; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(42; "Short Message"; Boolean)
        {
            Caption = 'Short Message';
        }
        field(43; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST ("Approval Condition"),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(44; "Workflow Category"; Code[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
            TableRelation = "ccWorkflow Category";
        }
        field(45; "Approval Check"; Option)
        {
            Caption = 'Approval Check';
            Description = 'WF0131';
            OptionCaption = 'Value,Teams';
            OptionMembers = Value,Teams;
        }
        field(46; "Include User Approval Value"; Boolean)
        {
            Caption = 'Include User Approval Value';
            Description = 'WF0109';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Event No.", "Condition No.")
        {
        }
        key(Key3; Blocked)
        {
        }
        key(Key4; "Condition No.")
        {
        }
    }

    fieldgroups
    {
    }
}

