table 11102037 "OM - Project Object"
{
    Caption = 'Project Object';
    DataPerCompany = false;

    fields
    {
        field(1; "Project No."; Code[20])
        {
            Caption = 'Project No.';
            NotBlank = true;
            TableRelation = "OM - Project";
        }
        field(2; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            NotBlank = true;
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(3; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"));
        }
        field(4; Name; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Project Description"; Text[100])
        {
            CalcFormula = Lookup ("OM - Project".Description WHERE ("No." = FIELD ("Project No.")));
            Caption = 'Project Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
        field(7; "Transport Description"; Text[100])
        {
            CalcFormula = Lookup ("OM - Transport".Description WHERE ("No." = FIELD ("Transport No.")));
            Caption = 'Transport Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Overlap Sorting"; Integer)
        {
            Caption = 'Overlap Sorting';
        }
        field(10; "Object Version List"; Text[248])
        {
            CalcFormula = Lookup (Object."Version List" WHERE (Type = FIELD ("Object Type"),
                                                              "Company Name" = CONST (''),
                                                              ID = FIELD ("Object No.")));
            Caption = 'Version List';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Object Date"; Date)
        {
            CalcFormula = Lookup (Object.Date WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Object Time"; Time)
        {
            CalcFormula = Lookup (Object.Time WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Time';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "No. of Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No.")));
            Caption = 'No. of Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "No. of New Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       "Known Comment" = CONST (false)));
            Caption = 'No. of New Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "No. of Known Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       "Known Comment" = CONST (true)));
            Caption = 'No. of Known Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Include in Transport"; Boolean)
        {
            Caption = 'Include in Transport';
            InitValue = true;
        }
        field(18; "No. of Critical Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       Critical = CONST (true)));
            Caption = 'No. of Critical Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Rollback Date"; Date)
        {
            Caption = 'Rollback Date';
        }
        field(20; "Rollback Time"; Time)
        {
            Caption = 'Rollback Time';
        }
    }

    keys
    {
        key(Key1; "Project No.", "Object Type", "Object No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object No.")
        {
        }
        key(Key3; "Transport No.")
        {
        }
        key(Key4; "Overlap Sorting")
        {
        }
    }

    fieldgroups
    {
    }
}

