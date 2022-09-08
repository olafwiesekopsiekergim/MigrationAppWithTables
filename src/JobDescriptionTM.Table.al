table 5056401 "JobDescription/TM"
{
    Caption = 'Job Description';
    Description = 'GrJobDescr';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = "Property/TM"."No.";
        }
        field(2; "Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Line No.';
            NotBlank = true;
            TableRelation = "Property/TM"."Line No.";
        }
        field(5020; Description; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD ("No."),
                                                                          "Line No." = FIELD ("Line No.")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5021; Description2; Text[30])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription2 WHERE ("No." = FIELD ("No."),
                                                                           "Line No." = FIELD ("Line No.")));
            Caption = 'Description2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5077; NumOfResourcesAssignedActive; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesAssignedActive';
            Editable = false;
        }
        field(5078; NumOfResourcesBalance; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesBalance';
            Editable = false;
        }
        field(5079; NumOfResourcesAssignedTotal; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesAssignedTotal';
            Editable = false;
        }
        field(5080; NumOfResourcesRequired; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesRequired';
        }
        field(6050; JobGroup; Boolean)
        {
            Caption = 'JobGroup';
        }
        field(6060; RefJobGroupNo; Code[20])
        {
            Caption = 'RefJobGroupNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job),
                                                       JobDescrJobGroup = CONST (true));
        }
        field(6061; RefJobGroupLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'RefJobGroupLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (RefJobGroupNo));
        }
        field(6063; RefJobGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (RefJobGroupNo),
                                                                          "Line No." = FIELD (RefJobGroupLineNo)));
            Caption = 'RefJobGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6100; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6101; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode),
                                                                      DimensionValue = FIELD (DimensionValue));
        }
        field(6103; DimensionValueDescription; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode),
                                                                                 DimensionValue = FIELD (DimensionValue)));
            Caption = 'DimensionValueDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6104; DimensionFromDate; Date)
        {
            Caption = 'DimensionFromDate';
        }
        field(6105; DimensionToDate; Date)
        {
            Caption = 'DimensionToDate';
        }
        field(6150; PositionNo; Code[20])
        {
            Caption = 'PositionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Position));
        }
        field(6151; PositionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'PositionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PositionNo));
        }
        field(6153; PositionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PositionNo),
                                                                          "Line No." = FIELD (PositionLineNo)));
            Caption = 'PositionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6160; FunctionNo; Code[20])
        {
            Caption = 'FunctionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Function));
        }
        field(6161; FunctionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'FunctionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (FunctionNo));
        }
        field(6163; FunctionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (FunctionNo),
                                                                          "Line No." = FIELD (FunctionLineNo)));
            Caption = 'FunctionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7000; ExceedingMustHave; Integer)
        {
            Caption = 'ExceedingMustHave';
        }
        field(7010; ExceedingNiceToHave; Integer)
        {
            Caption = 'ExceedingNiceToHave';
        }
        field(7020; FulfillingMustHave; Integer)
        {
            Caption = 'FulfillingMustHave';
        }
        field(7030; FulfillingNiceToHave; Integer)
        {
            Caption = 'FulfillingNiceToHave';
        }
        field(7040; GoingBelowMustHave; Integer)
        {
            Caption = 'GoingBelowMustHave';
        }
        field(7050; GoingBelowNiceToHave; Integer)
        {
            Caption = 'GoingBelowNiceToHave';
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
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

