table 5056426 "PropertyGroupLine/TM"
{
    Caption = 'Competence/Goal/Potential/Property Group Line';
    Description = 'GrPropGroupLine';

    fields
    {
        field(1; PropertyGroupNo; Code[20])
        {
            Caption = 'PropertyGroupNo';
            NotBlank = true;
            TableRelation = "PropertyGroup/TM".PropertyGroupNo;
        }
        field(2; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5500; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(5510; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = FIELD (PropertyType));
        }
        field(5520; PropertyLineNo; Integer)
        {
            Caption = 'PropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PropertyNo));
        }
        field(5530; PropertyDescription; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5540; PropertyDescription2; Text[30])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription2 WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5800; AssessmentPercentage; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentPercentage';
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
        key(Key1; PropertyGroupNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

