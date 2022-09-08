table 11102082 "OM - Check Guidelines Buffer"
{
    Caption = 'Check Guidelines Buffer';
    DataPerCompany = false;

    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Id';
        }
        field(2; "C/AL Line No."; Integer)
        {
            Caption = 'C/AL Line No.';
        }
        field(3; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(4; Caption; Text[250])
        {
            Caption = 'Caption';
        }
        field(5; "Has Caption"; Boolean)
        {
            Caption = 'Has Caption';
        }
        field(6; Editable; Option)
        {
            Caption = 'Editable';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(7; "Not Blank"; Boolean)
        {
            Caption = 'Not Blank';
        }
        field(8; "Field Type"; Text[30])
        {
            Caption = 'Field Type';
        }
        field(9; "Field Class"; Option)
        {
            Caption = 'Field Class';
            OptionCaption = ' ,Normal,FlowField,FlowFilter';
            OptionMembers = " ",Normal,FlowField,FlowFilter;
        }
        field(10; "Auto Increment"; Boolean)
        {
            Caption = 'Auto Increment';
        }
        field(11; "Has Option Caption"; Boolean)
        {
            Caption = 'Has Option Caption';
        }
        field(12; "No. of Options"; Integer)
        {
            Caption = 'No. of Options';
        }
        field(13; "Option Caption Line No."; Integer)
        {
            Caption = 'Option Caption Line No.';
        }
        field(14; "Validate Table Relation"; Boolean)
        {
            Caption = 'Validate Table Relation';
            InitValue = true;
        }
        field(15; "CalcFormula Present"; Boolean)
        {
            Caption = 'CalcFormula Present';
        }
        field(16; "Option String Line No."; Integer)
        {
            Caption = 'Option String Line No.';
        }
    }

    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }
        key(Key2; Name)
        {
        }
    }

    fieldgroups
    {
    }
}

