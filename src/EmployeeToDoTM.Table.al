table 5056438 "EmployeeToDo/TM"
{
    Caption = 'Employee To-Do';
    Description = 'GrEmplToDo';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
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
        field(5000; ProcessingType; Option)
        {
            Caption = 'ProcessingType';
            OptionCaption = ' ,Property,Role Center';
            OptionMembers = " ",Property,"Role Center";
        }
        field(5100; PropertyFromDate; Date)
        {
            Caption = 'PropertyFromDate';
        }
        field(5110; PropertyToDate; Date)
        {
            Caption = 'PropertyToDate';
        }
        field(5500; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(5510; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = FIELD (PropertyType));
        }
        field(5520; PropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'PropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PropertyNo));
        }
        field(5530; PropertyDescription; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5540; PropertyDescription2; Text[30])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription2 WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5600; CockpitToDoNo; Code[20])
        {
            Caption = 'CockpitToDoNo';
            TableRelation = "CockpitToDo/TM"."No.";
        }
        field(5610; CockpitToDoDescr; Text[250])
        {
            CalcFormula = Lookup ("CockpitToDo/TM".Description WHERE ("No." = FIELD (CockpitToDoNo)));
            Caption = 'CockpitToDoDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5700; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(5800; ToBeFinishedEmplGroupNo; Code[20])
        {
            Caption = 'ToBeFinishedEmplGroupNo';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(5801; ToBeFinishedEmplGroupDescr; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (ToBeFinishedEmplGroupNo)));
            Caption = 'ToBeFinishedEmplGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5810; ToBeFinishedEmplNo; Code[20])
        {
            Caption = 'ToBeFinishedEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5811; ToBeFinishedEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ToBeFinishedEmplNo)));
            Caption = 'ToBeFinishedEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5850; ToBeFinishedDate; Date)
        {
            Caption = 'ToBeFinishedDate';
        }
        field(5860; ToBeFinishedTime; Time)
        {
            Caption = 'ToBeFinishedTime';
        }
        field(5900; FinishedEmplGroupNo; Code[20])
        {
            Caption = 'FinishedEmplGroupNo';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(5901; FinishedEmplGroupDescr; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (FinishedEmplGroupNo)));
            Caption = 'FinishedEmplGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5910; FinishedEmplNo; Code[20])
        {
            Caption = 'FinishedEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5911; FinishedEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (FinishedEmplNo)));
            Caption = 'FinishedEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5950; Finished; Boolean)
        {
            Caption = 'Finished';
        }
        field(5960; FinishedDate; Date)
        {
            Caption = 'FinishedDate';
        }
        field(5970; FinishedTime; Time)
        {
            Caption = 'FinishedTime';
        }
        field(7000; RCCockpitToDoLineNo; Integer)
        {
            Caption = 'RCCockpitToDoLineNo';
            NotBlank = true;
        }
        field(7010; RCCockpitToDoLineDescription; Text[250])
        {
            Caption = 'RCCockpitToDoLineDescription';
        }
        field(7020; RCCockpitToDoLineDescription2; Text[30])
        {
            Caption = 'RCCockpitToDoLineDescription2';
        }
        field(7050; RCEmployeeDateType; Option)
        {
            Caption = 'RCEmployeeDateType';
            OptionCaption = ' ,Date of Birth,Employment Date,Leaving Date,Fixed-term Contract until,Medical Checkup,Begin Time of Probation,End Time of Probation,Begin Work Permit,End Work Permit,Begin Retirement Expected,Seniority Date,Begin Residence Permit,End Residence Permit,Residence Permit Exposed,Work Permit Exposed,Jubilee,Application Reminder,Application Feedback Expected To Date,Application ToDo''s';
            OptionMembers = " ","Date of Birth","Employment Date","Leaving Date","Fixed-term Contract until","Medical Checkup","Begin Time of Probation","End Time of Probation","Begin Work Permit","End Work Permit","Begin Retirement Expected","Seniority Date","Begin Residence Permit","End Residence Permit","Residence Permit Exposed","Work Permit Exposed",Jubilee,"Application Reminder","Application Feedback Expected To Date","Application ToDo's";
        }
        field(7060; RCEmployeeDatePriority; Option)
        {
            Caption = 'RCEmployeeDatePriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(7070; RCEmployeeDateCheck; Date)
        {
            Caption = 'RCEmployeeDateCheck';
        }
        field(7080; RCEmployeeDateYears; Integer)
        {
            BlankZero = true;
            Caption = 'RCEmployeeDateYears';
        }
        field(7090; RCEmployeeDateComment; Text[250])
        {
            Caption = 'RCEmployeeDateComment';
        }
        field(7100; RCPropertyType; Option)
        {
            Caption = 'RCPropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Dimension,Employee Relation Matrix,Competence/Goal/Potential/Property';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info",Dimension,"Employee Relation Matrix","Competence/Goal/Potential/Property";
        }
        field(7110; RCPropertySubType; Option)
        {
            Caption = 'RCPropertySubType';
            OptionCaption = ' ,From Date,To Date,Dimension Head From Date,Dimension Head To Date,Dimension Head Stand In From Date,Dimension Head Stand In To Date,Gen Info Disabled Cert Valid From,Gen Info Disabled Cert Valid To,Equip Pay Purchase Date,Equip Pay Warranty Expiry Date,Equip Pay Date Of Handing Out,Equip Pay Date Of Approve,Equip Pay Date Of Take Back,Status Hist Employment Date,Status Hist Leaving Date,Status Hist Seniority Date,Status Hist End Time Of Probation,Award Date,Job Proposed Date,Job Promoted Date,Job Accepted SV Date,Job Accepted JH Date,Interview Date Scheduled,Interview Date Happened,Interview Next Appointment,Working Prog Period Passed Date';
            OptionMembers = " ","From Date","To Date","Dimension Head From Date","Dimension Head To Date","Dimension Head Stand In From Date","Dimension Head Stand In To Date","Gen Info Disabled Cert Valid From","Gen Info Disabled Cert Valid To","Equip Pay Purchase Date","Equip Pay Warranty Expiry Date","Equip Pay Date Of Handing Out","Equip Pay Date Of Approve","Equip Pay Date Of Take Back","Status Hist Employment Date","Status Hist Leaving Date","Status Hist Seniority Date","Status Hist End Time Of Probation","Award Date","Job Proposed Date","Job Promoted Date","Job Accepted SV Date","Job Accepted JH Date","Interview Date Scheduled","Interview Date Happened","Interview Next Appointment","Working Prog Period Passed Date";
        }
        field(7120; RCPropertyPriority; Option)
        {
            Caption = 'RCPropertyPriority';
            OptionCaption = ' ,very high,high,medium,low,very low';
            OptionMembers = " ","very high",high,medium,low,"very low";
        }
        field(7130; RCPropertyNo; Code[20])
        {
            Caption = 'RCPropertyNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = FIELD (RCPropertyType));
        }
        field(7131; RCPropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'RCPropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (RCPropertyNo));
        }
        field(7133; RCPropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (RCPropertyNo),
                                                                          "Line No." = FIELD (RCPropertyLineNo)));
            Caption = 'RCPropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7140; RCPropertyDateCheck; Date)
        {
            Caption = 'RCPropertyDateCheck';
        }
        field(7150; RCPropertyComment; Text[250])
        {
            Caption = 'RCPropertyComment';
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
    }

    fieldgroups
    {
    }
}

