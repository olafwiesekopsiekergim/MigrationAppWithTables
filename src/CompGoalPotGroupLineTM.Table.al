table 5056274 "CompGoalPotGroupLine/TM"
{
    Caption = 'Competence/Goal/Potential Group Line';
    Description = 'GrCGPGroupLine';

    fields
    {
        field(1; CompGoalPotGroupNo; Code[20])
        {
            Caption = 'CompGoalPotGroupNo';
            NotBlank = true;
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo;
        }
        field(2; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5000; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
        }
        field(5010; StructureNo1; Code[20])
        {
            Caption = 'StructureNo1';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("1. Structure-Element"));
        }
        field(5020; StructureNo2; Code[20])
        {
            Caption = 'StructureNo2';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("2. Structure-Element"));
        }
        field(5030; StructureNo3; Code[20])
        {
            Caption = 'StructureNo3';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("3. Structure-Element"));
        }
        field(5040; StructureNo4; Code[20])
        {
            Caption = 'StructureNo4';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("4. Structure-Element"));
        }
        field(5050; StructureNo5; Code[20])
        {
            Caption = 'StructureNo5';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("5. Structure-Element"));
        }
        field(5060; StructureNo6; Code[20])
        {
            Caption = 'StructureNo6';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("6. Structure-Element"));
        }
        field(5070; StructureNo7; Code[20])
        {
            Caption = 'StructureNo7';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("7. Structure-Element"));
        }
        field(5080; StructureNo8; Code[20])
        {
            Caption = 'StructureNo8';
            TableRelation = "CompGoalPotStructElement/TM".StructureNo WHERE (StructureType = CONST ("8. Structure-Element"));
        }
        field(5100; Structure1Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo1),
                                                                                  StructureType = CONST ("1. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure1Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5105; Structure1Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo1),
                                                                                   StructureType = CONST ("1. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure1Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; Structure2Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo2),
                                                                                  StructureType = CONST ("2. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure2Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5115; Structure2Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo2),
                                                                                   StructureType = CONST ("2. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure2Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5120; Structure3Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo3),
                                                                                  StructureType = CONST ("3. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure3Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5125; Structure3Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo3),
                                                                                   StructureType = CONST ("3. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure3Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5130; Structure4Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo4),
                                                                                  StructureType = CONST ("4. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure4Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5135; Structure4Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo4),
                                                                                   StructureType = CONST ("4. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure4Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5140; Structure5Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo5),
                                                                                  StructureType = CONST ("5. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure5Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5145; Structure5Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo5),
                                                                                   StructureType = CONST ("5. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure5Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5150; Structure6Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo6),
                                                                                  StructureType = CONST ("6. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure6Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5155; Structure6Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo6),
                                                                                   StructureType = CONST ("6. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure6Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5160; Structure7Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo7),
                                                                                  StructureType = CONST ("7. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure7Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5165; Structure7Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo7),
                                                                                   StructureType = CONST ("7. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure7Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5170; Structure8Description; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description WHERE (StructureNo = FIELD (StructureNo8),
                                                                                  StructureType = CONST ("8. Structure-Element"),
                                                                                  CompGoalPotType = FIELD (Type)));
            Caption = 'Structure8Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5175; Structure8Description2; Text[30])
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Description2 WHERE (StructureNo = FIELD (StructureNo8),
                                                                                   StructureType = CONST ("8. Structure-Element"),
                                                                                   CompGoalPotType = FIELD (Type)));
            Caption = 'Structure8Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5800; Structure1AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure1AssessmentPercentage';
        }
        field(5801; Structure2AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure2AssessmentPercentage';
        }
        field(5802; Structure3AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure3AssessmentPercentage';
        }
        field(5803; Structure4AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure4AssessmentPercentage';
        }
        field(5804; Structure5AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure5AssessmentPercentage';
        }
        field(5805; Structure6AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure6AssessmentPercentage';
        }
        field(5806; Structure7AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure7AssessmentPercentage';
        }
        field(5807; Structure8AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure8AssessmentPercentage';
        }
        field(6200; Points; Integer)
        {
            CalcFormula = Lookup ("CompGoalPotStructElement/TM".Points WHERE (StructureNo = FIELD (StructureNo1)));
            Caption = 'Points';
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
        field(6540; AssessmentRequirementType; Option)
        {
            Caption = 'AssessmentRequirementType';
            OptionCaption = ' ,Must-have,Nice-to-have';
            OptionMembers = " ","Must-have","Nice-to-have";
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
        key(Key1; CompGoalPotGroupNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

