table 5103607 "Condition Entry"
{
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.02:
    // -------
    // WF0268  New fields "Record ID", "Primary Key", "Table No.", "Table Caption" added.

    Caption = 'Condition Entry';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
        }
        field(4; Time; Time)
        {
            Caption = 'Time';
        }
        field(5; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WFNAV7';
        }
        field(6; "Condition Valid"; Boolean)
        {
            Caption = 'Condition Valid';
        }
        field(15; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
            Description = 'WF0268';
        }
        field(16; "Primary Key"; Text[250])
        {
            Caption = 'Primary Key';
            Description = 'WF0268';
        }
        field(20; "Table No."; Integer)
        {
            Caption = 'Table No.';
            Description = 'WF0268';
        }
        field(21; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Description = 'WF0268';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

