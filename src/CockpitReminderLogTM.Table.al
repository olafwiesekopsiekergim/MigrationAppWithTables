table 5056436 "CockpitReminderLog/TM"
{
    Caption = 'Cockpit Reminder Log';
    Description = 'GrCockRemLog';

    fields
    {
        field(1; "User No."; Code[50])
        {
            Caption = 'User No.';
            NotBlank = true;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; CockpitPageType; Option)
        {
            Caption = 'CockpitPageType';
            OptionCaption = ' ,Employee,Property,Employee/Property';
            OptionMembers = " ",Employee,Property,"Employee/Property";
        }
        field(11; ProcessingType; Option)
        {
            Caption = 'ProcessingType';
            OptionCaption = ' ,Delete,Comment,Cockpit ToDo';
            OptionMembers = " ",Delete,Comment,"Cockpit ToDo";
        }
        field(100; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(5000; ProcessingEmployeeNo; Code[20])
        {
            Caption = 'ProcessingEmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5300; Recipient1EmployeeNo; Code[20])
        {
            Caption = 'Recipient1EmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5700; Recipient2EmployeeNo; Code[20])
        {
            Caption = 'Recipient2EmployeeNo';
            TableRelation = "Employee/T"."No.";
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
            OptionCaption = ' ,From Date,To Date,Dimension Head From Date,Dimension Head To Date,Dimension Head Stand In From Date,Dimension Head Stand In To Date,Gen Info Disabled Cert Valid From,Gen Info Disabled Cert Valid To,Equip Pay Purchase Date,Equip Pay Warranty Expiry Date,Equip Pay Date Of Handing Out,Equip Pay Date Of Approve,Equip Pay Date Of Take Back,Status Hist Employment Date,Status Hist Leaving Date,Status Hist Seniority Date,Status Hist End Time Of Probation,Award Date,Job Proposed Date,Job Promoted Date,Job Accepted SV Date,Job Accepted JH Date,Interview Date Scheduled,Interview Date Happened,Interview Next Appointment,Working Prog Period Passed Date';
            OptionMembers = " ","From Date","To Date","Dimension Head From Date","Dimension Head To Date","Dimension Head Stand In From Date","Dimension Head Stand In To Date","Gen Info Disabled Cert Valid From","Gen Info Disabled Cert Valid To","Equip Pay Purchase Date","Equip Pay Warranty Expiry Date","Equip Pay Date Of Handing Out","Equip Pay Date Of Approve","Equip Pay Date Of Take Back","Status Hist Employment Date","Status Hist Leaving Date","Status Hist Seniority Date","Status Hist End Time Of Probation","Award Date","Job Proposed Date","Job Promoted Date","Job Accepted SV Date","Job Accepted JH Date","Interview Date Scheduled","Interview Date Happened","Interview Next Appointment","Working Prog Period Passed Date";
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
        field(8050; EmployeeDateType; Option)
        {
            Caption = 'EmployeeDateType';
            OptionCaption = ' ,Date of Birth,Employment Date,Leaving Date,Fixed-term Contract until,Medical Checkup,Begin Time of Probation,End Time of Probation,Begin Work Permit,End Work Permit,Begin Retirement Expected,Seniority Date,Begin Residence Permit,End Residence Permit,Residence Permit Exposed,Work Permit Exposed,Jubilee,Application Reminder,Application Feedback Expected To Date,Application ToDo''s';
            OptionMembers = " ","Date of Birth","Employment Date","Leaving Date","Fixed-term Contract until","Medical Checkup","Begin Time of Probation","End Time of Probation","Begin Work Permit","End Work Permit","Begin Retirement Expected","Seniority Date","Begin Residence Permit","End Residence Permit","Residence Permit Exposed","Work Permit Exposed",Jubilee,"Application Reminder","Application Feedback Expected To Date","Application ToDo's";
        }
        field(8060; EmployeeDatePriority; Option)
        {
            Caption = 'EmployeeDatePriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(8070; EmployeeDateCheck; Date)
        {
            Caption = 'EmployeeDateCheck';
        }
        field(8080; EmployeeDateYears; Integer)
        {
            BlankZero = true;
            Caption = 'EmployeeDateYears';
        }
        field(8200; EmployeeDateComment; Text[250])
        {
            Caption = 'EmployeeDateComment';
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
        key(Key1; "User No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

