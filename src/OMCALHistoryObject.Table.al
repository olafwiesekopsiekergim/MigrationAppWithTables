table 11102052 "OM - C/AL History Object"
{
    Caption = 'C/AL History Object';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Import Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Import Entry No.';
            TableRelation = "OM - C/AL History Import";
        }
        field(4; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            Editable = false;
            NotBlank = true;
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(5; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            Editable = false;
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(6; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
            Editable = false;
        }
        field(7; Modified; Boolean)
        {
            Caption = 'Modified';
            Editable = false;
        }
        field(8; Compiled; Boolean)
        {
            Caption = 'Compiled';
            Editable = false;
        }
        field(9; "Version List"; Text[248])
        {
            Caption = 'Version List';
            Editable = false;
        }
        field(10; "Object Date"; Date)
        {
            Caption = 'Object Date';
            Editable = false;
        }
        field(11; "Object Time"; Time)
        {
            Caption = 'Object Time';
            Editable = false;
        }
        field(12; "Object Date Time"; DateTime)
        {
            Caption = 'Object Date Time';
        }
        field(14; "Added By"; Text[100])
        {
            Caption = 'Added By';
        }
        field(15; "Added Date"; Date)
        {
            Caption = 'Added Date';
        }
        field(16; "Added Time"; Time)
        {
            Caption = 'Added Time';
        }
        field(17; "Added Date Time"; DateTime)
        {
            Caption = 'Added Date Time';
        }
        field(18; "Action Type"; Option)
        {
            Caption = 'Action Type';
            OptionCaption = ' ,Import,Update C/AL History,Update Where Used Objects,Restore,Modification,Assign,Locking,Unlocking,After Transporting,Before Imp. Transport,After Imp. Transport,Confirmed in Import Sheet,Branch Copy';
            OptionMembers = " ",Import,"Update C/AL History","Update Where Used Objects",Restore,Modification,Assign,Locking,Unlocking,"After Transporting","Before Imp. Transport","After Imp. Transport","Confirmed in Import Sheet","Branch Copy";
        }
        field(19; "Locked By"; Code[20])
        {
            Caption = 'Locked By';
        }
        field(20; "BLOB Reference Present"; Boolean)
        {
            Caption = 'BLOB Reference Present';
        }
        field(21; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Branch No."; Code[20])
        {
            Caption = 'Branch No.';
            TableRelation = "OM - Branch";
        }
        field(23; "Branch Order"; Integer)
        {
            Caption = 'Branch Order';
        }
        field(24; Visible; Boolean)
        {
            Caption = 'Visible';
        }
        field(25; "Branch Description"; Text[100])
        {
            CalcFormula = Lookup ("OM - Branch".Description WHERE ("No." = FIELD ("Branch No.")));
            Caption = 'Branch Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Restored from Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Restored from Entry No.';
            TableRelation = "OM - C/AL History Object";
        }
        field(27; "C/AL Code Present"; Boolean)
        {
            Caption = 'C/AL Code Present';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object No.")
        {
        }
        key(Key3; "Object Type", "Object No.", "Object Date", "Object Time")
        {
        }
        key(Key4; "Import Entry No.")
        {
        }
        key(Key5; "Object Date", "Object Time")
        {
        }
        key(Key6; "Action Type", "Object Type", "Object No.")
        {
        }
        key(Key7; "Branch No.", "Object Type", "Object No.", "Branch Order")
        {
        }
        key(Key8; "Branch No.", "Object Type", "Object No.", "Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

