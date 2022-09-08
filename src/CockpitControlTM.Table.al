table 5056409 "CockpitControl/TM"
{
    Caption = 'Cockpit Control';
    Description = 'GrCockControl';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(5010; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5011; Description2; Text[30])
        {
            Caption = 'Description2';
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
        field(5070; BirthdayProcessing; Option)
        {
            Caption = 'BirthdayProcessing';
            OptionCaption = ' ,all Employees all Birthdays,only VIP''s all Birthdays,all Employees only rounded Birthdays,only VIP''s only rounded Birthdays';
            OptionMembers = " ","all Employees all Birthdays","only VIP's all Birthdays","all Employees only rounded Birthdays","only VIP's only rounded Birthdays";
        }
        field(5075; JubileeType; Option)
        {
            Caption = 'JubileeType';
            OptionCaption = ' ,Based on Employment Date,Based on Seniority Date';
            OptionMembers = " ","Based on Employment Date","Based on Seniority Date";
        }
        field(5080; JubileeNumberYears1; Integer)
        {
            Caption = 'JubileeNumberYears1';
        }
        field(5081; JubileeNumberYears2; Integer)
        {
            Caption = 'JubileeNumberYears2';
        }
        field(5082; JubileeNumberYears3; Integer)
        {
            Caption = 'JubileeNumberYears3';
        }
        field(5083; JubileeNumberYears4; Integer)
        {
            Caption = 'JubileeNumberYears4';
        }
        field(5084; JubileeNumberYears5; Integer)
        {
            Caption = 'JubileeNumberYears5';
        }
        field(5085; JubileeNumberYears6; Integer)
        {
            Caption = 'JubileeNumberYears6';
        }
        field(6500; PropertyAll; Boolean)
        {
            Caption = 'PropertyAll';
        }
        field(6510; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Dimension,Employee Relation Matrix,Competence/Goal/Potential/Property';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info",Dimension,"Employee Relation Matrix","Competence/Goal/Potential/Property";
        }
        field(6520; PropertySubType; Option)
        {
            Caption = 'PropertySubType';
            OptionCaption = ' ,From Date,To Date,Dimension Head From Date,Dimension Head To Date,Dimension Head Stand In From Date,Dimension Head Stand In To Date,Gen Info Disabled Cert Valid From,Gen Info Disabled Cert Valid To,Equip Pay Purchase Date,Equip Pay Warranty Expiry Date,Equip Pay Date Of Handing Out,Equip Pay Date Of Approve,Equip Pay Date Of Take Back,Status Hist Employment Date,Status Hist Leaving Date,Status Hist Seniority Date,Status Hist End Time Of Probation,Award Date,Job Proposed Date,Job Promoted Date,Job Accepted SV Date,Job Accepted JH Date,Interview Date Scheduled,Interview Date Happened,Interview Next Appointment,Working Prog Period Passed Date,Quali Next Assessment';
            OptionMembers = " ","From Date","To Date","Dimension Head From Date","Dimension Head To Date","Dimension Head Stand In From Date","Dimension Head Stand In To Date","Gen Info Disabled Cert Valid From","Gen Info Disabled Cert Valid To","Equip Pay Purchase Date","Equip Pay Warranty Expiry Date","Equip Pay Date Of Handing Out","Equip Pay Date Of Approve","Equip Pay Date Of Take Back","Status Hist Employment Date","Status Hist Leaving Date","Status Hist Seniority Date","Status Hist End Time Of Probation","Award Date","Job Proposed Date","Job Promoted Date","Job Accepted SV Date","Job Accepted JH Date","Interview Date Scheduled","Interview Date Happened","Interview Next Appointment","Working Prog Period Passed Date","Quali Next Assessment";
        }
        field(6530; PropertyPriority; Option)
        {
            Caption = 'PropertyPriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(6540; PropertyProcessing; Option)
        {
            Caption = 'PropertyProcessing';
            OptionCaption = ' ,General Properties,Employee-related Properties';
            OptionMembers = " ","General Properties","Employee-related Properties";
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
        field(7300; Recipient1EmployeeNo; Code[20])
        {
            Caption = 'Recipient1EmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(7301; Recipient1EmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (Recipient1EmployeeNo)));
            Caption = 'Recipient1EmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7350; Recipient2EmployeeNo; Code[20])
        {
            Caption = 'Recipient2EmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(7351; Recipient2EmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (Recipient2EmployeeNo)));
            Caption = 'Recipient2EmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7370; RecipientAutoCreateMessage; Boolean)
        {
            Caption = 'RecipientAutoCreateMessage';
        }
        field(7500; IndividualDateYearlyChecked; Date)
        {
            Caption = 'IndividualDateYearlyChecked';
        }
        field(8000; ProcessingToday; Boolean)
        {
            Caption = 'ProcessingToday';
        }
        field(8010; ProcessingPastInterval3From; Integer)
        {
            Caption = 'ProcessingPastInterval3From';
        }
        field(8020; ProcessingPastInterval3To; Integer)
        {
            Caption = 'ProcessingPastInterval3To';
        }
        field(8030; ProcessingPastInterval2From; Integer)
        {
            Caption = 'ProcessingPastInterval2From';
        }
        field(8040; ProcessingPastInterval2To; Integer)
        {
            Caption = 'ProcessingPastInterval2To';
        }
        field(8050; ProcessingPastInterval1From; Integer)
        {
            Caption = 'ProcessingPastInterval1From';
        }
        field(8060; ProcessingPastInterval1To; Integer)
        {
            Caption = 'ProcessingPastInterval1To';
        }
        field(8070; ProcessingFutureInterval1From; Integer)
        {
            Caption = 'ProcessingFutureInterval1From';
        }
        field(8080; ProcessingFutureInterval1To; Integer)
        {
            Caption = 'ProcessingFutureInterval1To';
        }
        field(8090; ProcessingFutureInterval2From; Integer)
        {
            Caption = 'ProcessingFutureInterval2From';
        }
        field(8100; ProcessingFutureInterval2To; Integer)
        {
            Caption = 'ProcessingFutureInterval2To';
        }
        field(8110; ProcessingFutureInterval3From; Integer)
        {
            Caption = 'ProcessingFutureInterval3From';
        }
        field(8120; ProcessingFutureInterval3To; Integer)
        {
            Caption = 'ProcessingFutureInterval3To';
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
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

