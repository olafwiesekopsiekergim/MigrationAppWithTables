table 11102046 "OM - Document Line"
{
    Caption = 'Document Line';
    DataPerCompany = false;

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport,Branch,Merge';
            OptionMembers = Project,Transport,Branch,Merge;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST (Project)) "OM - Project"
            ELSE
            IF ("Table Name" = CONST (Transport)) "OM - Transport"
            ELSE
            IF ("Table Name" = CONST (Branch)) "OM - Branch";
        }
        field(3; "Comment Entry No."; Integer)
        {
            Caption = 'Comment Entry No.';
            TableRelation = "OM - Comment";
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Insert Date"; Date)
        {
            Caption = 'Date';
            Editable = false;
        }
        field(6; "Insert Time"; Time)
        {
            Caption = 'Time';
            Editable = false;
        }
        field(7; "File Name"; Text[250])
        {
            Caption = 'File Name';
            Editable = false;
        }
        field(8; Path; Text[250])
        {
            Caption = 'Path';
            Editable = false;
        }
        field(9; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(10; "Attach to Transport"; Option)
        {
            Caption = 'Attach to Transport';
            OptionCaption = ' ,As File,In FIB';
            OptionMembers = " ","As File","In FIB";
        }
        field(20; Document; BLOB)
        {
            Caption = 'Document';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Comment Entry No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Comment Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

