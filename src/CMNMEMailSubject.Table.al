table 5171694 "CMNM E-Mail Subject"
{
    Caption = 'Subject';

    fields
    {
        field(1; "Template No."; Code[20])
        {
            Caption = 'Template No.';
            NotBlank = true;
            TableRelation = "CMNM E-Mail Template"."No." WHERE ("No." = FIELD ("Template No."));
        }
        field(2; Language; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language.Code;
        }
        field(4; Value; Text[100])
        {
            Caption = 'Value';
        }
        field(50; "Qty. of Replacements"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM E-Mail Replacement" WHERE ("Template No." = FIELD ("Template No."),
                                                                 Language = FIELD (Language),
                                                                 "Line No." = CONST (0),
                                                                 "Line Type" = CONST (Subject)));
            Caption = 'Replacements';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Template No.", Language)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

