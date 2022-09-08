table 5056412 "CockpitMessage/TM"
{
    Caption = 'Cockpit Message';
    Description = 'GrCockMessage';

    fields
    {
        field(1; SenderEmployeeNo; Code[20])
        {
            Caption = 'SenderEmployeeNo';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; RecipientEmployeeNo; Code[20])
        {
            Caption = 'RecipientEmployeeNo';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(3; LineNo; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5000; SenderProcessingType; Option)
        {
            Caption = 'SenderProcessingType';
            OptionCaption = ' ,In-Box,Outgoing,Deleted';
            OptionMembers = " ","In-Box",Outgoing,Deleted;
        }
        field(5100; SenderEmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (SenderEmployeeNo)));
            Caption = 'SenderEmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; SenderCreatedDate; Date)
        {
            Caption = 'SenderCreatedDate';
        }
        field(5120; SenderCreatedTime; Time)
        {
            Caption = 'SenderCreatedTime';
        }
        field(5130; SenderMessage; Text[250])
        {
            Caption = 'SenderMessage';
        }
        field(5140; SenderPriority; Option)
        {
            Caption = 'SenderPriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(5145; SenderToFinishToDate; Date)
        {
            Caption = 'SenderToFinishToDate';
        }
        field(5146; SenderToFinishToTime; Time)
        {
            Caption = 'SenderToFinishToTime';
        }
        field(5500; RecipientProcessingType; Option)
        {
            Caption = 'RecipientProcessingType';
            OptionCaption = ' ,In-Box,Outgoing,Deleted';
            OptionMembers = " ","In-Box",Outgoing,Deleted;
        }
        field(5600; RecipientEmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (RecipientEmployeeNo)));
            Caption = 'RecipientEmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5610; RecipientRead; Boolean)
        {
            Caption = 'RecipientRead';
        }
        field(5620; RecipientReadDate; Date)
        {
            Caption = 'RecipientReadDate';
        }
        field(5630; RecipientReadTime; Time)
        {
            Caption = 'RecipientReadTime';
        }
        field(5650; RecipientInProcessing; Boolean)
        {
            Caption = 'RecipientInProcessing';
        }
        field(5660; RecipientInProcessingDate; Date)
        {
            Caption = 'RecipientInProcessingDate';
        }
        field(5670; RecipientInProcessingTime; Time)
        {
            Caption = 'RecipientInProcessingTime';
        }
        field(5700; RecipientComment; Text[250])
        {
            Caption = 'RecipientComment';
        }
        field(5710; RecipientCommentDate; Date)
        {
            Caption = 'RecipientCommentDate';
        }
        field(5720; RecipientCommentTime; Time)
        {
            Caption = 'RecipientCommentTime';
        }
        field(5750; RecipientFinished; Boolean)
        {
            Caption = 'RecipientFinished';
        }
        field(5760; RecipientFinishedDate; Date)
        {
            Caption = 'RecipientFinishedDate';
        }
        field(5770; RecipientFinishedTime; Time)
        {
            Caption = 'RecipientFinishedTime';
        }
        field(5800; RecipientDeleted; Boolean)
        {
            Caption = 'RecipientDeleted';
        }
        field(5810; RecipientDeletedDate; Date)
        {
            Caption = 'RecipientDeletedDate';
        }
        field(5820; RecipientDeletedTime; Time)
        {
            Caption = 'RecipientDeletedTime';
        }
        field(5850; RecipientDeletedShown; Boolean)
        {
            Caption = 'RecipientDeletedShown';
        }
        field(7000; RecipientAutoCreateMessage; Boolean)
        {
            Caption = 'RecipientAutoCreateMessage';
            Editable = false;
        }
        field(7010; ProcessingEmployeeNo; Code[20])
        {
            Caption = 'ProcessingEmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(7011; ProcessingEmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ProcessingEmployeeNo)));
            Caption = 'ProcessingEmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7050; EmployeeDateType; Option)
        {
            Caption = 'EmployeeDateType';
            OptionCaption = ' ,Date of Birth,Employment Date,Leaving Date,Fixed-term Contract until,Medical Checkup,Begin Time of Probation,End Time of Probation,Begin Work Permit,End Work Permit,Begin Retirement Expected,Seniority Date,Begin Residence Permit,End Residence Permit,Residence Permit Exposed,Work Permit Exposed,Jubilee,Application Reminder,Application Feedback Expected To Date,Application ToDo''s';
            OptionMembers = " ","Date of Birth","Employment Date","Leaving Date","Fixed-term Contract until","Medical Checkup","Begin Time of Probation","End Time of Probation","Begin Work Permit","End Work Permit","Begin Retirement Expected","Seniority Date","Begin Residence Permit","End Residence Permit","Residence Permit Exposed","Work Permit Exposed",Jubilee,"Application Reminder","Application Feedback Expected To Date","Application ToDo's";
        }
        field(7070; EmployeePropertyDateCheck; Date)
        {
            Caption = 'EmployeePropertyDateCheck';
        }
        field(7080; EmployeeDateYears; Integer)
        {
            BlankZero = true;
            Caption = 'EmployeeDateYears';
        }
        field(7200; EmployeePropertyDateComment; Text[250])
        {
            Caption = 'EmployeePropertyDateComment';
        }
        field(7300; CockpitToDoNo; Code[20])
        {
            Caption = 'CockpitToDoNo';
            TableRelation = "CockpitToDo/TM"."No.";
        }
        field(7302; CockpitToDoDescr; Text[250])
        {
            CalcFormula = Lookup ("CockpitToDo/TM".Description WHERE ("No." = FIELD (CockpitToDoNo)));
            Caption = 'CockpitToDoDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7500; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Dimension,Employee Relation Matrix,Competence/Goal/Potential/Property';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info",Dimension,"Employee Relation Matrix","Competence/Goal/Potential/Property";
        }
        field(7510; PropertySubType; Option)
        {
            Caption = 'PropertySubType';
            OptionCaption = ' ,From Date,To Date,Dimension Head From Date,Dimension Head To Date,Dimension Head Stand In From Date,Dimension Head Stand In To Date,Gen Info Disabled Cert Valid From,Gen Info Disabled Cert Valid To,Equip Pay Purchase Date,Equip Pay Warranty Expiry Date,Equip Pay Date Of Handing Out,Equip Pay Date Of Approve,Equip Pay Date Of Take Back,Status Hist Employment Date,Status Hist Leaving Date,Status Hist Seniority Date,Status Hist End Time Of Probation,Award Date,Job Proposed Date,Job Promoted Date,Job Accepted SV Date,Job Accepted JH Date,Interview Date Scheduled,Interview Date Happened,Interview Next Appointment,Working Prog Period Passed Date';
            OptionMembers = " ","From Date","To Date","Dimension Head From Date","Dimension Head To Date","Dimension Head Stand In From Date","Dimension Head Stand In To Date","Gen Info Disabled Cert Valid From","Gen Info Disabled Cert Valid To","Equip Pay Purchase Date","Equip Pay Warranty Expiry Date","Equip Pay Date Of Handing Out","Equip Pay Date Of Approve","Equip Pay Date Of Take Back","Status Hist Employment Date","Status Hist Leaving Date","Status Hist Seniority Date","Status Hist End Time Of Probation","Award Date","Job Proposed Date","Job Promoted Date","Job Accepted SV Date","Job Accepted JH Date","Interview Date Scheduled","Interview Date Happened","Interview Next Appointment","Working Prog Period Passed Date";
        }
        field(7520; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = FIELD (PropertyType));
        }
        field(7521; PropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'PropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PropertyNo));
        }
        field(8500; ShowToday; Text[20])
        {
            Caption = 'ShowToday';
            Editable = false;
        }
        field(8510; ShowPastInterval3; Text[20])
        {
            Caption = 'ShowPastInterval3';
            Editable = false;
        }
        field(8520; ShowPastInterval2; Text[20])
        {
            Caption = 'ShowPastInterval2';
            Editable = false;
        }
        field(8530; ShowPastInterval1; Text[20])
        {
            Caption = 'ShowPastInterval1';
            Editable = false;
        }
        field(8540; ShowFutureInterval1; Text[20])
        {
            Caption = 'ShowFutureInterval1';
            Editable = false;
        }
        field(8550; ShowFutureInterval2; Text[20])
        {
            Caption = 'ShowFutureInterval2';
            Editable = false;
        }
        field(8560; ShowFutureInterval3; Text[20])
        {
            Caption = 'ShowFutureInterval3';
            Editable = false;
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
        key(Key1; RecipientRead, RecipientInProcessing, RecipientFinished, RecipientDeleted, SenderEmployeeNo, RecipientEmployeeNo, LineNo)
        {
            Clustered = true;
        }
        key(Key2; SenderProcessingType, SenderEmployeeNo, RecipientEmployeeNo, LineNo)
        {
        }
        key(Key3; RecipientProcessingType, SenderEmployeeNo, RecipientEmployeeNo, LineNo)
        {
        }
    }

    fieldgroups
    {
    }
}

