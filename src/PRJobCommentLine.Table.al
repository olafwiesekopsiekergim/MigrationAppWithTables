table 5292339 "PR - Job Comment Line"
{
    Caption = 'Job Comment Line';
    DataCaptionFields = Code1, Code2, Type;

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; Code1; Code[20])
        {
            Caption = 'Code1';
        }
        field(3; Code2; Code[30])
        {
            Caption = 'Code2';
        }
        field(4; Code3; Code[10])
        {
            Caption = 'Code3';
        }
        field(5; Code4; Code[10])
        {
            Caption = 'Code4';
        }
        field(6; Int1; Integer)
        {
            Caption = 'Int1';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,General,Rough Concept,Detailed Concept,Processing,Support,Purchase,Sale,Long Text';
            OptionCaption = ' ,General,Rough Concept,Detailed Concept,Processing,Support,Purchase,Sale,Long Text';
            OptionMembers = " ",General,"Rough Concept","Detailed Concept",Processing,Support,Purchase,Sale,"Long Text";
        }
        field(8; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            Description = 'TR Resource';
            TableRelation = Resource;
        }
        field(11; Date; Date)
        {
            Caption = 'Date';
        }
        field(12; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(20; "Format Text"; Option)
        {
            Caption = 'Format Text';
            OptionCaption = ' ,Bold,Italic,Underline';
            OptionMembers = " ",Bold,Italic,Underline;
        }
    }

    keys
    {
        key(Key1; "Table ID", Code1, Code2, Code3, Code4, Int1, Type, "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

