table 5056440 "CockpitToDoLine/TM"
{
    Caption = 'Cockpit To-Do Line';
    Description = 'GrCockToDoLine';

    fields
    {
        field(1; CockpitToDoNo; Code[20])
        {
            Caption = 'CockpitToDoNo';
            NotBlank = true;
            TableRelation = "CockpitToDo/TM"."No.";
        }
        field(2; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5020; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5030; Description2; Text[30])
        {
            Caption = 'Description2';
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
        key(Key1; CockpitToDoNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

