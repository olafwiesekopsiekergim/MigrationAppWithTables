table 11102058 "OM - Where Used Object Line"
{
    Caption = 'Where Used Object Line';
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
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(3; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(4; Enabled; Boolean)
        {
            Caption = 'Enabled';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = 'Object,Trigger,Key,Sum Index Field,Field,Global Function,Local Function,Global Variable,Local Variable,Parameter,Return Value';
            OptionMembers = "Object","Trigger","Key","Sum Index Field","Field","Global Function","Local Function","Global Variable","Local Variable",Parameter,"Return Value";
        }
        field(6; Id; Integer)
        {
            BlankZero = true;
            Caption = 'Id';
            Editable = false;
        }
        field(7; Name; Text[250])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(8; "No. of Times Used"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Cross Table" WHERE ("Object Entry No." = FIELD ("Entry No.")));
            Caption = 'No. of Times Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "With Validation"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Where Used Cross Table" WHERE ("Object Entry No." = FIELD ("Entry No."),
                                                                     Validation = CONST (Yes)));
            Caption = 'With Validation';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; Filled; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Where Used Cross Table" WHERE ("Object Entry No." = FIELD ("Entry No."),
                                                                     Validation = FILTER (No | Yes)));
            Caption = 'Filled';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Parent No."; Integer)
        {
            BlankZero = true;
            Caption = 'Parent No.';
            TableRelation = "OM - Where Used Object Line";
        }
        field(12; "C/AL Line No."; Integer)
        {
            Caption = 'C/AL Line No.';
        }
        field(13; "No. of Variables"; Integer)
        {
            BlankZero = true;
            Caption = 'No. of Variables';
            Editable = false;
        }
        field(14; "No. of Parameters"; Integer)
        {
            BlankZero = true;
            Caption = 'No. of Parameters';
            Editable = false;
        }
        field(15; Used; Boolean)
        {
            Caption = 'Used';
        }
        field(16; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Name to Display"; Text[250])
        {
            Caption = 'Name to Display';
        }
        field(20; "Type Name"; Text[30])
        {
            Caption = 'Type Name';
            Editable = false;
        }
        field(21; "No. of Return Values"; Integer)
        {
            BlankZero = true;
            Caption = 'No. of Return Values';
            Editable = false;
        }
        field(22; "Sub Type"; Text[30])
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
        key(Key2; "Object Type", "Object No.", Type, Id)
        {
        }
        key(Key3; "Object Type", "Object No.", "C/AL Line No.")
        {
        }
        key(Key4; "Object Type", "Object No.", Type, "C/AL Line No.")
        {
        }
        key(Key5; "Parent No.", Type, Id)
        {
        }
    }

    fieldgroups
    {
    }
}

