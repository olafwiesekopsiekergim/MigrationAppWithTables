table 11102081 "OM - Check Guidelines Comment"
{
    Caption = 'Check Guidelines Comment';
    DataPerCompany = false;

    fields
    {
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
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
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
        field(5; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(6; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Coding,Layout,Data,Naming,Captions,Transport';
            OptionMembers = " ",Coding,"Layout",Data,Naming,Captions,Transport;
        }
        field(7; "Comment No."; Integer)
        {
            Caption = 'Comment No.';
        }
        field(8; "C/AL Line No."; Integer)
        {
            Caption = 'C/AL Line No.';
        }
        field(9; Identifier; Code[100])
        {
            Caption = 'Identifier';
        }
        field(10; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(11; "Known Comment"; Boolean)
        {
            Caption = 'Known Comment';
        }
        field(12; "Autocorrect Group"; Integer)
        {
            Caption = 'Autocorrect Group';
        }
        field(13; "Autocorrect Parameter"; Integer)
        {
            BlankZero = true;
            Caption = 'Autocorrect Parameter';
        }
        field(14; "Autocorrect Parameter 2"; Integer)
        {
            Caption = 'Autocorrect Parameter 2';
        }
        field(15; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; Critical; Boolean)
        {
            Caption = 'Critical';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object No.", "C/AL Line No.", "Autocorrect Parameter")
        {
        }
        key(Key3; "Object Type", "Object No.", "Comment No.", Identifier)
        {
        }
        key(Key4; "Autocorrect Group")
        {
        }
        key(Key5; Type)
        {
        }
    }

    fieldgroups
    {
    }
}

