table 5056325 "Period Entry/T"
{
    Caption = 'Period Entry';
    Description = 'GrPeriodEntry';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Process No."; Integer)
        {
            Caption = 'Process No.';
        }
        field(3; "From Period Date"; Date)
        {
            Caption = 'From Period Date';
            NotBlank = true;
        }
        field(4; "To Period Date"; Date)
        {
            Caption = 'To Period Date';
            NotBlank = true;
        }
        field(5; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(6; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(7; "Task No."; Code[20])
        {
            Caption = 'Task No.';
        }
        field(8; "Time Account No."; Code[10])
        {
            Caption = 'Time Account No.';
            NotBlank = true;
            TableRelation = "Time Account/T"."No.";
        }
        field(9; "Time Account Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Pay Type"; Code[10])
        {
            Caption = 'Pay Type';
        }
        field(11; "TA No. Value Car. Fwd."; Code[10])
        {
            Caption = 'TA No. Value Car. Fwd.';
            TableRelation = "Time Account/T"."No.";
        }
        field(12; "TA No. Added Value"; Code[10])
        {
            Caption = 'TA No. Added Value';
            TableRelation = "Time Account/T"."No.";
        }
        field(13; "Time Account Value"; Decimal)
        {
            Caption = 'Time Account Value';
        }
        field(14; "Time Account Formatting"; Option)
        {
            Caption = 'Time Account Formatting';
            OptionCaption = 'Hours,Minutes,Hours/Minutes,Days,Currency,Unit';
            OptionMembers = Hours,Minutes,"Hours/Minutes",Days,Currency,Unit;
        }
        field(15; "Dimension 1"; Code[20])
        {
            Caption = 'Dimension 1';
        }
        field(16; "Dimension 2"; Code[20])
        {
            Caption = 'Dimension 2';
        }
        field(17; "Dimension 3"; Code[20])
        {
            Caption = 'Dimension 3';
        }
        field(18; "Dimension 4"; Code[20])
        {
            Caption = 'Dimension 4';
        }
        field(19; "Payroll Value"; Decimal)
        {
            Caption = 'Payroll Value';
        }
        field(20; "Integration Type"; Option)
        {
            Caption = 'Integration Type';
            OptionCaption = 'Pay,FDC';
            OptionMembers = Pay,FDC;
        }
        field(21; Company; Text[30])
        {
            Caption = 'Company';
            TableRelation = Company.Name;
        }
        field(22; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Integrated Pay"; Boolean)
        {
            Caption = 'Integrated Pay';
        }
        field(24; "Integrated FDC"; Boolean)
        {
            Caption = 'Integrated FDC';
        }
        field(25; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
        }
        field(26; "Entry Time"; Time)
        {
            Caption = 'Entry Time';
        }
        field(27; "Created by User No."; Code[50])
        {
            Caption = 'Created by User No.';
        }
        field(28; Processed; Boolean)
        {
            Caption = 'Processed';
        }
        field(29; "Cancel Status FDC"; Option)
        {
            Caption = 'Cancel Status FDC';
            OptionCaption = ' ,Cancel Buffer FDC,Cancelled FDC';
            OptionMembers = " ","Cancel Buffer FDC","Cancelled FDC";
        }
        field(30; "Serial/Lot Reference Clocking"; Time)
        {
            Caption = 'Serial/Lot Reference Clocking';
        }
        field(31; "Cancel Status Pay"; Option)
        {
            Caption = 'Cancel Status Pay';
            OptionCaption = ' ,Cancel Buffer Pay,Cancelled Pay';
            OptionMembers = " ","Cancel Buffer Pay","Cancelled Pay";
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Process No.", "From Period Date", "To Period Date", "Department No.", "Order No.", "Task No.", "Dimension 1", "Dimension 2", "Dimension 3", "Dimension 4", "Pay Type", "TA No. Value Car. Fwd.", "TA No. Added Value", "Time Account No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

