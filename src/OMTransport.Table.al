table 11102043 "OM - Transport"
{
    Caption = 'Transport';
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
            CalcFormula = Count ("OM - Comment" WHERE ("Table Name" = CONST (Transport),
                                                      "No." = FIELD ("No.")));
            Caption = 'No. of Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Version List Id"; Text[30])
        {
            Caption = 'Version List Id';
        }
        field(6; "Version No."; Text[30])
        {
            Caption = 'Version No.';
        }
        field(7; "New Timestamp"; Option)
        {
            Caption = 'New Timestamp';
            OptionCaption = ' ,Moment of Transport,Define,Date of Transport';
            OptionMembers = " ","Moment of Transport",Define,"Date of Transport";
        }
        field(8; "Timestamp Date"; Date)
        {
            Caption = 'Timestamp Date';
        }
        field(9; "Timestamp Time"; Time)
        {
            Caption = 'Timestamp Time';
        }
        field(11; Transported; Boolean)
        {
            Caption = 'Transported';
            Editable = false;
        }
        field(12; "Export Path"; Text[250])
        {
            Caption = 'Export Path';
        }
        field(13; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(14; "No. of Documents"; Integer)
        {
            CalcFormula = Count ("OM - Document Line" WHERE ("Table Name" = CONST (Transport),
                                                            "No." = FIELD ("No.")));
            Caption = 'No. of Documents';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Include Version List"; Text[30])
        {
            Caption = 'Include Version List';
        }
        field(16; "Update Version List"; Boolean)
        {
            Caption = 'Update Version List';
            InitValue = true;
        }
        field(19; "Transport Date"; Date)
        {
            Caption = 'Transport Date';
        }
        field(20; "Transport Time"; Time)
        {
            Caption = 'Transport Time';
        }
        field(21; "Transport User Id"; Code[50])
        {
            Caption = 'Transport User Id';
        }
        field(23; "Transport Flow Code"; Code[20])
        {
            Caption = 'Transport Flow Code';
            TableRelation = "OM - Flow".Code WHERE ("Table Name" = CONST (Transport));
        }
        field(24; "Status Code"; Code[20])
        {
            Caption = 'Status Code';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = CONST (Transport));
        }
        field(25; "Status Type"; Option)
        {
            Caption = 'Status Type';
            InitValue = Ready;
            OptionCaption = ' ,Developing,Ready';
            OptionMembers = " ",Developing,Ready;
        }
        field(26; "User Role 1"; Code[50])
        {
            Caption = 'User Role 1';
            TableRelation = "OM - User";
        }
        field(27; "User Role 2"; Code[50])
        {
            Caption = 'User Role 2';
            TableRelation = "OM - User";
        }
        field(28; "User Role 3"; Code[50])
        {
            Caption = 'User Role 3';
            TableRelation = "OM - User";
        }
        field(29; "User Role 4"; Code[50])
        {
            Caption = 'User Role 4';
            TableRelation = "OM - User";
        }
        field(30; "User Role 5"; Code[50])
        {
            Caption = 'User Role 5';
            TableRelation = "OM - User";
        }
        field(31; "Active User"; Code[50])
        {
            Caption = 'Active User';
            TableRelation = "OM - User";
        }
        field(32; "Active Role"; Code[20])
        {
            Caption = 'Active Role';
            TableRelation = "OM - Role";
        }
        field(33; "Transport Type Code"; Code[20])
        {
            Caption = 'Transport Type Code';
            TableRelation = "OM - Transport Type";
        }
        field(34; "Check Overlap"; Boolean)
        {
            Caption = 'Check Overlap';
            InitValue = true;
        }
        field(35; "Check Pending Modifications"; Boolean)
        {
            Caption = 'Check Pending Modifications';
            InitValue = true;
        }
        field(36; "Deleted Field 36"; Boolean)
        {
            Caption = 'Deleted Field 36';
        }
        field(37; "Main Transport No."; Code[20])
        {
            Caption = 'Main Transport No.';
            TableRelation = "OM - Transport";
        }
        field(38; "Active User Name"; Text[100])
        {
            CalcFormula = Lookup ("OM - User".Name WHERE (Code = FIELD ("Active User")));
            Caption = 'Active User Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Active Role Name"; Text[100])
        {
            CalcFormula = Lookup ("OM - Role".Description WHERE (Code = FIELD ("Active Role")));
            Caption = 'Active Role Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "No. of Projects"; Integer)
        {
            CalcFormula = Count ("OM - Project" WHERE ("Transport No." = FIELD ("No.")));
            Caption = 'No. of Projects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(41; "Check Guidelines"; Option)
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
        key(Key2; "Status Code")
        {
        }
        key(Key3; "Transport Date", "Transport Time")
        {
        }
    }

    fieldgroups
    {
    }
}

