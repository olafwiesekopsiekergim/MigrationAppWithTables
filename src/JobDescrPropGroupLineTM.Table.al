table 5056428 "JobDescrPropGroupLine/TM"
{
    Caption = 'Job Description Property Group Line';
    Description = 'GrJobPropGroupLine';

    fields
    {
        field(1; JobDescriptionNo; Code[20])
        {
            Caption = 'JobDescriptionNo';
            NotBlank = true;
            TableRelation = "JobDescription/TM"."No.";
        }
        field(2; JobDescriptionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobDescriptionLineNo';
            NotBlank = true;
            TableRelation = "JobDescription/TM"."Line No.";
        }
        field(3; PropertyGroupNo; Code[20])
        {
            Caption = 'PropertyGroupNo';
            NotBlank = true;
            TableRelation = "PropertyGroup/TM".PropertyGroupNo;
        }
        field(4; PropertyGroupLineNo; Integer)
        {
            Caption = 'PropertyGroupLineNo';
            NotBlank = true;
        }
        field(5; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
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
        field(6200; Points; Integer)
        {
            CalcFormula = Lookup ("Property/TM".Points WHERE ("No." = FIELD (PropertyNo),
                                                             "Line No." = FIELD (PropertyLineNo)));
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
        field(6550; AssessmentLevelSource; Option)
        {
            Caption = 'AssessmentLevelSource';
            OptionCaption = 'Standard,Job Description Evaluation Target,Qualification Evaluation Competence,Qualification Performing Skilled,Application Aptitude Degree,Application Current Tendency,Application Our Interest,Performance Assessment,Interview Impression,Interview Appearance,Marking,Perform Ass Competence (Lookup),Perform Ass Goal (Lookup),Perform Ass Potential (Lookup),Payment Group,Job Desc Eval Target Property (Alter),Job Descr Eval Target CGP (Alter),Perform Ass Property (Alter),Perform Ass CGP (Alter)';
            OptionMembers = Standard,"Job Description Evaluation Target","Qualification Evaluation Competence","Qualification Performing Skilled","Application Aptitude Degree","Application Current Tendency","Application Our Interest","Performance Assessment","Interview Impression","Interview Appearance",Marking,"Perform Ass Competence (Lookup)","Perform Ass Goal (Lookup)","Perform Ass Potential (Lookup)","Payment Group","Job Desc Eval Target Property (Alter)","Job Descr Eval Target CGP (Alter)","Perform Ass Property (Alter)","Perform Ass CGP (Alter)";
        }
        field(6590; AssessmentComment; Text[250])
        {
            Caption = 'AssessmentComment';
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
        field(7000; MatchEmplNo; Code[20])
        {
            Caption = 'MatchEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(7001; MatchEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (MatchEmplNo)));
            Caption = 'MatchEmplNo';
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
        key(Key1; JobDescriptionNo, JobDescriptionLineNo, PropertyGroupNo, PropertyGroupLineNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

