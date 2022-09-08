table 5103610 "Condition Relation Field"
{
    // WF0127  Corrected length of field "Condition No." from 10 to 20.
    // WF0171  Update fields on insert.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in fields 2 "Condition Table ID", 3 "Table ID" from Code[10] to Code[20].

    Caption = 'Condition Relation Field';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
            NotBlank = true;
            TableRelation = Condition;
        }
        field(2; "Condition Table ID"; Code[20])
        {
            Caption = 'Condition Table ID';
            Description = 'WF0253';
            NotBlank = true;
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Condition No."));
        }
        field(3; "Table ID"; Code[20])
        {
            Caption = 'Table ID';
            Description = 'WF0253';
            NotBlank = true;
            TableRelation = "Condition Table"."Table ID" WHERE ("Condition No." = FIELD ("Condition No."));
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(5; "Link Field No."; Integer)
        {
            Caption = 'Link Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Condition Table No."));
        }
        field(9; "Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Link Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Condition Table No."),
                                                              "No." = FIELD ("Link Field No.")));
            Caption = 'Link Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Field,Filter';
            OptionMembers = "Field","Filter";
        }
        field(12; "Filter"; Text[250])
        {
            Caption = 'Filter';
        }
        field(13; "Condition Table No."; Integer)
        {
            Caption = 'Condition Table No.';
        }
        field(14; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(15; "Auto adjust Filter"; Boolean)
        {
            Caption = 'Auto adjust Filter';
            InitValue = true;
        }
        field(16; Language; Integer)
        {
            Caption = 'Language';
        }
    }

    keys
    {
        key(Key1; "Condition No.", "Condition Table ID", "Table ID", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

