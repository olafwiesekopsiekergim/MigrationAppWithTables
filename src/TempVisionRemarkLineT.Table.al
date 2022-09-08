table 5056252 "TempVision Remark Line/T"
{
    // //SK01 tempras 13.03.2018 NewLineHUK

    Caption = 'TempVision Remark Line';
    Description = 'GrRemarkLine';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Employee/T,Time Account/T,Time Object/T,Day Object/T,CASE/T,Log/T';
            OptionMembers = "Employee/T","Time Account/T","Time Object/T","Day Object/T","CASE/T","Log/T";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("Employee/T")) "Employee/T"
            ELSE
            IF ("Table Name" = CONST ("Time Account/T")) "Time Account/T"
            ELSE
            IF ("Table Name" = CONST ("Time Object/T")) "Time Object/T"
            ELSE
            IF ("Table Name" = CONST ("Day Object/T")) "Day Object/T"
            ELSE
            IF ("Table Name" = CONST ("CASE/T")) "CASE/T";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(6; Remark; Text[250])
        {
            Caption = 'Remark';
        }
        field(101; "Process No."; Integer)
        {
            Caption = 'Process No.';
        }
        field(102; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
        }
        field(103; "Entry Time"; Time)
        {
            Caption = 'Entry Time';
        }
        field(104; "Created by User No."; Code[50])
        {
            Caption = 'Created by User No.';
        }
        field(105; "From Period Date"; Date)
        {
            Caption = 'From Period Date';
        }
        field(106; "To Period Date"; Date)
        {
            Caption = 'To Period Date';
        }
        field(110; "Function Code"; Code[10])
        {
            Caption = 'Function Code';
        }
        field(111; "Function Description"; Text[50])
        {
            Caption = 'Function Description';
        }
        field(112; "Pay Group Filter"; Text[30])
        {
            Caption = 'Pay Group Filter';
        }
        field(113; Company; Text[50])
        {
            Caption = 'Company';
            TableRelation = Company.Name;
        }
        field(115; "Processed Process No."; Integer)
        {
            Caption = 'Processed Process No.';
        }
        field(120; FillPayJournal; Boolean)
        {
            Caption = 'FillPayJournal';
        }
        field(121; CreateValuesCarFwd; Boolean)
        {
            Caption = 'CreateValuesCarFwd';
        }
        field(122; FillFDCJournal; Boolean)
        {
            Caption = 'FillFDCJournal';
        }
        field(123; AddedValuesAutomatically; Boolean)
        {
            Caption = 'AddedValuesAutomatically';
        }
        field(129; "Employee Filter"; Text[30])
        {
            Caption = 'Employee Filter';
        }
        field(130; "Department Filter"; Text[30])
        {
            Caption = 'Department Filter';
        }
        field(131; "Division Filter"; Text[30])
        {
            Caption = 'Division Filter';
        }
        field(132; "Activity Filter"; Text[30])
        {
            Caption = 'Activity Filter';
        }
        field(133; "Company Filter"; Text[30])
        {
            Caption = 'Company Filter';
        }
        field(134; "Group 1 Filter"; Text[30])
        {
            Caption = 'Group 1 Filter';
        }
        field(135; "Group 2 Filter"; Text[30])
        {
            Caption = 'Group 2 Filter';
        }
        field(136; "Group 3 Filter"; Text[30])
        {
            Caption = 'Group 3 Filter';
        }
        field(137; "Time Object Filter"; Text[30])
        {
            Caption = 'Time Object Filter';
        }
        field(138; "Period Date + 1 Inactive"; Boolean)
        {
            Caption = 'Period Date + 1 Inactive';
        }
        field(140; "Process No. marked"; Boolean)
        {
            Caption = 'Process No. marked';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Process No.")
        {
        }
    }

    fieldgroups
    {
    }
}

