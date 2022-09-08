table 5056402 "CompGoalPotStructTree/TM"
{
    Caption = 'Competence/Goal/Potential Structure-Tree';
    Description = 'GrCGPStructTree';

    fields
    {
        field(1; StructureNo1; Code[20])
        {
            Caption = 'StructureNo1';
            NotBlank = true;
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("1. Structure-Element"));
        }
        field(2; StructureNo2; Code[20])
        {
            Caption = 'StructureNo2';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("2. Structure-Element"));
        }
        field(3; StructureNo3; Code[20])
        {
            Caption = 'StructureNo3';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("3. Structure-Element"));
        }
        field(4; StructureNo4; Code[20])
        {
            Caption = 'StructureNo4';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("4. Structure-Element"));
        }
        field(5; StructureNo5; Code[20])
        {
            Caption = 'StructureNo5';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("5. Structure-Element"));
        }
        field(6; StructureNo6; Code[20])
        {
            Caption = 'StructureNo6';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("6. Structure-Element"));
        }
        field(7; StructureNo7; Code[20])
        {
            Caption = 'StructureNo7';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("7. Structure-Element"));
        }
        field(8; StructureNo8; Code[20])
        {
            Caption = 'StructureNo8';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("8. Structure-Element"));
        }
        field(9; CompGoalPotType; Option)
        {
            Caption = 'CompGoalPotType';
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
        }
        field(5000; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5010; Description2; Text[30])
        {
            Caption = 'Description2';
        }
        field(5100; Structure1Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo1),
                                                                                  StructureType = CONST ("1. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure1Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5105; Structure1Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo1),
                                                                                   StructureType = CONST ("1. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure1Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; Structure2Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo2),
                                                                                  StructureType = CONST ("2. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure2Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5115; Structure2Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo2),
                                                                                   StructureType = CONST ("2. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure2Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5120; Structure3Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo3),
                                                                                  StructureType = CONST ("3. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure3Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5125; Structure3Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo3),
                                                                                   StructureType = CONST ("3. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure3Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5130; Structure4Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo4),
                                                                                  StructureType = CONST ("4. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure4Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5135; Structure4Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo4),
                                                                                   StructureType = CONST ("4. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure4Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5140; Structure5Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo5),
                                                                                  StructureType = CONST ("5. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure5Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5145; Structure5Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo5),
                                                                                   StructureType = CONST ("5. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure5Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5150; Structure6Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo6),
                                                                                  StructureType = CONST ("6. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure6Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5155; Structure6Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo6),
                                                                                   StructureType = CONST ("6. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure6Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5160; Structure7Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo7),
                                                                                  StructureType = CONST ("7. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure7Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5165; Structure7Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo7),
                                                                                   StructureType = CONST ("7. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure7Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5170; Structure8Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo8),
                                                                                  StructureType = CONST ("8. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure8Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5175; Structure8Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo8),
                                                                                   StructureType = CONST ("8. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (CompGoalPotType)));
            Caption = 'Structure8Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5200; Points; Integer)
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
        key(Key1; StructureNo1, StructureNo2, StructureNo3, StructureNo4, StructureNo5, StructureNo6, StructureNo7, StructureNo8, CompGoalPotType)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

