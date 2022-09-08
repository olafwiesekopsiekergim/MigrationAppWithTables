table 5056277 "EmployeeGroupLine/TM"
{
    Caption = 'Employee Group Line';
    Description = 'GrEmplGroupLine';

    fields
    {
        field(1; EmployeeGroupNo; Code[20])
        {
            Caption = 'EmployeeGroupNo';
            NotBlank = true;
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(2; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(6000; EmployeeNo; Code[20])
        {
            Caption = 'EmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(6001; EmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (EmployeeNo)));
            Caption = 'EmployeeName';
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
        key(Key1; EmployeeGroupNo, LineNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

