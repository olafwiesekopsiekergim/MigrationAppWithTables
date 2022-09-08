table 11102091 "OM - Test Log"
{
    Caption = 'Test Log';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Group,Project';
            OptionMembers = Group,Project;
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Group)) "OM - Test Group"
            ELSE
            IF (Type = CONST (Project)) "OM - Project";
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "OM - Test"."Line No." WHERE (Type = FIELD (Type),
                                                          "No." = FIELD ("No."));
        }
        field(5; "Executed By"; Code[20])
        {
            Caption = 'Executed By';
        }
        field(6; "Test Date"; Date)
        {
            Caption = 'Test Date';
        }
        field(7; "Test Time"; Time)
        {
            Caption = 'Test Time';
        }
        field(8; "Duration (ms)"; Integer)
        {
            Caption = 'Duration (ms)';
        }
        field(9; Succeeded; Boolean)
        {
            Caption = 'Succeeded';
        }
        field(10; Result; Text[250])
        {
            Caption = 'Result';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

