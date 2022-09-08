table 5056427 "JobDescrPropGroup/TM"
{
    Caption = 'Job Description Property Group';
    Description = 'GrJobPropGroup';

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
        key(Key1; JobDescriptionNo, JobDescriptionLineNo, PropertyGroupNo, PropertyGroupLineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

