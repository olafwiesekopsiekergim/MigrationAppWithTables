table 5103626 "Visio Import Buffer"
{
    // WF3.01:
    // -------
    // WF0221  Changed length of field "Entry Event Code" from Code 10 to 20.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 6 "Workflow Category", 14 "Task Category" from Text[10] to Text[20].
    // 
    // WF3.02:
    // -------
    // WF0229  New Visio Integration:
    //         Changed DataPerCompany from No to Yes.
    //         Changed Data Type in field 61 "Reverse Entry Condition" from Text[5] to Boolean.
    //         Removed following fields:
    //           - 13 "Text 5"
    //           - 18 "Text 1"
    //           - 19 "Text 2"
    //           - 20 "Text 3"
    //           - 21 "Text 4"
    //           - 49 "Full Access"
    //           - 52 "Create SMS"
    //           - 53 "Delivery Date Formula"
    //           - 54 "Do not notify"
    //           - 55 "Open Workflow Portal"
    //           - 56 Confirmation
    //           - 57 "Create E-Mail"
    //           - 59 "Lock Record"
    //           - 60 "Password Required"
    //           - 62 "Approval Level"
    //         Added new fields:
    //           - 100 Status
    //           - 110 "From Workflow Line No."
    //           - 120 "To Workflow Line No."
    //           - 130 "Condition not valid"
    //           - 140 "Approval Result"
    //           - 150 "Workflow No."

    Caption = 'Visio Import Buffer';
    DataPerCompany = true;

    fields
    {
        field(1; "Shape Key"; Code[10])
        {
            Caption = 'Shape Key';
            NotBlank = true;
        }
        field(2; "Begin X"; Text[250])
        {
            Caption = 'Begin X';
        }
        field(3; "End X"; Text[250])
        {
            Caption = 'End X';
        }
        field(4; "Shape Type"; Text[30])
        {
            Caption = 'Shape Type';
        }
        field(5; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(6; "Workflow Category"; Text[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
        }
        field(14; "Task Category"; Text[20])
        {
            Caption = 'Task Category';
            Description = 'WF0253';
        }
        field(15; "Due Date Formula"; Text[10])
        {
            Caption = 'Due Date Formula';
        }
        field(16; "Use Request Page"; Text[6])
        {
            Caption = 'Use Request Page';
        }
        field(17; "Run automatically"; Text[6])
        {
            Caption = 'Run automatically';
        }
        field(22; ID; Text[20])
        {
            Caption = 'ID';
        }
        field(23; "No."; Text[30])
        {
            Caption = 'No.';
        }
        field(24; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(25; "Precedecessor Shape Key"; Integer)
        {
            Caption = 'Predecessor Shape Key';
        }
        field(26; "Successor Shape Key"; Integer)
        {
            Caption = 'Successor Shape Key';
        }
        field(27; "Begin X Shape Key"; Text[250])
        {
            Caption = 'Begin X Shape Key';
        }
        field(28; "End X Shape Key"; Text[250])
        {
            Caption = 'End X Shape Key';
        }
        field(30; "Page No."; Code[3])
        {
            Caption = 'Page No.';
            NotBlank = true;
        }
        field(32; Processed; Boolean)
        {
            Caption = 'Processed';
        }
        field(33; "Workflow Line No."; Integer)
        {
            Caption = 'Workflow Line No.';
        }
        field(46; "Team Code"; Text[50])
        {
            Caption = 'Team Code';
            Description = 'WFNAV7';
        }
        field(47; "Object Type"; Text[6])
        {
            Caption = 'Object Type';
        }
        field(48; "Object ID"; Text[10])
        {
            Caption = 'Object ID';
        }
        field(50; "Entry Event Code"; Text[20])
        {
            Caption = 'Entry Event No.';
            Description = 'WF0221';
        }
        field(51; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(58; "Team Field No."; Text[10])
        {
            Caption = 'Team Field No.';
        }
        field(61; "Reverse Entry Condition"; Boolean)
        {
            Caption = 'Reverse Entry Condition';
            Description = 'WF0229 Text[5]->Boolean';
        }
        field(100; Status; Option)
        {
            Caption = 'Status';
            Description = 'WF0229';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(110; "From Workflow Line No."; Integer)
        {
            Caption = 'From Workflow Line No.';
            Description = 'WF0229';
        }
        field(120; "To Workflow Line No."; Integer)
        {
            Caption = 'To Workflow Line No.';
            Description = 'WF0229';
        }
        field(130; "Condition not valid"; Boolean)
        {
            Caption = 'Condition not valid';
            Description = 'WF0229';
        }
        field(140; "Approval Result"; Option)
        {
            Caption = 'Approval Result';
            Description = 'WF0229';
            OptionCaption = ' ,Approved,Not Approved';
            OptionMembers = " ",Approved,"Not Approved";
        }
        field(150; "Workflow No."; Code[20])
        {
            Caption = 'Workflow No.';
            Description = 'WF0229';
        }
    }

    keys
    {
        key(Key1; "Page No.", "Shape Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

