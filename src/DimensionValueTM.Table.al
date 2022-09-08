table 5056315 "DimensionValue/TM"
{
    Caption = 'Dimension Value';
    Description = 'GrDimValue';

    fields
    {
        field(1; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            NotBlank = true;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(2; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
        }
        field(5010; DimensionDescription; Text[250])
        {
            Caption = 'DimensionDescription';
        }
        field(5011; DimensionDescription2; Text[30])
        {
            Caption = 'DimensionDescription2';
        }
        field(5015; DimensionBlocked; Boolean)
        {
            Caption = 'DimensionBlocked';
        }
        field(5020; DimensionStructureType; Option)
        {
            Caption = 'DimensionStructureType';
            OptionCaption = ' ,superior to,inferior to,Top Level';
            OptionMembers = " ","superior to","inferior to","Top Level";
        }
        field(5030; DimensionCodeStructure; Code[20])
        {
            Caption = 'DimensionCodeStructure';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5031; DimensionValueStructure; Code[20])
        {
            Caption = 'DimensionValueStructure';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeStructure),
                                                                      DimensionValue = FIELD (DimensionValueStructure));
        }
        field(5033; DimensionValueStructureDescr; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCodeStructure),
                                                                                 DimensionValue = FIELD (DimensionValueStructure)));
            Caption = 'DimensionValueStructureDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5040; DimensionMainGroup; Boolean)
        {
            Caption = 'DimensionMainGroup';
        }
        field(5045; DimensionCodeGrouping; Code[20])
        {
            Caption = 'DimensionCodeGrouping';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5046; DimensionValueGrouping; Code[20])
        {
            Caption = 'DimensionValueGrouping';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeGrouping),
                                                                      DimensionValue = FIELD (DimensionValueGrouping));
        }
        field(5048; DimensionValueGroupingDescr; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCodeGrouping),
                                                                                 DimensionValue = FIELD (DimensionValueGrouping)));
            Caption = 'DimensionValueGroupingDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5050; DimensionOrgStructureInvisible; Boolean)
        {
            Caption = 'DimensionOrgStructureInvisible';
        }
        field(5060; DimensionFromDate; Date)
        {
            Caption = 'DimensionFromDate';
        }
        field(5061; DimensionToDate; Date)
        {
            Caption = 'DimensionToDate';
        }
        field(5100; DimensionProcessingType; Option)
        {
            Caption = 'DimensionProcessingType';
            OptionCaption = ' ,Property required,Job Scheduling Assessment-Control,Job Scheduling Assessment-Log,Weighting/Assessment/Consequence';
            OptionMembers = " ","Property required","Job Scheduling Assessment-Control","Job Scheduling Assessment-Log","Weighting/Assessment/Consequence";
        }
        field(5110; DimensionCurrHeadEmplNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM"."Employee No." WHERE (DimensionCode = FIELD (DimensionCode),
                                                                            DimensionValue = FIELD (DimensionValue),
                                                                            DimensionCurrentHead = CONST (true)));
            Caption = 'DimensionCurrHeadEmplNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5111; DimensionCurrHeadEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (DimensionCurrHeadEmplNo)));
            Caption = 'DimensionCurrHeadEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5120; DimensionCurrHeadStaInEmplNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM"."Employee No." WHERE (DimensionCode = FIELD (DimensionCode),
                                                                            DimensionValue = FIELD (DimensionValue),
                                                                            DimensionCurrentHeadStandIn = CONST (true)));
            Caption = 'DimensionCurrHeadStaInEmplNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5121; DimensionCurrHeadStaInEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (DimensionCurrHeadStaInEmplNo)));
            Caption = 'DimensionCurrHeadStaInEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5300; NumberOfDimUnitsPlanned; Decimal)
        {
            BlankZero = true;
            Caption = 'NumberOfDimUnitsPlanned';
        }
        field(5310; NumberOfDimUnitsFilled; Decimal)
        {
            BlankZero = true;
            Caption = 'NumberOfDimUnitsFilled';
        }
        field(5320; NumberOfDimUnitsUnfilled; Decimal)
        {
            BlankZero = true;
            Caption = 'NumberOfDimUnitsUnfilled';
        }
        field(5330; NumberOfDimUnitsOverstaffed; Decimal)
        {
            BlankZero = true;
            Caption = 'NumberOfJobsOverstaffed';
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
        key(Key1; DimensionCode, DimensionValue)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

