table 5171700 "CMNM Quick Part"
{
    // //c/sr/12.12.14: Hotfix GetUserMessage => GLOBALLANGUAGE statt WINDOWSLANGUAGE

    Caption = 'Quick Part';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Error,,Content,Macro,File';
            OptionMembers = Error,,Content,Macro,File;
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(3; "Key"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(4; "Content Type"; Option)
        {
            Caption = 'Content Type';
            OptionCaption = 'Html Content,Text Content,,Simple Text';
            OptionMembers = Html,Text,,SimpleText;
        }
        field(5; "Text Value"; Text[200])
        {
            Caption = 'Text Value';
        }
        field(10; "Int Value"; Integer)
        {
            Caption = 'Integer Value';
        }
        field(15; "Decimal Value"; Decimal)
        {
            Caption = 'Decimal Value';
        }
        field(20; "Bool Value"; Boolean)
        {
            Caption = 'Boolean Value';
        }
        field(21; Content; BLOB)
        {
            Caption = 'Content';
        }
        field(22; Filename; Text[200])
        {
            Caption = 'Filename';
        }
    }

    keys
    {
        key(Key1; Type, "Language Code", "Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Language Code", "Key", "Content Type", "Text Value")
        {
        }
    }
}

