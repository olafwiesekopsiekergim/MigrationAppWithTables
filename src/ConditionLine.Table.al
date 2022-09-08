table 5103618 "Condition Line"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 2 "Table ID", 8 "Condition Reference ID" from Code[10] to Code[20].

    Caption = 'Condition Line';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
            NotBlank = true;
            TableRelation = Condition;
        }
        field(2; "Condition Line No."; Integer)
        {
            Caption = 'Condition Line No.';
            Editable = false;
        }
        field(3; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Condition No."));
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(6; "Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Condition Description"; Text[250])
        {
            Caption = 'Condition Description';
        }
        field(8; "Condition Reference ID"; Code[20])
        {
            Caption = 'Condition Reference ID';
            Description = 'WF0253';
        }
        field(9; "Condition Field No."; Integer)
        {
            Caption = 'Condition Field No.';
        }
        field(10; "Condition Type"; Option)
        {
            Caption = 'Condition Type';
            OptionCaption = 'Field,System,Filter,Date';
            OptionMembers = "Field",System,"Filter",Date;
        }
        field(11; "Condition Comparison"; Option)
        {
            Caption = 'Comparison';
            OptionCaption = '=,>,<,>=,<=,<>';
            OptionMembers = "=",">","<",">=","<=","<>";
        }
        field(12; "Condition Valid"; Boolean)
        {
            Caption = 'Condition valid';
        }
        field(13; "Condition Filter"; Text[250])
        {
            Caption = 'Condition Filter';
        }
        field(14; "Condition Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Condition Table No."),
                                                              "No." = FIELD ("Condition Field No.")));
            Caption = 'Condition Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Condition Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Condition Table No.")));
            Caption = 'Condition Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(18; "Condition Table No."; Integer)
        {
            Caption = 'Condition Table No.';
        }
        field(48; "X-Rec"; Boolean)
        {
            Caption = 'X-Rec';
        }
        field(49; "User-defined enabled"; Boolean)
        {
            Caption = 'User-defined Expression enabled';
        }
        field(50; "User-defined Expression"; Text[250])
        {
            Caption = 'User-defined Expression';
        }
        field(51; "Auto adjust Filter"; Boolean)
        {
            Caption = 'Auto adjust Filter';
            InitValue = true;
        }
        field(52; Language; Integer)
        {
            Caption = 'Language';
        }
        field(53; "Date Formula"; DateFormula)
        {
            Caption = 'Date Formula';
        }
    }

    keys
    {
        key(Key1; "Condition No.", "Condition Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

