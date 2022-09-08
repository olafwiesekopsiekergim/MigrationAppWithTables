table 11102036 "OM - Project"
{
    Caption = 'Project';
    DataCaptionFields = "No.", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
        }
        field(4; "No. of Comments"; Integer)
        {
            CalcFormula = Count ("OM - Comment" WHERE ("Table Name" = CONST (Project),
                                                      "No." = FIELD ("No.")));
            Caption = 'No. of Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Project Flow Code"; Code[20])
        {
            Caption = 'Project Flow Code';
            TableRelation = "OM - Flow".Code WHERE ("Table Name" = CONST (Project));
        }
        field(6; "Status Code"; Code[20])
        {
            Caption = 'Status Code';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = CONST (Project));
        }
        field(7; "Status Type"; Option)
        {
            Caption = 'Status Type';
            OptionCaption = ' ,Developing,Ready';
            OptionMembers = " ",Developing,Ready;
        }
        field(8; "User Role 1"; Code[50])
        {
            Caption = 'User Role 1';
            TableRelation = "OM - User";
        }
        field(9; "User Role 2"; Code[50])
        {
            Caption = 'User Role 2';
            TableRelation = "OM - User";
        }
        field(10; "User Role 3"; Code[50])
        {
            Caption = 'User Role 3';
            TableRelation = "OM - User";
        }
        field(11; "User Role 4"; Code[50])
        {
            Caption = 'User Role 4';
            TableRelation = "OM - User";
        }
        field(12; "User Role 5"; Code[50])
        {
            Caption = 'User Role 5';
            TableRelation = "OM - User";
        }
        field(13; "Active User"; Code[50])
        {
            Caption = 'Active User';
            TableRelation = "OM - User";
        }
        field(14; "Active Role"; Code[20])
        {
            Caption = 'Active Role';
            TableRelation = "OM - Role";
        }
        field(15; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
        field(16; Transported; Boolean)
        {
            Caption = 'Transported';
            Editable = false;
        }
        field(17; Priority; Text[30])
        {
            Caption = 'Priority';
        }
        field(18; "Promised Transport Date"; Date)
        {
            Caption = 'Promised Transport Date';
        }
        field(19; "Estimated Duration"; Duration)
        {
            Caption = 'Estimated Duration';
        }
        field(20; "Actual Duration"; Duration)
        {
            Caption = 'Actual Duration';
        }
        field(21; "Date Time Changed"; DateTime)
        {
            Caption = 'Date Time Changed';
        }
        field(22; "No. of Actions Before"; Integer)
        {
            CalcFormula = Count ("OM - Action" WHERE (Type = CONST (Project),
                                                     "No." = FIELD ("No."),
                                                     "Sub Type" = CONST (Before)));
            Caption = 'No. of Actions Before';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "No. of Actions After"; Integer)
        {
            CalcFormula = Count ("OM - Action" WHERE (Type = CONST (Project),
                                                     "No." = FIELD ("No."),
                                                     "Sub Type" = CONST (After)));
            Caption = 'No. of Actions After';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(25; "No. of Documents"; Integer)
        {
            CalcFormula = Count ("OM - Document Line" WHERE ("Table Name" = CONST (Project),
                                                            "No." = FIELD ("No.")));
            Caption = 'Document';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; Path; Text[100])
        {
            Caption = 'Path';
        }
        field(27; Url; Text[100])
        {
            Caption = 'Url';
        }
        field(28; "Repository Busy"; Boolean)
        {
            Caption = 'Repository Busy';
        }
        field(29; "No. of Tests"; Integer)
        {
            CalcFormula = Count ("OM - Test" WHERE (Type = CONST (Project),
                                                   "No." = FIELD ("No.")));
            Caption = 'No. of Tests';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "No. of Objects"; Integer)
        {
            CalcFormula = Count ("OM - Project Object" WHERE ("Project No." = FIELD ("No.")));
            Caption = 'No. of Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Project Type Code"; Code[20])
        {
            Caption = 'Project Type Code';
            TableRelation = "OM - Project Type";
        }
        field(33; "Deleted Field 33"; Boolean)
        {
            Caption = 'Deleted Field 33';
        }
        field(34; "Main Project No."; Code[20])
        {
            Caption = 'Main Project No.';
            TableRelation = "OM - Project";
        }
        field(35; "Active User Name"; Text[100])
        {
            CalcFormula = Lookup ("OM - User".Name WHERE (Code = FIELD ("Active User")));
            Caption = 'Active User Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(36; "Active Role Name"; Text[100])
        {
            CalcFormula = Lookup ("OM - Role".Description WHERE (Code = FIELD ("Active Role")));
            Caption = 'Active Role Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "No. of Modifications"; Integer)
        {
            CalcFormula = Count ("OM - Modification" WHERE ("Assigned to Project No." = FIELD ("No.")));
            Caption = 'No. of Modifications';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "No. of Permissions"; Integer)
        {
            CalcFormula = Count ("OM - Project Permissions" WHERE ("Project No." = FIELD ("No.")));
            Caption = 'No. of Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Check Guidelines"; Option)
        {
            Caption = 'Check Guidelines';
            OptionCaption = ' ,All Checks,Transport Checks';
            OptionMembers = " ","All Checks","Transport Checks";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Transport No.")
        {
        }
        key(Key3; Transported)
        {
        }
        key(Key4; "Status Type")
        {
        }
        key(Key5; Priority)
        {
        }
        key(Key6; "Promised Transport Date")
        {
        }
        key(Key7; "Date Time Changed")
        {
        }
        key(Key8; "Active User")
        {
        }
        key(Key9; "Active Role")
        {
        }
    }

    fieldgroups
    {
    }
}

