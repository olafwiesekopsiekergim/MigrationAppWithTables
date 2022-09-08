table 5056271 "CompGoalPotStructElement/TM"
{
    Caption = 'Competence/Goal/Potential Structure-Element';
    Description = 'GrCGPStructElem';

    fields
    {
        field(1; StructureNo; Code[20])
        {
            Caption = 'StructureNo';
            NotBlank = true;
        }
        field(2; StructureType; Option)
        {
            Caption = 'StructureType';
            OptionCaption = ' ,1. Structure-Element,2. Structure-Element,3. Structure-Element,4. Structure-Element,5. Structure-Element,6. Structure-Element,7. Structure-Element,8. Structure-Element';
            OptionMembers = " ","1. Structure-Element","2. Structure-Element","3. Structure-Element","4. Structure-Element","5. Structure-Element","6. Structure-Element","7. Structure-Element","8. Structure-Element";
        }
        field(3; CompGoalPotType; Option)
        {
            Caption = 'CompGoalPotType';
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
        }
        field(5000; CompetenceType; Option)
        {
            Caption = 'CompetenceType';
            OptionCaption = ' ,Professional Competence,Method Competence,Social Competence,Personal Competence,Leadership Competence';
            OptionMembers = " ","Professional Competence","Method Competence","Social Competence","Personal Competence","Leadership Competence";
        }
        field(5010; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5020; Description2; Text[30])
        {
            Caption = 'Description2';
        }
        field(5030; RequirementProfileDescription; Text[250])
        {
            Caption = 'RequirementProfileDescription';
        }
        field(6200; Points; Integer)
        {
            Caption = 'Points';
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
        key(Key1; StructureType, StructureNo, CompGoalPotType)
        {
            Clustered = true;
        }
        key(Key2; StructureNo, StructureType, CompGoalPotType)
        {
        }
    }

    fieldgroups
    {
    }
}

