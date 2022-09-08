table 5056418 "TextProcessing/TM"
{
    Caption = 'Text Processing';
    Description = 'GrTextProc';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(5000; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5100; ApplStatusSetBatchProcessing; Option)
        {
            Caption = 'ApplStatusSetBatchProcessing';
            OptionCaption = ' ,Reminder,Engagement,Rejection';
            OptionMembers = " ",Reminder,Engagement,Rejection;
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
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

