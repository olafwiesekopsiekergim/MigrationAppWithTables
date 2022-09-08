table 5056276 "EmployeeControlAdditive/TM"
{
    Caption = 'Employee Control Additive';
    Description = 'GrEmplControlAdditive';

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
        field(5005; InternalDescendingLineNo; Integer)
        {
            Caption = 'InternalDescendingLineNo';
        }
        field(5010; ProcessingType; Option)
        {
            Caption = 'ProcessingType';
            OptionCaption = ' ,Employee Competence/Goal/Potential/Property,Employee Dimension,Employee Relation Matrix,Employee Property';
            OptionMembers = " ","Employee Competence/Goal/Potential/Property","Employee Dimension","Employee Relation Matrix","Employee Property";
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
        field(5120; DimensionRefEmployeeTable; Boolean)
        {
            Caption = 'DimensionRefEmployeeTable';
        }
        field(5121; DimensionRefLastProcedure; Boolean)
        {
            Caption = 'DimensionRefLastProcedure';
        }
        field(5122; DimensionRefStatusSync; Boolean)
        {
            Caption = 'DimensionRefStatusSync';
        }
        field(5123; DimensionRefStatusActive; Boolean)
        {
            Caption = 'DimensionRefStatusActive';
        }
        field(5125; DimensionRefEmployeeTableOpt; Option)
        {
            Caption = 'DimensionRefEmployeeTableOpt';
            Editable = false;
            OptionCaption = ' ,Company,Department,Organization Unit 1,Organization Unit 2,Organization Unit 3,Organization Unit 4,Organization Unit 5,Organization Unit 6,Organization Unit 7,Organization Unit 8,Organization Unit 9,Organization Unit 10';
            OptionMembers = " ",Company,Department,"Organization Unit 1","Organization Unit 2","Organization Unit 3","Organization Unit 4","Organization Unit 5","Organization Unit 6","Organization Unit 7","Organization Unit 8","Organization Unit 9","Organization Unit 10";
        }
        field(5150; AttachmentExisting; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentExisting';
        }
        field(6000; EmployeeStructureType; Option)
        {
            Caption = 'EmployeeStructureType';
            OptionCaption = ' ,Supervisor of,Subordinate of,Top Level,Stand-In,Successor,Performance-Assessor of';
            OptionMembers = " ","Supervisor of","Subordinate of","Top Level","Stand-In of","Successor of","Performance-Assessor of";
        }
        field(6010; EmployeeNoRelated; Code[20])
        {
            Caption = 'EmployeeNoRelated';
            TableRelation = "Employee/T"."No.";
        }
        field(6011; EmployeeNameRelated; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (EmployeeNoRelated)));
            Caption = 'EmployeeNameRelated';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6030; SupervisorDirectIndirectType; Option)
        {
            Caption = 'SupervisorDirectIndirectType';
            OptionCaption = ' ,direct,indirect';
            OptionMembers = " ",direct,indirect;
        }
        field(6031; SupervisorType; Option)
        {
            Caption = 'SupervisorType';
            OptionCaption = ' ,functional,disciplinary,functional/disciplinary';
            OptionMembers = " ",functional,disciplinary,"functional/disciplinary";
        }
        field(6060; StandInDirectIndirectType; Option)
        {
            Caption = 'StandInDirectIndirectType';
            OptionCaption = ' ,direct,indirect';
            OptionMembers = " ",direct,indirect;
        }
        field(6100; SuccessorDirectIndirectType; Option)
        {
            Caption = 'SuccessorDirectIndirectType';
            OptionCaption = ' ,direct,indirect';
            OptionMembers = " ",direct,indirect;
        }
        field(6120; SuccessorQualificationPercent; Option)
        {
            Caption = 'SuccessorQualificationPercent';
            OptionCaption = ' ,10%,20%,30%,40%,50%,60%,70%,80%,90%,100%';
            OptionMembers = " ","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%";
        }
        field(6121; SuccessorAvailableType; Option)
        {
            Caption = 'SuccessorAvailableType';
            OptionCaption = ' ,Ready now,Short-term,Mid-term,Long-term';
            OptionMembers = " ","Ready now","Short-term","Mid-term","Long-term";
        }
        field(6200; AssessorType; Option)
        {
            Caption = 'AssessorType';
            OptionCaption = ' ,Self,Supervisor,Peer,Subordinate,Customer';
            OptionMembers = " ",Self,Supervisor,Peer,Subordinate,Customer;
        }
        field(6500; DimensionCodeAccess1; Code[20])
        {
            Caption = 'DimensionCodeAccess1';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6501; DimensionValueAccess1; Code[20])
        {
            Caption = 'DimensionValueAccess1';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess1));
        }
        field(6510; DimensionCodeAccess2; Code[20])
        {
            Caption = 'DimensionCodeAccess2';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6511; DimensionValueAccess2; Code[20])
        {
            Caption = 'DimensionValueAccess2';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess2));
        }
        field(6520; DimensionCodeAccess3; Code[20])
        {
            Caption = 'DimensionCodeAccess3';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6521; DimensionValueAccess3; Code[20])
        {
            Caption = 'DimensionValueAccess3';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess3));
        }
        field(6530; DimensionCodeAccess4; Code[20])
        {
            Caption = 'DimensionCodeAccess4';
            Editable = false;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6531; DimensionValueAccess4; Code[20])
        {
            Caption = 'DimensionValueAccess4';
            Editable = false;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess4));
        }
        field(7000; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(7001; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Property/TM"."No.";
        }
        field(7002; PropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'PropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PropertyNo));
        }
        field(7004; PropertyDescription; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7005; PropertyDescription2; Text[30])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription2 WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'PropertyDescription2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7010; PersonalObjective; Boolean)
        {
            Caption = 'PersonalObjective';
        }
        field(7015; PersonalSignReqSoftTerminal; Boolean)
        {
            Caption = 'PersonalSignReqSoftTerminal';
        }
        field(7016; PersonalSignReqEMailLink; Boolean)
        {
            Caption = 'PersonalSignReqEMailLink';
        }
        field(7017; PersonalSignMarkedEMailLink; Boolean)
        {
            Caption = 'PersonalSignMarkedEMailLink';
        }
        field(7020; PersonalSignDoneSoftTerminal; Boolean)
        {
            Caption = 'PersonalSignDoneSoftTerminal';
        }
        field(7021; PersonalSignDoneEMailLink; Boolean)
        {
            Caption = 'PersonalSignDoneEMailLink';
        }
        field(7030; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(7031; DateOfEntry; Date)
        {
            Caption = 'DateOfEntry';
        }
        field(7050; ClassPropertyNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".ClassPropertyNo WHERE ("No." = FIELD (PropertyNo),
                                                                      "Line No." = FIELD (PropertyLineNo)));
            Caption = 'ClassPropertyNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(7051; ClassPropertyLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("Property/TM".ClassPropertyLineNo WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'ClassPropertyLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ClassPropertyNo));
        }
        field(7053; ClassPropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ClassPropertyNo),
                                                                          "Line No." = FIELD (ClassPropertyLineNo)));
            Caption = 'ClassPropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8190; QualiType; Option)
        {
            Caption = 'QualiType';
            Editable = true;
            OptionCaption = ' ,Seminar,Briefing,internal Training,external Training,advanced Training';
            OptionMembers = " ",Seminar,Briefing,"internal Training","external Training","advanced Training";
        }
        field(8200; QualiInstituteNo; Code[20])
        {
            Caption = 'QualiInstituteNo';
            Editable = true;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Institute));
        }
        field(8201; QualiInstituteLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiInstituteLineNo';
            Editable = true;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiInstituteNo));
        }
        field(8203; QualiInstituteDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiInstituteNo),
                                                                          "Line No." = FIELD (QualiInstituteLineNo)));
            Caption = 'QualiInstituteDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8205; QualiStatus; Option)
        {
            Caption = 'QualiStatus';
            Editable = true;
            OptionCaption = ' ,planned,public advertised,booked up,cancelled,currently proceeding,finished';
            OptionMembers = " ",planned,"public advertised","booked up",cancelled,"currently proceeding",finished;
        }
        field(8207; QualiPriority; Option)
        {
            Caption = 'QualiPriority';
            OptionCaption = ' ,very important,important,preferable';
            OptionMembers = " ","very important",important,preferable;
        }
        field(8210; QualiCostsAttendant; Decimal)
        {
            Caption = 'QualiCostsAttendant';
        }
        field(8215; QualiAttendantStatus; Option)
        {
            Caption = 'QualiAttendantStatus';
            OptionCaption = ' ,enrolled,cancelled,attending,passed';
            OptionMembers = " ",enrolled,cancelled,attending,passed;
        }
        field(8217; QualiActivityRequestAttendant; Boolean)
        {
            Caption = 'QualiActivityRequestAttendant';
        }
        field(8220; QualiAttendAssessLevelNo; Code[20])
        {
            Caption = 'QualiAttendAssessLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(8221; QualiAttendAssessLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiAttendAssessLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiAttendAssessLevelNo));
        }
        field(8223; QualiAttendAssessLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiAttendAssessLevelNo),
                                                                          "Line No." = FIELD (QualiAttendAssessLevelLineNo)));
            Caption = 'QualiAttendAssessLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8230; QualiSupervAssessLevelNo; Code[20])
        {
            Caption = 'QualiSupervAssessLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(8231; QualiSupervAssessLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiSupervAssessLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiSupervAssessLevelNo));
        }
        field(8233; QualiSupervAssessLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiSupervAssessLevelNo),
                                                                          "Line No." = FIELD (QualiSupervAssessLevelLineNo)));
            Caption = 'QualiSupervAssessLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8300; QualiRequiredCompGroupNo; Code[20])
        {
            Caption = 'QualiRequiredCompGroupNo';
            Editable = true;
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(8302; QualiRequiredCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (QualiRequiredCompGroupNo)));
            Caption = 'QualiRequiredCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8310; QualiAttainCompGroupNo; Code[20])
        {
            Caption = 'QualiAttainCompGroupNo';
            Editable = true;
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(8312; QualiAttainCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (QualiAttainCompGroupNo)));
            Caption = 'QualiAttainCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8315; QualiAttainCertificateNo; Code[20])
        {
            Caption = 'QualiAttainCertificateNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Certificate));
        }
        field(8316; QualiAttainCertificateLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiAttainCertificateLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiAttainCertificateNo));
        }
        field(8318; QualiAttainCertificateDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiAttainCertificateNo),
                                                                          "Line No." = FIELD (QualiAttainCertificateLineNo)));
            Caption = 'QualiAttainCertificateDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8330; QualiRefCompGroupNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".CompGoalPotGroupNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                 ReferenceToQualiNo = FIELD (PropertyNo),
                                                                                 ReferenceToQualiLineNo = FIELD (PropertyLineNo),
                                                                                 RefToQualiEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'QualiRefCompGroupNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8331; QualiRefCompGroupLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".CompGoalPotGroupLineNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                     ReferenceToQualiNo = FIELD (PropertyNo),
                                                                                     ReferenceToQualiLineNo = FIELD (PropertyLineNo),
                                                                                     RefToQualiEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'QualiRefCompGroupLineNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8333; QualiRefCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (QualiRefCompGroupNo)));
            Caption = 'QualiRefCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8335; QualiRefCompGroupResult; Decimal)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".AssessmentResult WHERE ("Employee No." = FIELD ("Employee No."),
                                                                               ReferenceToQualiNo = FIELD (PropertyNo),
                                                                               ReferenceToQualiLineNo = FIELD (PropertyLineNo),
                                                                               RefToQualiEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'QualiRefCompGroupResult';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8336; QualiRefCompGroupMarking; Text[30])
        {
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".AssessmentMarking WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                ReferenceToQualiNo = FIELD (PropertyNo),
                                                                                ReferenceToQualiLineNo = FIELD (PropertyLineNo),
                                                                                RefToQualiEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'QualiRefCompGroupMarking';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8337; QualiRefCompGroupComplete; Boolean)
        {
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".AssessmentComplete WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                 ReferenceToQualiNo = FIELD (PropertyNo),
                                                                                 ReferenceToQualiLineNo = FIELD (PropertyLineNo),
                                                                                 RefToQualiEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'QualiRefCompGroupComplete';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8400; QualiLocationNo; Code[20])
        {
            Caption = 'QualiLocationNo';
            Editable = true;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Location));
        }
        field(8401; QualiLocationLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiLocationLineNo';
            Editable = true;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiLocationNo));
        }
        field(8403; QualiLocationDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiLocationNo),
                                                                          "Line No." = FIELD (QualiLocationLineNo)));
            Caption = 'QualiLocationDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8410; QualiInternalExternal; Option)
        {
            CalcFormula = Lookup ("Property/TM".QualiInternalExternal WHERE ("No." = FIELD (PropertyNo),
                                                                            "Line No." = FIELD (PropertyLineNo)));
            Caption = 'QualiInternalExternal';
            FieldClass = FlowField;
            OptionCaption = ' ,internal,external';
            OptionMembers = " ",internal,external;
        }
        field(8420; QualiInstructorEmplNoInt; Code[20])
        {
            Caption = 'QualiInstructorEmplNoInt';
            TableRelation = "Employee/T"."No.";
        }
        field(8421; QualiInstructorEmplNameInt; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (QualiInstructorEmplNoInt)));
            Caption = 'QualiInstructorEmplNameInt';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8422; QualiInstructorEmplNameExt; Text[30])
        {
            Caption = 'QualiInstructorEmplNameExt';
        }
        field(8425; QualiFromTime; Time)
        {
            Caption = 'QualiFromTime';
        }
        field(8426; QualiToTime; Time)
        {
            Caption = 'QualiToTime';
        }
        field(8427; QualiDurationMinutes; Integer)
        {
            Caption = 'QualiDurationMinutes';
        }
        field(8430; QualificationFinished; Boolean)
        {
            Caption = 'QualificationFinished';
        }
        field(8440; QualiPerformSkilled; Option)
        {
            Caption = 'QualiPerformSkilled';
            OptionCaption = ' ,10%,20%,30%,40%,50%,60%,70%,80%,90%,100%';
            OptionMembers = " ","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%";
        }
        field(8450; QualiDateNextAssessment; Date)
        {
            Caption = 'QualiDateNextAssessment';
        }
        field(8460; QualiFurtherTrainingRequired; Boolean)
        {
            Caption = 'QualiFurtherTrainingRequired';
        }
        field(8500; SpecSkillLicenceChipNo; Code[20])
        {
            Caption = 'SpecSkillLicenceChipNo';
        }
        field(8510; SpecSkillLicenceType; Option)
        {
            Caption = 'SpecSkillLicenceType';
            OptionCaption = ' ,Car,Truck,Coach,Stacker,Others';
            OptionMembers = " ",Car,Truck,Coach,Stacker,Others;
        }
        field(8520; SpecSkillLicenceClass; Option)
        {
            Caption = 'SpecSkillLicenceClass';
            OptionCaption = ' ,A1,A,B,C1,C,D1,D,BE,C1E,CE,D1E,DE,M,L,T';
            OptionMembers = " ",A1,A,B,C1,C,D1,D,BE,C1E,CE,D1E,DE,M,L,T;
        }
        field(8530; SpecSkillLicenceNo; Text[30])
        {
            Caption = 'SpecSkillLicenceNo';
        }
        field(8540; SpecSkillLicenceNationIssue; Code[10])
        {
            Caption = 'SpecSkillLicenceNationIssue';
            TableRelation = "Country/Region".Code;
        }
        field(8550; SpecSkillLicenceOfficeIssue; Text[30])
        {
            Caption = 'SpecSkillLicenceOfficeIssue';
        }
        field(8560; SpecSkillLicenceDateIssue; Date)
        {
            Caption = 'SpecSkillLicenceDateIssue';
        }
        field(8570; SpecSkillLicenceDateBegin; Date)
        {
            Caption = 'SpecSkillLicenceDateBegin';
        }
        field(8580; SpecSkillLicenceDateEnd; Date)
        {
            Caption = 'SpecSkillLicenceDateEnd';
        }
        field(8590; SpecSkillLicenceCheckIntMonth; Integer)
        {
            Caption = 'SpecSkillLicenceCheckIntMonth';
        }
        field(8600; SpecSkillLicenceReminderInfo1; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo1';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8610; SpecSkillLicenceReminderInfo2; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo2';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8620; SpecSkillLicenceReminderInfo3; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo3';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8630; SpecSkillLicenceReminderInfo4; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo4';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8640; SpecSkillLicenceRemInfoDaysBef; Integer)
        {
            Caption = 'SpecSkillLicenceRemInfoDaysBef';
        }
        field(8750; SpecSkillLicenceConfirmed; Boolean)
        {
            Caption = 'SpecSkillLicenceConfirmed';
        }
        field(8760; SpecSkillLicenceDateConfirmed; Date)
        {
            Caption = 'SpecSkillLicenceDateConfirmed';
        }
        field(8770; SpecSkillLicenceTimeConfirmed; Time)
        {
            Caption = 'SpecSkillLicenceTimeConfirmed';
        }
        field(8780; SpecSkillLicenceTermConfirmed; Code[10])
        {
            Caption = 'SpecSkillLicenceTermConfirmed';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(8800; SpecSkillLicenceTolerance; Text[10])
        {
            Caption = 'SpecSkillLicenceTolerance';
            Editable = false;
        }
        field(8810; SpecSkillLicenceExceeding; Text[10])
        {
            Caption = 'SpecSkillLicenceExceeding';
            Editable = false;
        }
        field(8820; SpecSkillLicenceDeviating; Boolean)
        {
            Caption = 'SpecSkillLicenceDeviating';
            Editable = false;
        }
        field(9000; InterviewType; Option)
        {
            Caption = 'InterviewType';
            OptionCaption = ' ,Meeting,Appraisal,Application Interview,Interview for Performance Assessment,Assessment Center,other Interview';
            OptionMembers = " ",Meeting,Appraisal,"Application Interview","Interview for Performance Assessment","Assessment Center","other Interview";
        }
        field(9010; InterviewSubject; Text[30])
        {
            Caption = 'InterviewSubject';
        }
        field(9015; InterviewDateScheduled; Date)
        {
            Caption = 'InterviewDateScheduled';
        }
        field(9016; InterviewFromTimeScheduled; Time)
        {
            Caption = 'InterviewFromTimeScheduled';
        }
        field(9017; InterviewToTimeScheduled; Time)
        {
            Caption = 'InterviewToTimeScheduled';
        }
        field(9018; InterviewDurationMinScheduled; Integer)
        {
            Caption = 'InterviewDurationMinScheduled';
        }
        field(9030; InterviewAttendEmplNo1; Code[20])
        {
            Caption = 'InterviewedByEmplNo1';
            TableRelation = "Employee/T"."No.";
        }
        field(9031; InterviewAttendEmplName1; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (InterviewAttendEmplNo1)));
            Caption = 'InterviewedByEmplName1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9035; InterviewAttendEmplNo2; Code[20])
        {
            Caption = 'InterviewedByEmplNo2';
            TableRelation = "Employee/T"."No.";
        }
        field(9036; InterviewAttendEmplName2; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (InterviewAttendEmplNo2)));
            Caption = 'InterviewedByEmplName2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9040; InterviewAttendEmplNo3; Code[20])
        {
            Caption = 'InterviewedByEmplNo3';
            TableRelation = "Employee/T"."No.";
        }
        field(9041; InterviewAttendEmplName3; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (InterviewAttendEmplNo3)));
            Caption = 'InterviewedByEmplName3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9045; InterviewAttendEmplNo4; Code[20])
        {
            Caption = 'InterviewedByEmplNo4';
            TableRelation = "Employee/T"."No.";
        }
        field(9046; InterviewAttendEmplName4; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (InterviewAttendEmplNo4)));
            Caption = 'InterviewedByEmplName4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9050; InterviewAttendEmplGroupNo; Code[20])
        {
            Caption = 'InterviewedByEmplGroupNo';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(9051; InterviewAttendEmplGroupDescr; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (InterviewAttendEmplGroupNo)));
            Caption = 'InterviewedByEmplGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9100; InterviewDateHappened; Date)
        {
            Caption = 'InterviewDateHappened';
        }
        field(9101; InterviewFromTimeHappened; Time)
        {
            Caption = 'InterviewFromTimeHappened';
        }
        field(9102; InterviewToTimeHappened; Time)
        {
            Caption = 'InterviewToTimeHappened';
        }
        field(9103; InterviewDurationMinHappened; Integer)
        {
            Caption = 'InterviewDurationMinHappened';
        }
        field(9105; InterviewLocationNo; Code[20])
        {
            Caption = 'InterviewLocationNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Location));
        }
        field(9106; InterviewLocationLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'InterviewLocationLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (InterviewLocationNo));
        }
        field(9108; InterviewLocationDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (InterviewLocationNo),
                                                                          "Line No." = FIELD (InterviewLocationLineNo)));
            Caption = 'InterviewLocationDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9120; InterviewNextAppointment; Date)
        {
            Caption = 'InterviewNextAppointment';
        }
        field(9130; InterviewApplOnSchedule; Boolean)
        {
            Caption = 'InterviewApplOnSchedule';
        }
        field(9135; InterviewApplDocumentsComplete; Boolean)
        {
            Caption = 'InterviewApplDocumentsComplete';
        }
        field(9140; InterviewApplCommentPositive; Text[50])
        {
            Caption = 'InterviewApplCommentPositive';
        }
        field(9145; InterviewApplCommentNegative; Text[50])
        {
            Caption = 'InterviewApplCommentNegative';
        }
        field(9200; InterviewImpressAssLevelNo; Code[20])
        {
            Caption = 'InterviewImpressAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(9201; InterviewImpressAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'InterviewImpressAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (InterviewImpressAssLevelNo));
        }
        field(9203; InterviewImpressAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (InterviewImpressAssLevelNo),
                                                                          "Line No." = FIELD (InterviewImpressAssLevelLineNo)));
            Caption = 'InterviewImpressAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9210; InterviewAppearAssLevelNo; Code[20])
        {
            Caption = 'InterviewAppearAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(9211; InterviewAppearAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'InterviewAppearAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (InterviewAppearAssLevelNo));
        }
        field(9213; InterviewAppearAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (InterviewAppearAssLevelNo),
                                                                          "Line No." = FIELD (InterviewAppearAssLevelLineNo)));
            Caption = 'InterviewAppearAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9220; InterviewRefCompGroupNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".CompGoalPotGroupNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                 ReferenceToInterviewNo = FIELD (PropertyNo),
                                                                                 ReferenceToInterviewLineNo = FIELD (PropertyLineNo),
                                                                                 RefToInterviewEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'InterviewRefCompGroupNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9221; InterviewRefCompGroupLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".CompGoalPotGroupLineNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                     ReferenceToInterviewNo = FIELD (PropertyNo),
                                                                                     ReferenceToInterviewLineNo = FIELD (PropertyLineNo),
                                                                                     RefToInterviewEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'InterviewRefCompGroupLineNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9223; InterviewRefCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (InterviewRefCompGroupNo)));
            Caption = 'InterviewRefCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9225; InterviewRefCompGroupResult; Decimal)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".AssessmentResult WHERE ("Employee No." = FIELD ("Employee No."),
                                                                               ReferenceToInterviewNo = FIELD (PropertyNo),
                                                                               ReferenceToInterviewLineNo = FIELD (PropertyLineNo),
                                                                               RefToInterviewEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'InterviewRefCompGroupResult';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9226; InterviewRefCompGroupMarking; Text[30])
        {
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".AssessmentMarking WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                ReferenceToInterviewNo = FIELD (PropertyNo),
                                                                                ReferenceToInterviewLineNo = FIELD (PropertyLineNo),
                                                                                RefToInterviewEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'InterviewRefCompGroupMarking';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9227; InterviewRefCompGroupComplete; Boolean)
        {
            CalcFormula = Lookup ("EmployeeCGPGroup/TM".AssessmentComplete WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                 ReferenceToInterviewNo = FIELD (PropertyNo),
                                                                                 ReferenceToInterviewLineNo = FIELD (PropertyLineNo),
                                                                                 RefToInterviewEmplAddLineNo = FIELD ("Line No.")));
            Caption = 'InterviewRefCompGroupComplete';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9230; InterviewOutlookInvSended; Boolean)
        {
            Caption = 'Interview Outlook Invitation sended';
        }
        field(9490; WorkingProgType; Option)
        {
            Caption = 'WorkingProgType';
            OptionCaption = ' ,Job Training Program,Trainee Program';
            OptionMembers = " ","Job Training Program","Trainee Program";
        }
        field(9500; WorkingProgSupervisorNo; Code[20])
        {
            Caption = 'WorkingProgSupervisorNo';
            TableRelation = "Employee/T"."No.";
        }
        field(9501; WorkingProgSupervisorName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (WorkingProgSupervisorNo)));
            Caption = 'WorkingProgSupervisorName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9510; WorkingProgStandInNo; Code[20])
        {
            Caption = 'WorkingProgStandInNo';
            TableRelation = "Employee/T"."No.";
        }
        field(9511; WorkingProgStandInName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (WorkingProgStandInNo)));
            Caption = 'WorkingProgStandInName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9520; WorkingProgPropGroupNo; Code[20])
        {
            Caption = 'WorkingProgPropGroupNo';
            TableRelation = "PropertyGroup/TM".PropertyGroupNo;
        }
        field(9521; WorkingProgPropGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("PropertyGroup/TM".Description WHERE (PropertyGroupNo = FIELD (WorkingProgPropGroupNo)));
            Caption = 'WorkingProgPropGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9540; WorkingProgReqCompGroupNo; Code[20])
        {
            Caption = 'WorkingProgReqCompGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(9542; WorkingProgReqCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (WorkingProgReqCompGroupNo)));
            Caption = 'WorkingProgReqCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9550; WorkingProgAttCompGroupNo; Code[20])
        {
            Caption = 'WorkingProgAttCompGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(9552; WorkingProgAttCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (WorkingProgAttCompGroupNo)));
            Caption = 'WorkingProgAttCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9580; WorkingProgAssessLevelNo; Code[20])
        {
            Caption = 'WorkingProgAssessLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(9581; WorkingProgAssessLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'WorkingProgAssessLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (WorkingProgAssessLevelNo));
        }
        field(9583; WorkingProgAssessLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (WorkingProgAssessLevelNo),
                                                                          "Line No." = FIELD (WorkingProgAssessLevelLineNo)));
            Caption = 'WorkingProgAssessLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9590; WorkingProgPeriodPassed; Boolean)
        {
            Caption = 'WorkingProgPeriodPassed';
        }
        field(9591; WorkingProgPeriodPassedDate; Date)
        {
            Caption = 'WorkingProgPeriodPassedDate';
        }
        field(9800; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(9810; "Division No."; Code[10])
        {
            Caption = 'Division No.';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(9820; "Activity No."; Code[10])
        {
            Caption = 'Activity No.';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(9830; "Company No."; Code[10])
        {
            Caption = 'Company No.';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(9840; "Pay Group No."; Code[10])
        {
            Caption = 'Pay Group No.';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(9850; "Group No. 1"; Code[10])
        {
            Caption = 'Group No. 1';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(9860; "Group No. 2"; Code[10])
        {
            Caption = 'Group No. 2';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(9870; "Group No. 3"; Code[10])
        {
            Caption = 'Group No. 3';
            Editable = false;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(9880; "Time Object No."; Code[10])
        {
            Caption = 'Time Object No.';
            Editable = false;
            TableRelation = "Time Object/T"."No.";
        }
        field(9890; RefEmployeeStatus; Option)
        {
            CalcFormula = Lookup ("EmployeeControl/TM".StatusHistEmployeeStatus WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                      ProcessingType = CONST ("Employee Property"),
                                                                                      PropertyType = CONST ("Status History"),
                                                                                      DimensionRefStatusSync = CONST (true)));
            Caption = 'Reference Employee Status';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,active,inactive,terminated by employer,terminated by employee,parental leave,maternity leave,terminated';
            OptionMembers = " ",active,inactive,"terminated by employer","terminated by employee","parental leave","maternity leave",terminated;
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
        key(Key2; "Employee No.", ProcessingType, PropertyType, "Line No.")
        {
        }
        key(Key3; "Employee No.", ProcessingType, PropertyType, DimensionRefEmployeeTableOpt, "Line No.")
        {
        }
        key(Key4; "Employee No.", ProcessingType, PropertyType, InternalDescendingLineNo)
        {
        }
        key(Key5; "Employee No.", ProcessingType, PropertyType, DimensionRefEmployeeTableOpt, InternalDescendingLineNo)
        {
        }
        key(Key6; DimensionFromDate, "Employee No.", ProcessingType, PropertyType, "Line No.")
        {
        }
        key(Key7; PropertyType, PropertyNo, PropertyLineNo)
        {
        }
        key(Key8; "Employee No.", DimensionFromDate)
        {
        }
        key(Key9; "Employee No.", ProcessingType, PropertyType, DimensionFromDate, "Line No.")
        {
        }
        key(Key10; "Employee No.", ProcessingType, PropertyType, DimensionRefEmployeeTableOpt, DimensionFromDate, "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

