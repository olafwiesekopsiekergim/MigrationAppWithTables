table 5056308 "Time Grid Line/T"
{
    Caption = 'Time Grid Line';
    Description = 'GrTGridLine';

    fields
    {
        field(1; "Time Grid No."; Code[10])
        {
            Caption = 'Time Grid No.';
            NotBlank = true;
            TableRelation = "Time Grid/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; "Begin Clocking"; Time)
        {
            Caption = 'Begin Clocking';
        }
        field(11; "Begin Reference"; Code[1])
        {
            Caption = 'Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(12; "End Clocking"; Time)
        {
            Caption = 'End Clocking';
        }
        field(13; "End Reference"; Code[1])
        {
            Caption = 'End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(14; "Time Account No."; Code[10])
        {
            Caption = 'Time Account No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(15; "Time Account Descr."; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Time Account Descr. 2"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr. 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(20; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            Editable = false;
            TableRelation = "Employee/T"."No.";
        }
        field(21; "Current Date"; Date)
        {
            Caption = 'Current Date';
            Editable = false;
        }
        field(30; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
    }

    keys
    {
        key(Key1; "Time Grid No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

