table 5056434 "EmployeePropGroupLine/TM"
{
    Caption = 'Employee Property Group Line';
    Description = 'GrEmplPropGroupLine';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "EmployeePropGroup/TM"."Employee No.";
        }
        field(2; PropertyGroupNo; Code[20])
        {
            Caption = 'PropertyGroupNo';
            NotBlank = true;
            TableRelation = "EmployeePropGroup/TM".PropertyGroupNo;
        }
        field(3; PropertyGroupLineNo; Integer)
        {
            Caption = 'PropertyGroupLineNo';
            NotBlank = true;
            TableRelation = "EmployeePropGroup/TM".PropertyGroupLineNo;
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
        field(5000; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(5010; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Property/TM"."No.";
        }
        field(5020; PropertyLineNo; Integer)
        {
            Caption = 'PropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PropertyNo));
        }
        field(5030; PropertyDescription; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5040; PropertyDescription2; Text[30])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription2 WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription2';
            Editable = false;
            FieldClass = FlowField;
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
        field(6540; AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentPercentage';
        }
        field(6550; AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentResult';
        }
        field(6555; AssessmentMarking; Text[30])
        {
            Caption = 'AssessmentMarking';
        }
        field(6556; AssessmentComplete; Boolean)
        {
            Caption = 'AssessmentComplete';
        }
        field(6560; AssessmentRequirementType; Option)
        {
            Caption = 'AssessmentRequirementType';
            OptionCaption = ' ,Must-have,Nice-to-have';
            OptionMembers = " ","Must-have","Nice-to-have";
        }
        field(6570; AssessmentLevelSource; Option)
        {
            Caption = 'AssessmentLevelSource';
            OptionCaption = 'Standard,Job Description Evaluation Target,Qualification Evaluation Competence,Qualification Performing Skilled,Application Aptitude Degree,Application Current Tendency,Application Our Interest,Performance Assessment,Interview Impression,Interview Appearance,Marking,Perform Ass Competence (Lookup),Perform Ass Goal (Lookup),Perform Ass Potential (Lookup),Payment Group,Job Desc Eval Target Property (Alter),Job Descr Eval Target CGP (Alter),Perform Ass Property (Alter),Perform Ass CGP (Alter)';
            OptionMembers = Standard,"Job Description Evaluation Target","Qualification Evaluation Competence","Qualification Performing Skilled","Application Aptitude Degree","Application Current Tendency","Application Our Interest","Performance Assessment","Interview Impression","Interview Appearance",Marking,"Perform Ass Competence (Lookup)","Perform Ass Goal (Lookup)","Perform Ass Potential (Lookup)","Payment Group","Job Desc Eval Target Property (Alter)","Job Descr Eval Target CGP (Alter)","Perform Ass Property (Alter)","Perform Ass CGP (Alter)";
        }
        field(6580; AssessmentDefinition; Text[250])
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
        key(Key1; "Employee No.", PropertyGroupNo, PropertyGroupLineNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

