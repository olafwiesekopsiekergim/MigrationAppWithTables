table 5103643 "Wizard Condition"
{
    Caption = 'Wizard Condition';

    fields
    {
        field(1; "Condition Type"; Option)
        {
            Caption = 'Condition Type';
            OptionCaption = 'Entry,Exit';
            OptionMembers = Entry,"Exit";
        }
        field(2; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(3; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(4; "Field Caption"; Text[80])
        {
            Caption = 'Field Caption';
        }
        field(5; "Not Empty"; Boolean)
        {
            Caption = 'Not Empty';
        }
        field(6; "Wizard ID"; Integer)
        {
            Caption = 'Wizard ID';
        }
        field(7; "Filter String"; Text[250])
        {
            Caption = 'Filter';
        }
        field(8; Modified; Boolean)
        {
            Caption = 'Modified';
        }
        field(9; "Auto adjust Filter"; Boolean)
        {
            Caption = 'Auto adjust Filter';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Wizard ID", "Condition Type", "Table No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

