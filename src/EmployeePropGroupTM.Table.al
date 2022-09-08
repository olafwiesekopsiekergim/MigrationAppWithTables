table 5056433 "EmployeePropGroup/TM"
{
    Caption = 'Employee Property Group';
    Description = 'GrEmplPropGroup';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "EmployeePerformAssessment/TM"."Employee No.";
        }
        field(2; PropertyGroupNo; Code[20])
        {
            Caption = 'PropertyGroupNo';
            NotBlank = true;
            TableRelation = "PropertyGroup/TM".PropertyGroupNo;
        }
        field(3; PropertyGroupLineNo; Integer)
        {
            Caption = 'PropertyGroupLineNo';
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
        key(Key1; "Employee No.", PropertyGroupNo, PropertyGroupLineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

