table 5056273 "CompGoalPotGroup/TM"
{
    Caption = 'Competence/Goal/Potential Group';
    Description = 'GrCGPGroup';

    fields
    {
        field(1; CompGoalPotGroupNo; Code[20])
        {
            Caption = 'CompGoalPotGroupNo';
            NotBlank = true;
        }
        field(5000; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
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
        key(Key1; CompGoalPotGroupNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

