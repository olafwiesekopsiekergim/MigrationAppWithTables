table 11102076 "OM - Element to Renumber"
{
    Caption = 'Element to Renumber';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",,"Page","Query";
        }
        field(3; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"));
        }
        field(4; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Parent Name"; Text[200])
        {
            Caption = 'Parent Name';
            Editable = false;
        }
        field(6; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Function,Variable,Control';
            OptionMembers = "Function",Variable,Control;
        }
        field(7; "No."; Integer)
        {
            BlankZero = true;
            Caption = 'No.';
        }
        field(8; Name; Text[250])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(9; "New Number"; Integer)
        {
            Caption = 'New Number';
        }
        field(10; Renumber; Boolean)
        {
            Caption = 'Renumber';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Object Type", "Object No.", "Parent Name", Type, "No.")
        {
            Clustered = true;
        }
        key(Key3; "Object Type", "Object No.", "Parent Name", Type, "New Number")
        {
        }
    }

    fieldgroups
    {
    }
}

