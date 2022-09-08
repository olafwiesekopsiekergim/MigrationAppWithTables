table 5056280 "EmployeeComplaint/TM"
{
    Caption = 'Employee Complaint';
    Description = 'GrEmplComplaint';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
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
        field(5130; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(8100; FiledByEmplNo; Code[20])
        {
            Caption = 'FiledByEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(8101; FiledByEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (FiledByEmplNo)));
            Caption = 'FiledByEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8110; WitnessedByEmplNo1; Code[20])
        {
            Caption = 'WitnessedByEmplNo1';
            TableRelation = "Employee/T"."No.";
        }
        field(8111; WitnessedByEmplName1; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (WitnessedByEmplNo1)));
            Caption = 'WitnessedByEmplName1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8120; WitnessedByEmplNo2; Code[20])
        {
            Caption = 'WitnessedByEmplNo2';
            TableRelation = "Employee/T"."No.";
        }
        field(8121; WitnessedByEmplName2; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (WitnessedByEmplNo2)));
            Caption = 'WitnessedByEmplName2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8130; ReportedToEmplNo; Code[20])
        {
            Caption = 'ReportedToEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(8131; ReportedToEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ReportedToEmplNo)));
            Caption = 'ReportedToEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8200; EntryDate; Date)
        {
            Caption = 'EntryDate';
        }
        field(8210; ProcessingDate; Date)
        {
            Caption = 'ProcessingDate';
        }
        field(8220; TerminationDate; Date)
        {
            Caption = 'TerminationDate';
        }
        field(8300; IssueNo; Code[20])
        {
            Caption = 'IssueNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(8301; IssueLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'IssueLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (IssueNo));
        }
        field(8303; IssueDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (IssueNo),
                                                                          "Line No." = FIELD (IssueLineNo)));
            Caption = 'IssueDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8310; MeasureNo; Code[20])
        {
            Caption = 'MeasureNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(8311; MeasureLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'MeasureLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (MeasureNo));
        }
        field(8313; MeasureDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (MeasureNo),
                                                                          "Line No." = FIELD (MeasureLineNo)));
            Caption = 'MeasureDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8320; ConsequenceNo; Code[20])
        {
            Caption = 'ConsequenceNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(8321; ConsequenceLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ConsequenceLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ConsequenceNo));
        }
        field(8323; ConsequenceDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ConsequenceNo),
                                                                          "Line No." = FIELD (ConsequenceLineNo)));
            Caption = 'ConsequenceDescr';
            Editable = false;
            FieldClass = FlowField;
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
        key(Key1; "Employee No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

