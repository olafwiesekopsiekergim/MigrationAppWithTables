table 5103612 "Workflow Execution Buffer"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.

    Caption = 'Execution Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(3; "Trigger"; Option)
        {
            Caption = 'Trigger';
            OptionCaption = 'On Insert,On Modify,On Delete,On Rename,User Defined';
            OptionMembers = "On Insert","On Modify","On Delete","On Rename","User Defined";
        }
        field(4; "For Companyname"; Text[30])
        {
            Caption = 'For Companyname';
            TableRelation = Company;
        }
        field(5; "Record Position"; Text[200])
        {
            Caption = 'Record Position';
        }
        field(6; Processed; Boolean)
        {
            Caption = 'Processed';
        }
        field(7; "From Companyname"; Text[30])
        {
            Caption = 'From Companyname';
            TableRelation = Company;
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
            TableRelation = User;
        }
        field(9; Date; Date)
        {
            Caption = 'Date';
        }
        field(10; Time; Time)
        {
            Caption = 'Time';
        }
        field(11; "Language ID"; Integer)
        {
            Caption = 'Language ID';
        }
        field(12; "Record Position 2"; Text[250])
        {
            Caption = 'Record Position 2';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

