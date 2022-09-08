table 5056432 "EmployeeCGPGroupLine/TM"
{
    Caption = 'Employee Competence/Goal/Potential Group Line';
    Description = 'GrEmplCGPGroupLine';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "EmployeeCGPGroup/TM"."Employee No.";
        }
        field(2; CompGoalPotGroupNo; Code[20])
        {
            Caption = 'CompGoalPotGroupNo';
            NotBlank = true;
            TableRelation = "EmployeeCGPGroup/TM".CompGoalPotGroupNo;
        }
        field(3; CompGoalPotGroupLineNo; Integer)
        {
            Caption = 'CompGoalPotGroupLineNo';
            NotBlank = true;
            TableRelation = "EmployeeCGPGroup/TM".CompGoalPotGroupLineNo;
        }
        field(4; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; AssessorType; Option)
        {
            Caption = 'AssessorType';
            OptionCaption = ' ,Self,Supervisor,Peer,Subordinate,Customer';
            OptionMembers = " ",Self,Supervisor,Peer,Subordinate,Customer;
        }
        field(30; AssessorEmplNo; Code[20])
        {
            Caption = 'AssessorEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(31; AssessorEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (AssessorEmplNo)));
            Caption = 'AssessorEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; AssessorDate; Date)
        {
            Caption = 'AssessorDate';
        }
        field(5000; Type; Option)
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Type WHERE (CompGoalPotGroupNo = FIELD (CompGoalPotGroupNo)));
            Caption = 'Type';
            Editable = false;
            FieldClass = FlowField;
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
        field(5820; Structure1AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure1AssessmentResult';
        }
        field(5821; Structure2AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure2AssessmentResult';
        }
        field(5822; Structure3AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure3AssessmentResult';
        }
        field(5823; Structure4AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure4AssessmentResult';
        }
        field(5824; Structure5AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure5AssessmentResult';
        }
        field(5825; Structure6AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure6AssessmentResult';
        }
        field(5826; Structure7AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure7AssessmentResult';
        }
        field(5827; Structure8AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'Structure8AssessmentResult';
        }
        field(5900; AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentResult';
        }
        field(5910; AssessmentMarking; Text[30])
        {
            Caption = 'AssessmentMarking';
        }
        field(5920; AssessmentComplete; Boolean)
        {
            Caption = 'AssessmentComplete';
        }
        field(6500; AssessmentLevelNoDef; Code[20])
        {
            Caption = 'AssessmentLevelNoDef';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6510; AssessmentLevelLineNoDef; Integer)
        {
            BlankZero = true;
            Caption = 'AssessmentLevelLineNoDef';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AssessmentLevelNoDef));
        }
        field(6520; AssessmentLevelDescrDef; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AssessmentLevelNoDef),
                                                                          "Line No." = FIELD (AssessmentLevelLineNoDef)));
            Caption = 'AssessmentLevelDescrDef';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6530; AssessmentFactor; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentFactor';
        }
        field(6540; AssessmentRequirementType; Option)
        {
            Caption = 'AssessmentRequirementType';
            OptionCaption = ' ,Must-have,Nice-to-have';
            OptionMembers = " ","Must-have","Nice-to-have";
        }
        field(6550; AssessmentLevelSource; Option)
        {
            Caption = 'AssessmentLevelSource';
            OptionCaption = 'Standard,Job Description Evaluation Target,Qualification Evaluation Competence,Qualification Performing Skilled,Application Aptitude Degree,Application Current Tendency,Application Our Interest,Performance Assessment,Interview Impression,Interview Appearance,Marking,Perform Ass Competence (Lookup),Perform Ass Goal (Lookup),Perform Ass Potential (Lookup),Payment Group,Job Desc Eval Target Property (Alter),Job Descr Eval Target CGP (Alter),Perform Ass Property (Alter),Perform Ass CGP (Alter)';
            OptionMembers = Standard,"Job Description Evaluation Target","Qualification Evaluation Competence","Qualification Performing Skilled","Application Aptitude Degree","Application Current Tendency","Application Our Interest","Performance Assessment","Interview Impression","Interview Appearance",Marking,"Perform Ass Competence (Lookup)","Perform Ass Goal (Lookup)","Perform Ass Potential (Lookup)","Payment Group","Job Desc Eval Target Property (Alter)","Job Descr Eval Target CGP (Alter)","Perform Ass Property (Alter)","Perform Ass CGP (Alter)";
        }
        field(6570; AssessmentDefinition; Text[250])
        {
            Caption = 'AssessmentDefinition';
        }
        field(6590; AssessmentComment; Text[250])
        {
            Caption = 'AssessmentComment';
        }
        field(6600; AssessmentScale1Def; Boolean)
        {
            Caption = 'AssessmentScale1Def';
        }
        field(6610; AssessmentScale2Def; Boolean)
        {
            Caption = 'AssessmentScale2Def';
        }
        field(6620; AssessmentScale3Def; Boolean)
        {
            Caption = 'AssessmentScale3Def';
        }
        field(6630; AssessmentScale4Def; Boolean)
        {
            Caption = 'AssessmentScale4Def';
        }
        field(6640; AssessmentScale5Def; Boolean)
        {
            Caption = 'AssessmentScale5Def';
        }
        field(6650; AssessmentScale6Def; Boolean)
        {
            Caption = 'AssessmentScale6Def';
        }
        field(6660; AssessmentScale7Def; Boolean)
        {
            Caption = 'AssessmentScale7Def';
        }
        field(6670; AssessmentScale8Def; Boolean)
        {
            Caption = 'AssessmentScale8Def';
        }
        field(6680; AssessmentScale9Def; Boolean)
        {
            Caption = 'AssessmentScale9Def';
        }
        field(6690; AssessmentScale10Def; Boolean)
        {
            Caption = 'AssessmentScale10Def';
        }
        field(7000; MatchJobDescriptionNo; Code[20])
        {
            Caption = 'MatchJobDescriptionNo';
            TableRelation = "JobDescription/TM"."No.";
        }
        field(7001; MatchJobDescriptionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'MatchJobDescriptionLineNo';
            TableRelation = "JobDescription/TM"."Line No." WHERE ("No." = FIELD (MatchJobDescriptionNo));
        }
        field(7003; MatchJobDescriptionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (MatchJobDescriptionNo),
                                                                          "Line No." = FIELD (MatchJobDescriptionLineNo)));
            Caption = 'MatchJobDescriptionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7100; AssessmentLevelNoMatch; Code[20])
        {
            Caption = 'AssessmentLevelNoMatch';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(7110; AssessmentLevelLineNoMatch; Integer)
        {
            BlankZero = true;
            Caption = 'AssessmentLevelLineNoMatch';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AssessmentLevelNoMatch));
        }
        field(7120; AssessmentLevelDescrMatch; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AssessmentLevelNoMatch),
                                                                          "Line No." = FIELD (AssessmentLevelLineNoMatch)));
            Caption = 'AssessmentLevelDescrMatch';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7200; AssessmentScale1Match; Boolean)
        {
            Caption = 'AssessmentScale1Match';
        }
        field(7210; AssessmentScale2Match; Boolean)
        {
            Caption = 'AssessmentScale2Match';
        }
        field(7220; AssessmentScale3Match; Boolean)
        {
            Caption = 'AssessmentScale3Match';
        }
        field(7230; AssessmentScale4Match; Boolean)
        {
            Caption = 'AssessmentScale4Match';
        }
        field(7240; AssessmentScale5Match; Boolean)
        {
            Caption = 'AssessmentScale5Match';
        }
        field(7250; AssessmentScale6Match; Boolean)
        {
            Caption = 'AssessmentScale6Match';
        }
        field(7260; AssessmentScale7Match; Boolean)
        {
            Caption = 'AssessmentScale7Match';
        }
        field(7270; AssessmentScale8Match; Boolean)
        {
            Caption = 'AssessmentScale8Match';
        }
        field(7280; AssessmentScale9Match; Boolean)
        {
            Caption = 'AssessmentScale9Match';
        }
        field(7290; AssessmentScale10Match; Boolean)
        {
            Caption = 'AssessmentScale10Match';
        }
        field(7400; AssessmentDeviatingMinusMatch; Text[20])
        {
            Caption = 'AssessmentDeviatingMinusMatch';
            Editable = false;
        }
        field(7410; AssessmentNeutralMatch; Text[20])
        {
            Caption = 'AssessmentNeutralMatch';
            Editable = false;
        }
        field(7420; AssessmentDeviatingPlusMatch; Text[20])
        {
            Caption = 'AssessmentDeviatingPlusMatch';
            Editable = false;
        }
        field(8500; AssessmentLevelNoAss; Code[20])
        {
            Caption = 'AssessmentLevelNoAss';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(8510; AssessmentLevelLineNoAss; Integer)
        {
            BlankZero = true;
            Caption = 'AssessmentLevelLineNoAss';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AssessmentLevelNoAss));
        }
        field(8520; AssessmentLevelDescrAss; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AssessmentLevelNoAss),
                                                                          "Line No." = FIELD (AssessmentLevelLineNoAss)));
            Caption = 'AssessmentLevelDescrAss';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8600; AssessmentScale1Ass; Boolean)
        {
            Caption = 'AssessmentScale1Ass';
        }
        field(8610; AssessmentScale2Ass; Boolean)
        {
            Caption = 'AssessmentScale2Ass';
        }
        field(8620; AssessmentScale3Ass; Boolean)
        {
            Caption = 'AssessmentScale3Ass';
        }
        field(8630; AssessmentScale4Ass; Boolean)
        {
            Caption = 'AssessmentScale4Ass';
        }
        field(8640; AssessmentScale5Ass; Boolean)
        {
            Caption = 'AssessmentScale5Ass';
        }
        field(8650; AssessmentScale6Ass; Boolean)
        {
            Caption = 'AssessmentScale6Ass';
        }
        field(8660; AssessmentScale7Ass; Boolean)
        {
            Caption = 'AssessmentScale7Ass';
        }
        field(8670; AssessmentScale8Ass; Boolean)
        {
            Caption = 'AssessmentScale8Ass';
        }
        field(8680; AssessmentScale9Ass; Boolean)
        {
            Caption = 'AssessmentScale9Ass';
        }
        field(8690; AssessmentScale10Ass; Boolean)
        {
            Caption = 'AssessmentScale10Ass';
        }
        field(8800; AssessmentDeviatingMinus; Text[20])
        {
            Caption = 'AssessmentDeviatingMinus';
            Editable = false;
        }
        field(8810; AssessmentNeutral; Text[20])
        {
            Caption = 'AssessmentNeutral';
            Editable = false;
        }
        field(8820; AssessmentDeviatingPlus; Text[20])
        {
            Caption = 'AssessmentDeviatingPlus';
            Editable = false;
        }
        field(9100; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(9101; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode),
                                                                      DimensionValue = FIELD (DimensionValue));
        }
        field(9103; DimensionValueDescription; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode),
                                                                                 DimensionValue = FIELD (DimensionValue)));
            Caption = 'DimensionValueDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9110; DimensionFromDate; Date)
        {
            Caption = 'DimensionFromDate';
        }
        field(9111; DimensionToDate; Date)
        {
            Caption = 'DimensionToDate';
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
        key(Key1; "Employee No.", CompGoalPotGroupNo, CompGoalPotGroupLineNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

