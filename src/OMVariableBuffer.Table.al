table 11102062 "OM - Variable Buffer"
{
    Caption = 'Variable Buffer';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; Scope; Option)
        {
            Caption = 'Scope';
            OptionCaption = 'Local,Parameter,Return Value,Global';
            OptionMembers = "Local",Parameter,"Return Value",Global;
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Variable,Function,Control';
            OptionMembers = " ",Variable,"Function",Control;
        }
        field(4; "Parent Name"; Text[150])
        {
            Caption = 'Parent Name';
        }
        field(5; "Case Name"; Text[250])
        {
            Caption = 'Case Name';
        }
        field(6; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(7; Id; Integer)
        {
            Caption = 'Id';
        }
        field(8; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(9; "Object No."; Integer)
        {
            Caption = 'Object No.';
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(10; "Object Entry No."; Integer)
        {
            Caption = 'Object Entry No.';
        }
        field(11; "C/AL Line No."; Integer)
        {
            Caption = 'C/AL Line No.';
        }
        field(12; "Parent Entry No."; Integer)
        {
            Caption = 'Parent Entry No.';
        }
        field(13; Used; Boolean)
        {
            Caption = 'Used';
        }
        field(14; "Object Line Entry No."; Integer)
        {
            Caption = 'Object Line Entry No.';
        }
        field(15; "Current Key"; Integer)
        {
            Caption = 'Current Key';
        }
        field(16; "Variable Entry No."; Integer)
        {
            Caption = 'Variable Entry No.';
        }
        field(18; "Type Name"; Text[30])
        {
            Caption = 'Type Name';
        }
        field(19; "Temporary Record"; Boolean)
        {
            Caption = 'Temporary Record';
        }
        field(20; "Sub Type"; Text[30])
        {
            Caption = 'Sub Type';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Name, Scope)
        {
        }
        key(Key3; Scope, Used)
        {
        }
        key(Key4; "Parent Entry No.")
        {
        }
        key(Key5; "Parent Name", Name)
        {
        }
    }

    fieldgroups
    {
    }
}

