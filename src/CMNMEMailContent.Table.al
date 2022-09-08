table 5171695 "CMNM E-Mail Content"
{
    Caption = 'Content';

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
        field(3; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Editor,,,Codeunit,File';
            OptionMembers = Editor,,,"Codeunit",File;
        }
        field(10; "Content Filepath"; Text[250])
        {
            Caption = 'Filepath';
        }
        field(11; "Interaction Template"; Code[10])
        {
            Caption = 'Interaction Template';
            Description = 'deprecated';
            TableRelation = IF ("Content Filepath" = FILTER ('')) "Interaction Template".Code;
        }
        field(12; "Report ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Report ID';
            Description = 'deprecated';
        }
        field(13; Parameter; Text[100])
        {
            Caption = 'Parameter';
        }
        field(20; "Html Content"; BLOB)
        {
            Caption = 'Html Content';
        }
        field(21; "Text Content"; BLOB)
        {
            Caption = 'Text Content';
        }
        field(30; "Creation Timeout"; Integer)
        {
            Caption = 'Creation Timeout';
            Description = 'in Sek.';
        }
        field(50; "Qty. of Replacements"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM E-Mail Replacement" WHERE ("Template No." = FIELD ("Template No."),
                                                                 Language = FIELD (Language),
                                                                 "Line No." = CONST (0),
                                                                 "Line Type" = CONST (Content)));
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

