table 5056421 "TextProcessingLine/TM"
{
    Caption = 'Text Processing Line';
    Description = 'GrTextProcLine';

    fields
    {
        field(1; "Text Processing No."; Code[20])
        {
            Caption = 'Text Processing No.';
            NotBlank = true;
            TableRelation = "TextProcessing/TM"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5000; TextLine; Text[250])
        {
            Caption = 'TextLine1';
        }
        field(9990; RecordDateModify; Date)
        {
            Caption = 'RecordDateModify';
            Editable = false;
        }
        field(9991; RecordTimeModify; Time)
        {
            Caption = 'RecordTimeModify';
            Editable = false;
        }
        field(9992; RecordUserNoModify; Code[50])
        {
            Caption = 'RecordUserNoModify';
            Editable = false;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Text Processing No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

