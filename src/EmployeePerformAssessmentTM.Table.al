table 5056272 "EmployeePerformAssessment/TM"
{
    Caption = 'Employee Performance Assessment';
    Description = 'GrEmplAss';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(10; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5000; DimensionCodeAccess1; Code[20])
        {
            Caption = 'DimensionCodeAccess1';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5001; DimensionValueAccess1; Code[20])
        {
            Caption = 'DimensionValueAccess1';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess1));
        }
        field(5010; DimensionCodeAccess2; Code[20])
        {
            Caption = 'DimensionCodeAccess2';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5011; DimensionValueAccess2; Code[20])
        {
            Caption = 'DimensionValueAccess2';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5020; DimensionCodeAccess3; Code[20])
        {
            Caption = 'DimensionCodeAccess3';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5021; DimensionValueAccess3; Code[20])
        {
            Caption = 'DimensionValueAccess3';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess3));
        }
        field(5030; DimensionCodeAccess4; Code[20])
        {
            Caption = 'DimensionCodeAccess4';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5031; DimensionValueAccess4; Code[20])
        {
            Caption = 'DimensionValueAccess4';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess4));
        }
        field(5100; "Employee User ID"; Code[50])
        {
            Caption = 'Employee User ID';
            Editable = false;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
        field(5700; PerformanceAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformanceAssessment';
        }
        field(5710; CompetenceAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'CompetenceAssessment';
        }
        field(5711; GoalAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'GoalAssessment';
        }
        field(5712; PotentialAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'PotentialAssessment';
        }
        field(5720; ProfCompAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'ProfCompAssessment';
        }
        field(5721; MethodCompAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'MethodCompAssessment';
        }
        field(5722; SocialCompAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'SocialCompAssessment';
        }
        field(5723; PersonalCompAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'PersonalCompAssessment';
        }
        field(5724; LeaderCompAssessment; Decimal)
        {
            BlankZero = true;
            Caption = 'LeaderCompAssessment';
        }
        field(6400; PerformAssessControlActive; Boolean)
        {
            Caption = 'PerformAssessControlActive';
        }
        field(6500; PerformAssessCompActive; Boolean)
        {
            Caption = 'PerformAssessCompActive';
        }
        field(6501; PerformAssessCompWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformAssessCompWeighting';
        }
        field(6510; PerformAssessGoalActive; Boolean)
        {
            Caption = 'PerformAssessGoalActive';
        }
        field(6511; PerformAssessGoalWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformAssessGoalWeighting';
        }
        field(6520; PerformAssessPotentActive; Boolean)
        {
            Caption = 'PerformAssessPotentActive';
        }
        field(6521; PerformAssessPotentWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformAssessPotentWeighting';
        }
        field(6600; CompAssessProfessionActive; Boolean)
        {
            Caption = 'CompAssessProfessionActive';
        }
        field(6601; CompAssessProfessionWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessProfessionWeighting';
        }
        field(6610; CompAssessMethodActive; Boolean)
        {
            Caption = 'CompAssessMethodActive';
        }
        field(6611; CompAssessMethodWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessMethodWeighting';
        }
        field(6620; CompAssessSocialActive; Boolean)
        {
            Caption = 'CompAssessSocialActive';
        }
        field(6621; CompAssessSocialWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessSocialWeighting';
        }
        field(6630; CompAssessPersonalActive; Boolean)
        {
            Caption = 'CompAssessPersonalActive';
        }
        field(6631; CompAssessPersonalWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessPersonalWeighting';
        }
        field(6640; CompAssessLeadershipActive; Boolean)
        {
            Caption = 'CompAssessLeadershipActive';
        }
        field(6641; CompAssessLeadershipWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessLeadershipWeighting';
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
        key(Key1; "Employee No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

