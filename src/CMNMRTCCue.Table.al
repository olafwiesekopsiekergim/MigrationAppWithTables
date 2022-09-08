table 5171709 "CMNM RTC Cue"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "My Today Mails"; Integer)
        {
            CalcFormula = Count ("CMNM Entry" WHERE ("User Created" = FIELD ("User Filter"),
                                                    "Date Created" = FIELD ("Date Filter")));
            Caption = 'My Today Mails';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Company Today Mails"; Integer)
        {
            CalcFormula = Count ("CMNM Entry" WHERE ("Date Created" = FIELD ("Date Filter")));
            Caption = 'All Today Mails';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Today Error Mails"; Integer)
        {
            CalcFormula = Count ("CMNM Entry" WHERE ("Date Created" = FIELD ("Date Filter"),
                                                    "Info Code" = FILTER ('5' | '6' | '1' | '2')));
            Caption = 'Today Dispatch Errors';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(21; "Date Filter2"; Date)
        {
            Caption = 'Date Filter2';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(22; "User Filter"; Code[20])
        {
            Caption = 'User Filter';
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

