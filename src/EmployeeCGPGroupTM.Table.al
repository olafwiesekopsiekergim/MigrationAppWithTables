table 5056431 "EmployeeCGPGroup/TM"
{
    Caption = 'Employee Competence/Goal/Potential Group';
    Description = 'GrEmplCGPGroup';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "EmployeePerformAssessment/TM"."Employee No.";
        }
        field(2; CompGoalPotGroupNo; Code[20])
        {
            Caption = 'CompGoalPotGroupNo';
            NotBlank = true;
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo;
        }
        field(3; CompGoalPotGroupLineNo; Integer)
        {
            Caption = 'CompGoalPotGroupLineNo';
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
        field(5000; Type; Option)
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Type WHERE (CompGoalPotGroupNo = FIELD (CompGoalPotGroupNo)));
            Caption = 'Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
        }
        field(5010; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5020; Description2; Text[30])
        {
            Caption = 'Description2';
        }
        field(5100; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5101; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode),
                                                                      DimensionValue = FIELD (DimensionValue));
        }
        field(5103; DimensionValueDescription; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode),
                                                                                 DimensionValue = FIELD (DimensionValue)));
            Caption = 'DimensionValueDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; DimensionFromDate; Date)
        {
            Caption = 'DimensionFromDate';
        }
        field(5111; DimensionToDate; Date)
        {
            Caption = 'DimensionToDate';
        }
        field(5990; RefToQualiEmplAddLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'RefToQualiEmplAddLineNo';
        }
        field(6000; ReferenceToQualiNo; Code[20])
        {
            Caption = 'ReferenceToQualiNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Qualification));
        }
        field(6001; ReferenceToQualiLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ReferenceToQualiLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ReferenceToQualiNo));
        }
        field(6003; ReferenceToQualiDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ReferenceToQualiNo),
                                                                          "Line No." = FIELD (ReferenceToQualiLineNo)));
            Caption = 'ReferenceToQualiDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6010; RefToInterviewEmplAddLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'RefToInterviewEmplAddLineNo';
        }
        field(6015; ReferenceToInterviewNo; Code[20])
        {
            Caption = 'ReferenceToInterviewNo';
            TableRelation = "EmployeeControlAdditive/TM".PropertyNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                           "Line No." = FIELD (RefToInterviewEmplAddLineNo),
                                                                           PropertyType = CONST (Interview),
                                                                           InterviewType = CONST ("Interview for Performance Assessment"));
        }
        field(6016; ReferenceToInterviewLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ReferenceToInterviewLineNo';
            TableRelation = "EmployeeControlAdditive/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                               "Line No." = FIELD (RefToInterviewEmplAddLineNo),
                                                                               PropertyType = CONST (Interview),
                                                                               PropertyNo = FIELD (ReferenceToInterviewNo),
                                                                               InterviewType = CONST ("Interview for Performance Assessment"));
        }
        field(6018; ReferenceToInterviewDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ReferenceToInterviewNo),
                                                                          "Line No." = FIELD (ReferenceToInterviewLineNo)));
            Caption = 'ReferenceToInterviewDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6500; AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentResult';
        }
        field(6510; AssessmentMarking; Text[30])
        {
            Caption = 'AssessmentMarking';
        }
        field(6520; AssessmentComplete; Boolean)
        {
            Caption = 'AssessmentComplete';
        }
        field(6530; TotalPoints; Integer)
        {
            Caption = 'Total Points';
        }
        field(6531; IndividualFactor; Decimal)
        {
            Caption = 'Individual Factor';
            DecimalPlaces = 3 : 3;
        }
        field(6532; FactorPoints; Decimal)
        {
            Caption = 'Factor Points';
            DecimalPlaces = 3 : 3;
        }
        field(6533; "LZin%"; Decimal)
        {
            Caption = 'LZ in %';
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
        key(Key1; "Employee No.", CompGoalPotGroupNo, CompGoalPotGroupLineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

