table 5103614 "Workflow Task Line"
{
    // WF0064  Apply Standard Text Description to empty Subject in form Send Message.
    // WF0065  Optional E-Mail notification in Send Message.
    // WF0146  New Field "Create Confirmation E-Mail".
    // 
    // WF3.01:
    // -------
    // WF0191  Added TableRelation in field "No.".
    // 
    // WF3.01.01:
    // ----------
    // WF0248  Corrected data type and name of field 11 Time.
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length of parameter "StandardTextDescription" in function "GetWorkflowStandardText" from Text[30] to Text[50].

    Caption = 'Workflow Task Line';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0191';
            TableRelation = "Workflow Task"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(2; Text; Text[80])
        {
            Caption = 'Text';
        }
        field(3; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Model,Message';
            OptionMembers = Model,Message;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Team List"; Code[250])
        {
            Caption = 'Team List';
        }
        field(6; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(7; "Delivery Date"; Date)
        {
            Caption = 'Delivery Date';
        }
        field(8; Confirmation; Boolean)
        {
            Caption = 'Confirmation';
        }
        field(9; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
            Editable = false;
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
            Editable = false;
        }
        field(11; "Time Created"; Time)
        {
            Caption = 'Time';
            Description = 'WF0248';
            Editable = false;
        }
        field(12; "Original Text"; Boolean)
        {
            Caption = 'Original Text';
            Editable = false;
        }
        field(13; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(14; Approval; Boolean)
        {
            Caption = 'Approval';
        }
        field(15; "Record Reference Set"; Boolean)
        {
            Caption = 'Record Reference Set';
        }
        field(16; "Create E-Mail"; Boolean)
        {
            Caption = 'Create E-Mail';
            Description = 'WF0065';
        }
        field(17; "Create Confirmation E-Mail"; Boolean)
        {
            Caption = 'Create Confirmation E-Mail';
            Description = 'WF0146';
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

