table 11102097 "OM - Project Type"
{
    Caption = 'Project Type';
    DataCaptionFields = "Code", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
        }
        field(4; "Project Flow Code"; Code[20])
        {
            Caption = 'Project Flow Code';
            TableRelation = "OM - Flow".Code WHERE ("Table Name" = CONST (Project));
        }
        field(5; "User Role 1"; Code[50])
        {
            Caption = 'User Role 1';
            TableRelation = "OM - User";
        }
        field(6; "User Role 2"; Code[50])
        {
            Caption = 'User Role 2';
            TableRelation = "OM - User";
        }
        field(7; "User Role 3"; Code[50])
        {
            Caption = 'User Role 3';
            TableRelation = "OM - User";
        }
        field(8; "User Role 4"; Code[50])
        {
            Caption = 'User Role 4';
            TableRelation = "OM - User";
        }
        field(9; "User Role 5"; Code[50])
        {
            Caption = 'User Role 5';
            TableRelation = "OM - User";
        }
        field(10; "Deleted Field 10"; Boolean)
        {
            Caption = 'Deleted Field 10';
        }
        field(11; "Project Tag Doc. Trigger"; Text[100])
        {
            Caption = 'Project Tag Doc. Trigger';
            InitValue = '<Year4><Month,2><Day,2> %1 %2: %3';
        }
        field(12; "Nos. Format"; Code[20])
        {
            Caption = 'Nos. Format';
        }
        field(13; "Project Description"; Text[100])
        {
            Caption = 'Project Description';
        }
        field(14; "UID Offset"; Integer)
        {
            BlankZero = true;
            Caption = 'UID Offset';
        }
        field(15; "Modification Tag"; Text[100])
        {
            Caption = 'Modification Tag';
        }
        field(16; "Modification Start Tag"; Text[100])
        {
            Caption = 'Modification Start Tag';
        }
        field(17; "Modification End Tag"; Text[100])
        {
            Caption = 'Modification End Tag';
        }
        field(18; "Check Guid. at Set Ready Pr."; Option)
        {
            Caption = 'Check Guidelines at Set Ready Project';
            OptionCaption = ' ,All Checks,Transport Checks';
            OptionMembers = " ","All Checks","Transport Checks";
        }
        field(19; "Customer License"; BLOB)
        {
            Caption = 'Customer License';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
    }

    fieldgroups
    {
    }
}

