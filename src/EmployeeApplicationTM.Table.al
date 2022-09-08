table 5056404 "EmployeeApplication/TM"
{
    Caption = 'Employee Application';
    Description = 'GrEmplApplication';

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
        field(3; Applicant; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Applicant';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5000; ApplicationProcessNo; Code[20])
        {
            Caption = 'ApplicationProcessNo';
        }
        field(5010; ApplicationProcessDescription; Text[250])
        {
            Caption = 'ApplicationProcessDescription';
        }
        field(5020; ApplicationProcessDescription2; Text[30])
        {
            Caption = 'ApplicationProcessDescription2';
        }
        field(5050; JobIDExternal; Text[30])
        {
            Caption = 'JobIDExternal';
        }
        field(5060; ProcessingStatus; Option)
        {
            CalcFormula = Lookup ("Employee/T".ProcessingStatus WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'ProcessingStatus';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Employee,Customer,Sub Contractor,Leased Labourer,Applicant,Applicant archived,Favourites,Systeminfo,Contact Person,Service Provider,Trainee,Apprentice,Student,Individual';
            OptionMembers = " ",Employee,Customer,"Sub Contractor","Leased Labourer",Applicant,"Applicant archived",Favourites,Systeminfo,"Contact Person","Service Provider",Trainee,Apprentice,Student,Individual;
        }
        field(5070; EmployeeStatus; Option)
        {
            CalcFormula = Lookup ("EmployeeControl/TM".StatusHistEmployeeStatus WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                      ProcessingType = CONST ("Employee Property"),
                                                                                      PropertyType = CONST ("Status History"),
                                                                                      DimensionRefEmployeeTable = CONST (true)));
            Caption = 'EmployeeStatus';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,active,inactive,terminated by employer,terminated by employee,parental leave,maternity leave,terminated';
            OptionMembers = " ",active,inactive,"terminated by employer","terminated by employee","parental leave","maternity leave",terminated;
        }
        field(5080; AttachmentExisting; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentExisting';
            Editable = false;
        }
        field(5100; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5101; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode),
                                                                      DimensionValue = FIELD (DimensionValue));
        }
        field(5103; DimensionValueDescription; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode),
                                                                                 DimensionValue = FIELD (DimensionValue)));
            Caption = 'DimensionValueDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; DimensionFromDate; Date)
        {
            Caption = 'DimensionFromDate';
        }
        field(5111; DimensionToDate; Date)
        {
            Caption = 'DimensionToDate';
        }
        field(5130; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(6000; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,On Job Advertisement,Speculative Application';
            OptionMembers = " ","On Job Advertisement","Speculative Application";
        }
        field(6010; EntryType; Option)
        {
            Caption = 'EntryType';
            OptionCaption = 'Manual,Batch-Processing,Online-Portal';
            OptionMembers = Manual,"Batch-Processing","Online-Portal";
        }
        field(6020; EntryDate; Date)
        {
            Caption = 'EntryDate';
        }
        field(6030; SufficiencyDocuments; Option)
        {
            Caption = 'SufficiencyDocuments';
            OptionCaption = ' ,complete,partly complete,not complete';
            OptionMembers = " ",complete,"partly complete","not complete";
        }
        field(6040; MissingDocuments; Text[50])
        {
            Caption = 'MissingDocuments';
        }
        field(6120; WorkflowNo; Code[20])
        {
            Caption = 'WorkflowNo';
            TableRelation = "Workflow/TM".WorkflowNo;
        }
        field(6121; WorkflowDescr; Text[250])
        {
            CalcFormula = Lookup ("Workflow/TM".Description WHERE (WorkflowNo = FIELD (WorkflowNo)));
            Caption = 'WorkflowDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6150; JobAdvertNo; Code[20])
        {
            Caption = 'JobAdvertNo';
            TableRelation = "JobAdvertisement/TM"."No.";
        }
        field(6151; JobAdvertLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobAdvertLineNo';
            TableRelation = "JobAdvertisement/TM"."Line No." WHERE ("No." = FIELD (JobAdvertNo));
        }
        field(6153; JobAdvertDescr; Text[250])
        {
            CalcFormula = Lookup ("JobAdvertisement/TM".Description WHERE ("No." = FIELD (JobAdvertNo),
                                                                          "Line No." = FIELD (JobAdvertLineNo)));
            Caption = 'JobAdvertDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6160; SpeculativeJobDescrNo; Code[20])
        {
            Caption = 'SpeculativeJobDescrNo';
            TableRelation = "JobDescription/TM"."No.";
        }
        field(6161; SpeculativeJobDescrLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'SpeculativeJobDescrLineNo';
            TableRelation = "JobDescription/TM"."Line No." WHERE ("No." = FIELD (SpeculativeJobDescrNo));
        }
        field(6163; SpeculativeJobDescrDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (SpeculativeJobDescrNo),
                                                                          "Line No." = FIELD (SpeculativeJobDescrLineNo)));
            Caption = 'SpeculativeJobDescrDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6200; CurrentEmplStatus; Option)
        {
            Caption = 'CurrentEmplStatus';
            OptionCaption = ' ,seeking work,noticed to leave,currently in employment';
            OptionMembers = " ","seeking work","noticed to leave","currently in employment";
        }
        field(6210; CurrentEmplCompanyName; Text[50])
        {
            Caption = 'CurrentEmplCompanyName';
        }
        field(6220; CurrentEmplEnterprDescr; Text[50])
        {
            Caption = 'CurrentEmplEnterprDescr';
        }
        field(6230; SeekingWorkSince; Date)
        {
            Caption = 'SeekingWorkSince';
        }
        field(6240; NoticedToLeaveToDate; Date)
        {
            Caption = 'NoticedToLeaveToDate';
        }
        field(6245; Specialist; Boolean)
        {
            Caption = 'Specialist';
        }
        field(6250; AptitudeDegreeAssLevelNo; Code[20])
        {
            Caption = 'AptitudeDegreeAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6251; AptitudeDegreeAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AptitudeDegreeAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AptitudeDegreeAssLevelNo));
        }
        field(6253; AptitudeDegreeAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AptitudeDegreeAssLevelNo),
                                                                          "Line No." = FIELD (AptitudeDegreeAssLevelLineNo)));
            Caption = 'AptitudeDegreeAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6280; FulfillRequiredQualification; Option)
        {
            Caption = 'FulfillRequiredQualification';
            OptionCaption = ' ,10%,20%,30%,40%,50%,60%,70%,80%,90%,100%';
            OptionMembers = " ","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%";
        }
        field(6290; FulfillAdvantageQualification; Option)
        {
            Caption = 'FulfillAdvantageQualification';
            OptionCaption = ' ,10%,20%,30%,40%,50%,60%,70%,80%,90%,100%';
            OptionMembers = " ","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%";
        }
        field(6300; OurInterestEngAssLevelNo; Code[20])
        {
            Caption = 'OurInterestEngAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6301; OurInterestEngAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'OurInterestEngAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (OurInterestEngAssLevelNo));
        }
        field(6303; OurInterestEngAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (OurInterestEngAssLevelNo),
                                                                          "Line No." = FIELD (OurInterestEngAssLevelLineNo)));
            Caption = 'OurInterestEngAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6500; DesiredSalaryYearly; Decimal)
        {
            Caption = 'DesiredSalaryYearly';
        }
        field(6510; DesiredSalaryMonthly; Decimal)
        {
            Caption = 'DesiredSalaryMonthly';
        }
        field(6600; SpecialRequestsByApplicant; Text[50])
        {
            Caption = 'SpecialRequestsByApplicant';
        }
        field(6610; RestrictionsByApplicant; Text[50])
        {
            Caption = 'RestrictionsByApplicant';
        }
        field(6700; LockFlag; Boolean)
        {
            Caption = 'LockFlag';
        }
        field(6710; EarliestEmploymentDate; Date)
        {
            Caption = 'EarliestEmploymentDate';
        }
        field(6720; Mobility; Option)
        {
            Caption = 'Mobility';
            OptionCaption = ' ,national,international,national/international';
            OptionMembers = " ",national,international,"national/international";
        }
        field(6750; CommApplPriority1No; Code[20])
        {
            Caption = 'CommApplPriority1No';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(6751; CommApplPriority1LineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CommApplPriority1LineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CommApplPriority1No));
        }
        field(6753; CommApplPriority1Descr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CommApplPriority1No),
                                                                          "Line No." = FIELD (CommApplPriority1LineNo)));
            Caption = 'CommApplPriority1Descr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6760; CommApplPriority2No; Code[20])
        {
            Caption = 'CommApplPriority2No';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(6761; CommApplPriority2LineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CommApplPriority2LineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CommApplPriority2No));
        }
        field(6763; CommApplPriority2Descr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CommApplPriority2No),
                                                                          "Line No." = FIELD (CommApplPriority2LineNo)));
            Caption = 'CommApplPriority2Descr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6770; CommApplPriority3No; Code[20])
        {
            Caption = 'CommApplPriority3No';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(6771; CommApplPriority3LineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CommApplPriority3LineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CommApplPriority3No));
        }
        field(6773; CommApplPriority3Descr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CommApplPriority3No),
                                                                          "Line No." = FIELD (CommApplPriority3LineNo)));
            Caption = 'CommApplPriority3Descr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6800; CorrespondProcessEmplNo; Code[20])
        {
            Caption = 'CorrespondProcessEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(6801; CorrespondProcessEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (CorrespondProcessEmplNo)));
            Caption = 'CorrespondProcessEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6810; CorrespondSignLeftEmplNo; Code[20])
        {
            Caption = 'CorrespondSignLeftEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(6811; CorrespondSignLeftEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (CorrespondSignLeftEmplNo)));
            Caption = 'CorrespondSignLeftEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6820; CorrespondSignRightEmplNo; Code[20])
        {
            Caption = 'CorrespondSignRightEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(6821; CorrespondSignRightEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (CorrespondSignRightEmplNo)));
            Caption = 'CorrespondSignRightEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9000; CurrentProcessingStatus; Option)
        {
            Caption = 'CurrentProcessingStatus';
            OptionCaption = ' ,Received,In Processing,In Processing/Tendency Engagement,In Processing/Tendency Rejection,Reminder,Engagement,Rejection';
            OptionMembers = " ",Received,"In Processing","In Processing/Tendency Engagement","In Processing/Tendency Rejection",Reminder,Engagement,Rejection;
        }
        field(9010; CurrentProcessingStatusPerDate; Date)
        {
            Caption = 'CurrentProcessingStatusPerDate';
        }
        field(9020; WhereIsTheProcessEmplGrpNo; Code[20])
        {
            Caption = 'EmployeeGroupNo';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(9021; WhereIsTheProcessEmplGrpDescr; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (WhereIsTheProcessEmplGrpNo)));
            Caption = 'EmployeeGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9030; WhereIsTheProcessFromWhen; Date)
        {
            Caption = 'WhereIsTheProcessFromWhen';
        }
        field(9050; CurrentTendencyAssLevelNo; Code[20])
        {
            Caption = 'CurrentTendencyAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(9051; CurrentTendencyAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CurrentTendencyAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentTendencyAssLevelNo));
        }
        field(9053; CurrentTendencyAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentTendencyAssLevelNo),
                                                                          "Line No." = FIELD (CurrentTendencyAssLevelLineNo)));
            Caption = 'CurrentTendencyAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9060; CurrentTendencyPerDate; Date)
        {
            Caption = 'CurrentTendencyPerDate';
        }
        field(9100; DateReminder; Date)
        {
            Caption = 'DateReminder';
        }
        field(9200; DeciderEngagementEmplNo; Code[20])
        {
            Caption = 'DeciderEngagementEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(9201; DeciderEngagementEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (DeciderEngagementEmplNo)));
            Caption = 'DeciderEngagementEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9210; DateEngagement; Date)
        {
            Caption = 'DateEngagement';
        }
        field(9250; DeciderRejectionEmplNo; Code[20])
        {
            Caption = 'DeciderRejectionEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(9251; DeciderRejectionEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (DeciderRejectionEmplNo)));
            Caption = 'DeciderRejectionEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9260; RejectionByApplicant; Boolean)
        {
            Caption = 'RejectionByApplicant';
        }
        field(9270; ReasonRejectionByApplicant; Text[50])
        {
            Caption = 'ReasonRejectionByApplicant';
        }
        field(9280; RejectionWithArchiving; Boolean)
        {
            Caption = 'RejectionWithArchiving';
        }
        field(9290; DateRejection; Date)
        {
            Caption = 'DateRejection';
        }
        field(9500; ProcessFinished; Boolean)
        {
            Caption = 'ProcessFinished';
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
        key(Key2; CurrentProcessingStatus, "Employee No.", "Line No.")
        {
        }
        key(Key3; DimensionCode, DimensionValue, "Employee No.", "Line No.")
        {
        }
        key(Key4; WhereIsTheProcessEmplGrpNo, "Employee No.", "Line No.")
        {
        }
        key(Key5; EntryDate, "Employee No.", "Line No.")
        {
        }
        key(Key6; OurInterestEngAssLevelNo, OurInterestEngAssLevelLineNo, "Employee No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

