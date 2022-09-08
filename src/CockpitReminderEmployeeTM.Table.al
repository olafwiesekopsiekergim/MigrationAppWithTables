table 5056413 "CockpitReminderEmployee/TM"
{
    Caption = 'Cockpit Reminder Employee';
    Description = 'GrCockRemEmpl';

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
        field(5000; ProcessingEmployeeNo; Code[20])
        {
            Caption = 'ProcessingEmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5001; ProcessingEmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ProcessingEmployeeNo)));
            Caption = 'ProcessingEmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5050; EmployeeDateType; Option)
        {
            Caption = 'EmployeeDateType';
            OptionCaption = ' ,Date of Birth,Employment Date,Leaving Date,Fixed-term Contract until,Medical Checkup,Begin Time of Probation,End Time of Probation,Begin Work Permit,End Work Permit,Begin Retirement Expected,Seniority Date,Begin Residence Permit,End Residence Permit,Residence Permit Exposed,Work Permit Exposed,Jubilee,Application Reminder,Application Feedback Expected To Date,Application ToDo''s';
            OptionMembers = " ","Date of Birth","Employment Date","Leaving Date","Fixed-term Contract until","Medical Checkup","Begin Time of Probation","End Time of Probation","Begin Work Permit","End Work Permit","Begin Retirement Expected","Seniority Date","Begin Residence Permit","End Residence Permit","Residence Permit Exposed","Work Permit Exposed",Jubilee,"Application Reminder","Application Feedback Expected To Date","Application ToDo's";
        }
        field(5060; EmployeeDatePriority; Option)
        {
            Caption = 'EmployeeDatePriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(5070; EmployeeDateCheck; Date)
        {
            Caption = 'EmployeeDateCheck';
        }
        field(5080; EmployeeDateYears; Integer)
        {
            BlankZero = true;
            Caption = 'EmployeeDateYears';
        }
        field(5200; EmployeeDateComment; Text[250])
        {
            Caption = 'EmployeeDateComment';
        }
        field(5300; Recipient1EmployeeNo; Code[20])
        {
            Caption = 'Recipient1EmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5301; Recipient1EmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (Recipient1EmployeeNo)));
            Caption = 'Recipient1EmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5700; Recipient2EmployeeNo; Code[20])
        {
            Caption = 'Recipient2EmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5701; Recipient2EmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (Recipient2EmployeeNo)));
            Caption = 'Recipient2EmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5750; RecipientAutoCreateMessage; Boolean)
        {
            Caption = 'RecipientAutoCreateMessage';
        }
        field(5800; SenderToFinishToDate; Date)
        {
            Caption = 'SenderToFinishToDate';
        }
        field(5801; SenderToFinishToTime; Time)
        {
            Caption = 'SenderToFinishToTime';
        }
        field(7000; CockpitToDoNo; Code[20])
        {
            Caption = 'CockpitToDoNo';
            TableRelation = "CockpitToDo/TM"."No.";
        }
        field(7002; CockpitToDoDescr; Text[250])
        {
            CalcFormula = Lookup ("CockpitToDo/TM".Description WHERE ("No." = FIELD (CockpitToDoNo)));
            Caption = 'CockpitToDoDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7500; ShowToday; Text[20])
        {
            Caption = 'ShowToday';
            Editable = false;
        }
        field(7510; ShowPastInterval3; Text[20])
        {
            Caption = 'ShowPastInterval3';
            Editable = false;
        }
        field(7520; ShowPastInterval2; Text[20])
        {
            Caption = 'ShowPastInterval2';
            Editable = false;
        }
        field(7530; ShowPastInterval1; Text[20])
        {
            Caption = 'ShowPastInterval1';
            Editable = false;
        }
        field(7540; ShowFutureInterval1; Text[20])
        {
            Caption = 'ShowFutureInterval1';
            Editable = false;
        }
        field(7550; ShowFutureInterval2; Text[20])
        {
            Caption = 'ShowFutureInterval2';
            Editable = false;
        }
        field(7560; ShowFutureInterval3; Text[20])
        {
            Caption = 'ShowFutureInterval3';
            Editable = false;
        }
        field(8000; GeneralDeleted; Boolean)
        {
            Caption = 'GeneralDeleted';
        }
        field(8010; UserOnlyDeleted; Boolean)
        {
            Caption = 'UserOnlyDeleted';
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
        key(Key2; EmployeeDateType, ProcessingEmployeeNo, EmployeeDatePriority, EmployeeDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key3; EmployeeDateType, ProcessingEmployeeNo, EmployeeDateCheck, EmployeeDatePriority, "Employee No.", "Line No.")
        {
        }
        key(Key4; EmployeeDateType, EmployeeDatePriority, ProcessingEmployeeNo, EmployeeDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key5; EmployeeDateType, EmployeeDatePriority, EmployeeDateCheck, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key6; EmployeeDateType, EmployeeDateCheck, ProcessingEmployeeNo, EmployeeDatePriority, "Employee No.", "Line No.")
        {
        }
        key(Key7; EmployeeDateType, EmployeeDateCheck, EmployeeDatePriority, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key8; ProcessingEmployeeNo, EmployeeDateType, EmployeeDatePriority, EmployeeDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key9; ProcessingEmployeeNo, EmployeeDateType, EmployeeDateCheck, EmployeeDatePriority, "Employee No.", "Line No.")
        {
        }
        key(Key10; ProcessingEmployeeNo, EmployeeDatePriority, EmployeeDateType, EmployeeDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key11; ProcessingEmployeeNo, EmployeeDatePriority, EmployeeDateCheck, EmployeeDateType, "Employee No.", "Line No.")
        {
        }
        key(Key12; ProcessingEmployeeNo, EmployeeDateCheck, EmployeeDateType, EmployeeDatePriority, "Employee No.", "Line No.")
        {
        }
        key(Key13; ProcessingEmployeeNo, EmployeeDateCheck, EmployeeDatePriority, EmployeeDateType, "Employee No.", "Line No.")
        {
        }
        key(Key14; EmployeeDatePriority, EmployeeDateType, ProcessingEmployeeNo, EmployeeDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key15; EmployeeDatePriority, EmployeeDateType, EmployeeDateCheck, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key16; EmployeeDatePriority, ProcessingEmployeeNo, EmployeeDateType, EmployeeDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key17; EmployeeDatePriority, ProcessingEmployeeNo, EmployeeDateCheck, EmployeeDateType, "Employee No.", "Line No.")
        {
        }
        key(Key18; EmployeeDatePriority, EmployeeDateCheck, EmployeeDateType, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key19; EmployeeDatePriority, EmployeeDateCheck, ProcessingEmployeeNo, EmployeeDateType, "Employee No.", "Line No.")
        {
        }
        key(Key20; EmployeeDateCheck, EmployeeDateType, ProcessingEmployeeNo, EmployeeDatePriority, "Employee No.", "Line No.")
        {
        }
        key(Key21; EmployeeDateCheck, EmployeeDateType, EmployeeDatePriority, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key22; EmployeeDateCheck, ProcessingEmployeeNo, EmployeeDateType, EmployeeDatePriority, "Employee No.", "Line No.")
        {
        }
        key(Key23; EmployeeDateCheck, ProcessingEmployeeNo, EmployeeDatePriority, EmployeeDateType, "Employee No.", "Line No.")
        {
        }
        key(Key24; EmployeeDateCheck, EmployeeDatePriority, EmployeeDateType, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key25; EmployeeDateCheck, EmployeeDatePriority, ProcessingEmployeeNo, EmployeeDateType, "Employee No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

