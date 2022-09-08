table 5056403 "CompGoalPotAssessTemplate/TM"
{
    Caption = 'Competence/Goal/Potential Assessment-Template';
    Description = 'GrCGPAssTemp';

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
        field(10; LineNo; Integer)
        {
            Caption = 'LineNo';
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
        field(6500; AssessmentLevelNo; Code[20])
        {
            Caption = 'AssessmentLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6510; AssessmentLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AssessmentLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AssessmentLevelNo));
        }
        field(6520; AssessmentLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AssessmentLevelNo),
                                                                          "Line No." = FIELD (AssessmentLevelLineNo)));
            Caption = 'AssessmentLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6530; AssessmentFactor; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentFactor';
        }
        field(6570; AssessmentDefinition; Text[250])
        {
            Caption = 'AssessmentDefinition';
        }
        field(6600; AssessmentScale1; Boolean)
        {
            Caption = 'AssessmentScale1';
        }
        field(6610; AssessmentScale2; Boolean)
        {
            Caption = 'AssessmentScale2';
        }
        field(6620; AssessmentScale3; Boolean)
        {
            Caption = 'AssessmentScale3';
        }
        field(6630; AssessmentScale4; Boolean)
        {
            Caption = 'AssessmentScale4';
        }
        field(6640; AssessmentScale5; Boolean)
        {
            Caption = 'AssessmentScale5';
        }
        field(6650; AssessmentScale6; Boolean)
        {
            Caption = 'AssessmentScale6';
        }
        field(6660; AssessmentScale7; Boolean)
        {
            Caption = 'AssessmentScale7';
        }
        field(6670; AssessmentScale8; Boolean)
        {
            Caption = 'AssessmentScale8';
        }
        field(6680; AssessmentScale9; Boolean)
        {
            Caption = 'AssessmentScale9';
        }
        field(6690; AssessmentScale10; Boolean)
        {
            Caption = 'AssessmentScale10';
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
        key(Key1; StructureNo1, StructureNo2, StructureNo3, StructureNo4, StructureNo5, StructureNo6, StructureNo7, StructureNo8, CompGoalPotType, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

