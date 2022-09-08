table 5351554 "CESS - Cue"
{
    Caption = 'SanScreen Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(1000; "Queue Entries"; Integer)
        {
            CalcFormula = Count ("CESS - Queue");
            Caption = 'pending Scans';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1001; "Hits to Process"; Integer)
        {
            CalcFormula = Count ("CESS - Entry" WHERE ("Validation Result" = CONST (Hit),
                                                      "Hit processed" = CONST (false)));
            Caption = 'Hits to Process';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1002; Entries; Integer)
        {
            CalcFormula = Count ("CESS - Entry");
            Caption = 'SanScreen Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "VAT Entries"; Integer)
        {
            CalcFormula = Count ("CESS - VAT Validation Entry");
            Caption = 'VAT Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1004; "Activity Entries"; Integer)
        {
            CalcFormula = Count ("CESS - Activity Entry");
            Caption = 'Activity Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(2000; "Date Filter1"; Date)
        {
            Caption = 'Date Filter1';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(2001; "Date Filter2"; Date)
        {
            Caption = 'Date Filter2';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(2002; "Date Filter3"; Date)
        {
            Caption = 'Date Filter2';
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

