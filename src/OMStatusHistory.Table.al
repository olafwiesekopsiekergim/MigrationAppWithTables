table 11102038 "OM - Status History"
{
    Caption = 'Status History';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST (Project)) "OM - Project"
            ELSE
            IF ("Table Name" = CONST (Transport)) "OM - Transport";
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(4; "Status Code"; Code[20])
        {
            Caption = 'Status Code';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = FIELD ("Table Name"));
        }
        field(5; "User Id"; Code[50])
        {
            Caption = 'User Id';
        }
        field(6; "Status Date"; Date)
        {
            Caption = 'Date';
        }
        field(7; "Status Time"; Time)
        {
            Caption = 'Time';
        }
        field(8; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport';
            OptionMembers = Project,Transport;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Table Name", "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

