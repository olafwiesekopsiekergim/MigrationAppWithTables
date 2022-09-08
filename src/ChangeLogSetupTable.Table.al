table 403 "Change Log Setup (Table)"
{
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    //    Added fields:
    //      5060470 To Verify
    //      5060490 Type of Logging

    Caption = 'Change Log Setup (Table)';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            FieldClass = FlowField;
        }
        field(3; "Log Insertion"; Option)
        {
            Caption = 'Log Insertion';
            OptionCaption = ' ,Some Fields,All Fields';
            OptionMembers = " ","Some Fields","All Fields";
        }
        field(4; "Log Modification"; Option)
        {
            Caption = 'Log Modification';
            OptionCaption = ' ,Some Fields,All Fields';
            OptionMembers = " ","Some Fields","All Fields";
        }
        field(5; "Log Deletion"; Option)
        {
            Caption = 'Log Deletion';
            OptionCaption = ' ,Some Fields,All Fields';
            OptionMembers = " ","Some Fields","All Fields";
        }
        field(5060470; "To Verify"; Boolean)
        {
            Caption = 'To Verify';
            Description = '#RAW16.00:T100';
            Editable = false;
        }
        field(5060490; "Type of Logging"; Option)
        {
            Caption = 'Type of Logging';
            Description = '#RAW16.00:T100';
            OptionCaption = 'Standard,Full Logging';
            OptionMembers = Standard,"Full Logging";
        }
    }

    keys
    {
        key(Key1; "Table No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

