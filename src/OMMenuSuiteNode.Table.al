table 11102092 "OM - MenuSuite Node"
{
    Caption = 'MenuSuite Node';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Menu Type"; Option)
        {
            Caption = 'Menu Type';
            Editable = false;
            OptionCaption = 'Classic Client,RoleTailored Client';
            OptionMembers = "Classic Client","RoleTailored Client";
        }
        field(3; "Menu No."; Integer)
        {
            Caption = 'Menu No.';
            Editable = false;
        }
        field(4; Guid; Text[50])
        {
            Caption = 'Guid';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Root,Menu,MenuGroup,MenuItem';
            OptionMembers = " ",Root,Menu,MenuGroup,MenuItem;
        }
        field(6; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(7; "ENU Caption"; Text[100])
        {
            Caption = 'ENU Caption';
            Editable = false;
        }
        field(8; Caption; Text[100])
        {
            Caption = 'Caption';
            Editable = false;
        }
        field(9; Deleted; Option)
        {
            Caption = 'Deleted';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(10; "Parent Node Id"; Text[50])
        {
            Caption = 'Parent Node Id';
        }
        field(11; "Next Node Id"; Text[50])
        {
            Caption = 'Next Node Id';
        }
        field(12; "First Child"; Text[50])
        {
            Caption = 'First Child';
        }
        field(13; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            Editable = false;
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,,Page,Query';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",,"Page","Query";
        }
        field(14; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            Editable = false;
        }
        field(15; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Object Version List"; Text[248])
        {
            CalcFormula = Lookup (Object."Version List" WHERE (Type = FIELD ("Object Type"),
                                                              "Company Name" = CONST (''),
                                                              ID = FIELD ("Object No.")));
            Caption = 'Version List';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Object Date"; Date)
        {
            CalcFormula = Lookup (Object.Date WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Object Time"; Time)
        {
            CalcFormula = Lookup (Object.Time WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Time';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; Sorting; Integer)
        {
            Caption = 'Sorting';
        }
        field(20; Level; Integer)
        {
            Caption = 'Level';
        }
        field(21; Visible; Boolean)
        {
            Caption = 'Visible';
        }
        field(22; "C/AL Line No."; Integer)
        {
            Caption = 'C/AL Line No.';
        }
        field(23; Empty; Boolean)
        {
            Caption = 'Empty';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Menu Type", "Menu No.", Guid)
        {
        }
        key(Key3; "Menu Type", Guid)
        {
            Clustered = true;
        }
        key(Key4; "Menu Type", "Parent Node Id")
        {
        }
        key(Key5; Sorting)
        {
        }
        key(Key6; Level)
        {
        }
        key(Key7; "Menu No.", "C/AL Line No.")
        {
        }
        key(Key8; "Menu Type", "Next Node Id")
        {
        }
    }

    fieldgroups
    {
    }
}

