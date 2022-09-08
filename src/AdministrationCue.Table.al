table 9059 "Administration Cue"
{
    Caption = 'Administration Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Job Queue Entries - Today"; Integer)
        {
            CalcFormula = Count ("Job Queue Entry" WHERE ("Earliest Start Date/Time" = FIELD ("Date Filter2"),
                                                         "Expiration Date/Time" = FIELD ("Date Filter3")));
            Caption = 'Job Queue Entries - Today';
            FieldClass = FlowField;
        }
        field(3; "User Posting Period"; Integer)
        {
            CalcFormula = Count ("User Setup" WHERE ("Allow Posting To" = FIELD ("Date Filter")));
            Caption = 'User Posting Period';
            FieldClass = FlowField;
        }
        field(4; "No. Series Period"; Integer)
        {
            CalcFormula = Count ("No. Series Line" WHERE ("Last Date Used" = FIELD ("Date Filter")));
            Caption = 'No. Series Period';
            FieldClass = FlowField;
        }
        field(20; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(21; "Date Filter2"; DateTime)
        {
            Caption = 'Date Filter2';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(22; "Date Filter3"; DateTime)
        {
            Caption = 'Date Filter3';
            Editable = false;
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

