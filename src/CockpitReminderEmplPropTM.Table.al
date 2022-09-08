table 5056416 "CockpitReminderEmplProp/TM"
{
    Caption = 'Cockpit Reminder Employee Property';
    Description = 'GrCockRemEmplProp';

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
        field(6500; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Dimension,Employee Relation Matrix,Competence/Goal/Potential/Property';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info",Dimension,"Employee Relation Matrix","Competence/Goal/Potential/Property";
        }
        field(6510; PropertySubType; Option)
        {
            Caption = 'PropertySubType';
            OptionCaption = ' ,From Date,To Date,Dimension Head From Date,Dimension Head To Date,Dimension Head Stand In From Date,Dimension Head Stand In To Date,Gen Info Disabled Cert Valid From,Gen Info Disabled Cert Valid To,Equip Pay Purchase Date,Equip Pay Warranty Expiry Date,Equip Pay Date Of Handing Out,Equip Pay Date Of Approve,Equip Pay Date Of Take Back,Status Hist Employment Date,Status Hist Leaving Date,Status Hist Seniority Date,Status Hist End Time Of Probation,Award Date,Job Proposed Date,Job Promoted Date,Job Accepted SV Date,Job Accepted JH Date,Interview Date Scheduled,Interview Date Happened,Interview Next Appointment,Working Prog Period Passed Date,Quali Next Assessment';
            OptionMembers = " ","From Date","To Date","Dimension Head From Date","Dimension Head To Date","Dimension Head Stand In From Date","Dimension Head Stand In To Date","Gen Info Disabled Cert Valid From","Gen Info Disabled Cert Valid To","Equip Pay Purchase Date","Equip Pay Warranty Expiry Date","Equip Pay Date Of Handing Out","Equip Pay Date Of Approve","Equip Pay Date Of Take Back","Status Hist Employment Date","Status Hist Leaving Date","Status Hist Seniority Date","Status Hist End Time Of Probation","Award Date","Job Proposed Date","Job Promoted Date","Job Accepted SV Date","Job Accepted JH Date","Interview Date Scheduled","Interview Date Happened","Interview Next Appointment","Working Prog Period Passed Date","Quali Next Assesment";
        }
        field(6520; PropertyPriority; Option)
        {
            Caption = 'PropertyPriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(6530; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = FIELD (PropertyType));
        }
        field(6531; PropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'PropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PropertyNo));
        }
        field(6533; PropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6540; PropertyDateCheck; Date)
        {
            Caption = 'PropertyDateCheck';
        }
        field(6550; PropertyComment; Text[250])
        {
            Caption = 'PropertyComment';
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
        key(Key2; PropertyType, ProcessingEmployeeNo, PropertyPriority, PropertyDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key3; PropertyType, ProcessingEmployeeNo, PropertyDateCheck, PropertyPriority, "Employee No.", "Line No.")
        {
        }
        key(Key4; PropertyType, PropertyPriority, ProcessingEmployeeNo, PropertyDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key5; PropertyType, PropertyPriority, PropertyDateCheck, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key6; PropertyType, PropertyDateCheck, ProcessingEmployeeNo, PropertyPriority, "Employee No.", "Line No.")
        {
        }
        key(Key7; PropertyType, PropertyDateCheck, PropertyPriority, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key8; ProcessingEmployeeNo, PropertyType, PropertyPriority, PropertyDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key9; ProcessingEmployeeNo, PropertyType, PropertyDateCheck, PropertyPriority, "Employee No.", "Line No.")
        {
        }
        key(Key10; ProcessingEmployeeNo, PropertyPriority, PropertyType, PropertyDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key11; ProcessingEmployeeNo, PropertyPriority, PropertyDateCheck, PropertyType, "Employee No.", "Line No.")
        {
        }
        key(Key12; ProcessingEmployeeNo, PropertyDateCheck, PropertyType, PropertyPriority, "Employee No.", "Line No.")
        {
        }
        key(Key13; ProcessingEmployeeNo, PropertyDateCheck, PropertyPriority, PropertyType, "Employee No.", "Line No.")
        {
        }
        key(Key14; PropertyPriority, PropertyType, ProcessingEmployeeNo, PropertyDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key15; PropertyPriority, PropertyType, PropertyDateCheck, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key16; PropertyPriority, ProcessingEmployeeNo, PropertyType, PropertyDateCheck, "Employee No.", "Line No.")
        {
        }
        key(Key17; PropertyPriority, ProcessingEmployeeNo, PropertyDateCheck, PropertyType, "Employee No.", "Line No.")
        {
        }
        key(Key18; PropertyPriority, PropertyDateCheck, PropertyType, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key19; PropertyPriority, PropertyDateCheck, ProcessingEmployeeNo, PropertyType, "Employee No.", "Line No.")
        {
        }
        key(Key20; PropertyDateCheck, PropertyType, ProcessingEmployeeNo, PropertyPriority, "Employee No.", "Line No.")
        {
        }
        key(Key21; PropertyDateCheck, PropertyType, PropertyPriority, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key22; PropertyDateCheck, ProcessingEmployeeNo, PropertyType, PropertyPriority, "Employee No.", "Line No.")
        {
        }
        key(Key23; PropertyDateCheck, ProcessingEmployeeNo, PropertyPriority, PropertyType, "Employee No.", "Line No.")
        {
        }
        key(Key24; PropertyDateCheck, PropertyPriority, PropertyType, ProcessingEmployeeNo, "Employee No.", "Line No.")
        {
        }
        key(Key25; PropertyDateCheck, PropertyPriority, ProcessingEmployeeNo, PropertyType, "Employee No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

