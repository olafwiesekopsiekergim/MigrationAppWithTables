table 5103648 "Document Connection Detail"
{
    // WF0078  Filter for Source Fields.
    // 
    // WF3.01:
    // -------
    // WF0188  Test "Target Field No." and "Source Field No." on validate.
    //         Init "Target Table No." and "Source Table No." if necessary (issue on first record in RTC).
    // WF0191  Added TableRelation in field "No.".

    Caption = 'Document Connection Detail';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'WF0191';
            TableRelation = "Document Connection";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Target Table No."; Integer)
        {
            Caption = 'Target Table No.';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(4; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(5; "Target Field No."; Integer)
        {
            Caption = 'Target Field No.';
        }
        field(6; "Target Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Target Table No."),
                                                              "No." = FIELD ("Target Field No.")));
            Caption = 'Target Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Source Field No."; Integer)
        {
            Caption = 'Source Field No.';
        }
        field(8; "Source Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Source Table No."),
                                                              "No." = FIELD ("Source Field No.")));
            Caption = 'Source Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = 'WF0078';
            OptionCaption = 'Field,Filter';
            OptionMembers = "Field","Filter";
        }
        field(14; "Source Filter"; Text[250])
        {
            Caption = 'Source Filter';
            Description = 'WF0078';
        }
        field(15; "Auto adjust Filter"; Boolean)
        {
            Caption = 'Auto adjust Filter';
            Description = 'WF0078';
            InitValue = true;
        }
        field(16; Language; Integer)
        {
            Caption = 'Language';
            Description = 'WF0078';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

