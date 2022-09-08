table 5103602 Condition
{
    // WF0127  Corrected length of field "No." from 10 to 20.
    // 
    // WF3.01:
    // -------
    // WF0194  Added DropDown Field Group "No.,Workflow Category,Description,Status".
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0251  Check for exactly one primary table in function CheckCondition.
    // WF0253  Changed Length in fields 30 "Condition Category", 40 "Workflow Category",
    //         41 "Custom Function Code" from Code[10] to Code[20].

    Caption = 'Condition';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0127';
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(4; Log; Boolean)
        {
            Caption = 'Log';
        }
        field(5; "Standard Condition"; Boolean)
        {
            Caption = 'Standard Condition';
        }
        field(6; "Action Type"; Option)
        {
            Caption = 'Action Type';
            OptionCaption = ' ,Message,Error';
            OptionMembers = " ",Message,Error;
        }
        field(7; "Action Text"; Text[250])
        {
            Caption = 'Action Text';
        }
        field(8; "User Specific"; Boolean)
        {
            CalcFormula = Exist ("Condition User" WHERE ("Condition No." = FIELD ("No.")));
            Caption = 'User specific';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Valid From"; Date)
        {
            Caption = 'Valid From';
        }
        field(10; "Valid Through"; Date)
        {
            Caption = 'Valid Through';
        }
        field(28; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(29; "Strict Condition"; Boolean)
        {
            Caption = 'Strict Condition';
            InitValue = true;
        }
        field(30; "Condition Category"; Code[20])
        {
            Caption = 'Condition Category Code';
            Description = 'WF0253';
            TableRelation = "Condition Category";
        }
        field(31; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST (Condition),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
        }
        field(33; "User-defined enabled"; Boolean)
        {
            Caption = 'User-defined Expression enabled';
        }
        field(34; "User-defined Expression"; Text[250])
        {
            Caption = 'User-defined Expression';
        }
        field(35; "User-defined Expression Descr."; Text[250])
        {
            Caption = 'User-defined Expression Description';
        }
        field(36; "Used as Entry Condition"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Entry Condition Code" = FIELD ("No.")));
            Caption = 'Used as Entry Condition';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "Used as Exit Condition"; Integer)
        {
            CalcFormula = Count ("Workflow Line" WHERE ("Exit Condition Code" = FIELD ("No.")));
            Caption = 'Used as Exit Condition';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "Used in Approval Conditions"; Integer)
        {
            CalcFormula = Count ("Approval Condition" WHERE ("Condition No." = FIELD ("No.")));
            Caption = 'Used in Approval Conditions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Used in Messages"; Integer)
        {
            CalcFormula = Count (Message WHERE ("Condition No." = FIELD ("No.")));
            Caption = 'Used in Messages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Workflow Category"; Code[20])
        {
            Caption = 'Workflow Category';
            Description = 'WF0253';
            TableRelation = "ccWorkflow Category";
        }
        field(41; "Custom Function Code"; Code[20])
        {
            Caption = 'Custom Function Code';
            Description = 'WF0253';
            TableRelation = "Custom Function".Code WHERE (Type = CONST (Condition));
        }
        field(42; "Custom Function Description"; Text[80])
        {
            CalcFormula = Lookup ("Custom Function".Description WHERE (Type = CONST (Condition),
                                                                      Code = FIELD ("Custom Function Code")));
            Caption = 'Custom Function Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Standard Condition")
        {
        }
        key(Key3; "Workflow Category")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Workflow Category", Description, Status)
        {
        }
    }
}

