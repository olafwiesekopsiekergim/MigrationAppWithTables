table 5100934 "DIS - Record Pool Partner"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Partner';

    fields
    {
        field(1; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool Code';
            TableRelation = "DIS - Record Pool";
        }
        field(2; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            NotBlank = true;
            TableRelation = "DIS - Partner";
        }
        field(25; "Autom. BreakLoop Limit"; Integer)
        {
            Caption = 'Autom. BreakLoop after Records';
        }
        field(42; "Record Pool Partner Records"; Boolean)
        {
            Caption = 'Use Partner Matrix';
        }
        field(43; "Record Pool Record Frequency"; Option)
        {
            Caption = 'Permitted Record Frequency';
            OptionCaption = 'Unrestricted,Once';
            OptionMembers = Unrestricted,Once;
        }
        field(50; "Log Insertion"; Boolean)
        {
            Caption = 'Log Insertion';
        }
        field(51; "Log Modification"; Boolean)
        {
            Caption = 'Log Modification';
        }
        field(52; "Log Deletion"; Boolean)
        {
            Caption = 'Log Deletion';
        }
        field(53; "Log Rename"; Boolean)
        {
            Caption = 'Log Rename';
        }
        field(55; "Log Mapping"; Boolean)
        {
            Caption = 'Log Change By Mapping';
        }
        field(58; "Log Event"; Boolean)
        {
            Caption = 'Log Events';
        }
        field(85; "Record Pool Entries"; Integer)
        {
            CalcFormula = Count ("DIS - Record Pool Entry" WHERE ("Record Pool Code" = FIELD ("Record Pool Code"),
                                                                 "Partner Code" = FIELD ("Partner Code")));
            Caption = 'Record Pool Entries Count';
            Editable = false;
            FieldClass = FlowField;
        }
        field(86; "Record Pool Entries Unproc."; Integer)
        {
            CalcFormula = Count ("DIS - Record Pool Entry" WHERE ("Record Pool Code" = FIELD ("Record Pool Code"),
                                                                 "Partner Code" = FIELD ("Partner Code"),
                                                                 Status = FILTER (< Processed)));
            Caption = 'Unprocessed Record Pool Entries';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Record Pool Code", "Partner Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

