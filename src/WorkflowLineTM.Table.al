table 5056435 "WorkflowLine/TM"
{
    Caption = 'Workflow Line';
    Description = 'GrWorkflowLine';

    fields
    {
        field(1; WorkflowNo; Code[20])
        {
            Caption = 'WorkflowNo';
            NotBlank = true;
            TableRelation = "Workflow/TM".WorkflowNo;
        }
        field(2; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(6000; EmployeeGroupNo; Code[20])
        {
            Caption = 'EmployeeGroupNo';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(6001; EmployeeGroupDescr; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (EmployeeGroupNo)));
            Caption = 'EmployeeGroupDescr';
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
        key(Key1; WorkflowNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

