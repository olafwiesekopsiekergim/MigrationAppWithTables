table 5292340 "PR - Posted Job Comment Line"
{
    Caption = 'Posted Job Comment Line';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Comment Line No."; Integer)
        {
            Caption = 'Comment Line No.';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,General,Rough Concept,Detailed Concept,Processing,Support,Purchase,Sale,Long Text';
            OptionCaption = ' ,General,Rough Concept,Detailed Concept,Processing,Support,Purchase,Sale,Long Text';
            OptionMembers = " ",General,"Rough Concept","Detailed Concept",Processing,Support,Purchase,Sale,"Long Text";
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
        key(Key1; "Table ID", "Document No.", "Line No.", Type, "Comment Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

