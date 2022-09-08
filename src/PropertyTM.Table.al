table 5056400 "Property/TM"
{
    Caption = 'Property';
    Description = 'GrProperty';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = "Property/TM"."No.";
            ValidateTableRelation = false;
        }
        field(2; "Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Line No.';
            NotBlank = true;
            TableRelation = "Property/TM"."Line No.";
            ValidateTableRelation = false;
        }
        field(5010; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(5020; PropertyDescription; Text[250])
        {
            Caption = 'PropertyDescription';
        }
        field(5021; PropertyDescription2; Text[30])
        {
            Caption = 'PropertyDescription2';
        }
        field(5022; GeneralInfoEmplGroupNoSend; Code[20])
        {
            Caption = 'GeneralInfoEmplGroupNoSend';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(5023; GeneralInfoEmplGroupDescrSend; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (GeneralInfoEmplGroupNoSend)));
            Caption = 'GeneralInfoEmplGroupDescrSend';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5024; GeneralInfoSendEmplNo; Code[20])
        {
            Caption = 'GeneralInfoSendEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5025; GeneralInfoSendEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (GeneralInfoSendEmplNo)));
            Caption = 'GeneralInfoSendEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5026; GeneralInfoEmplGroupNoRecip; Code[20])
        {
            Caption = 'GeneralInfoEmplGroupNoRecip';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(5027; GeneralInfoEmplGroupDescrRecip; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (GeneralInfoEmplGroupNoRecip)));
            Caption = 'GeneralInfoEmplGroupDescrRecip';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5028; GeneralInfoRecipEmplNo; Code[20])
        {
            Caption = 'GeneralInfoRecipEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5029; GeneralInfoRecipEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (GeneralInfoRecipEmplNo)));
            Caption = 'GeneralInfoRecipEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5030; GeneralInfoTypeNo; Code[20])
        {
            Caption = 'GeneralInfoTypeNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info Type"));
        }
        field(5031; GeneralInfoTypeLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'GeneralInfoTypeLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (GeneralInfoTypeNo));
        }
        field(5033; GeneralInfoTypeDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (GeneralInfoTypeNo),
                                                                          "Line No." = FIELD (GeneralInfoTypeLineNo)));
            Caption = 'GeneralInfoTypeDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5035; GeneralInfoDefault; Option)
        {
            Caption = 'GeneralInfoDefault';
            OptionCaption = ' ,Salutation,Authority,Education Major Subject,Complaint Issue,Complaint Measure,Complaint Consequence,Disabled,Status Equipment Payment,Bookmark,Technical Communication,Incoming Documents,Outgoing Note,Functional Communikation Internal,Functional Communikation External,Interview,Reminder,Application Engagements,Application Rejections';
            OptionMembers = " ",Salutation,Authority,"Education Major Subject","Complaint Issue","Complaint Measure","Complaint Consequence",Disabled,"Status Equipment Payment",Bookmark,"Technical Communication","Incoming Documents","Outgoing Note","Functional Communikation Internal","Functional Communikation External",Interview,Reminder,"Application Engagements","Application Rejections";
        }
        field(5036; GeneralInfoClassPropertyType; Option)
        {
            Caption = 'GeneralInfoClassPropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(5037; GeneralInfoApplCurrProcStatus; Option)
        {
            Caption = 'GeneralInfoApplCurrProcStatus';
            OptionCaption = ' ,Received,In Processing,In Processing/Tendency Engagement,In Processing/Tendency Rejection,Reminder,Engagement,Rejection';
            OptionMembers = " ",Received,"In Processing","In Processing/Tendency Engagement","In Processing/Tendency Rejection",Reminder,Engagement,Rejection;
        }
        field(5040; PositionLeading; Boolean)
        {
            Caption = 'PositionLeading';
        }
        field(5042; AttachmentRefEmplCtrlLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefEmplCtrlLineNo';
        }
        field(5043; AttachmentRefEmplCtrlAddLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefEmplCtrlAddLineNo';
        }
        field(5045; AttachmentRefApplicantNo; Code[20])
        {
            Caption = 'AttachmentRefApplicantNo';
            TableRelation = "EmployeeApplication/TM"."Employee No.";
        }
        field(5046; AttachmentRefApplicantLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefApplicantLineNo';
            TableRelation = "EmployeeApplication/TM"."Line No." WHERE ("Employee No." = FIELD (AttachmentRefApplicantNo));
        }
        field(5048; AttachmentRefApplicantName; Text[250])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (AttachmentRefApplicantNo)));
            Caption = 'AttachmentRefApplicantName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5050; AttachmentRefPropertyType; Option)
        {
            Caption = 'AttachmentRefPropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Dimension,Employee Relation Matrix,Competence-Group,Goal-Group,Potential-Group,Property-Group,All,Job Application';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info",Dimension,"Employee Relation Matrix","Competence-Group","Goal-Group","Potential-Group","Property-Group",All,"Job Application";
        }
        field(5051; AttachmentRefPropertyNo; Code[20])
        {
            Caption = 'AttachmentRefPropertyNo';
            TableRelation = "Property/TM"."No.";
        }
        field(5052; AttachmentRefPropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefPropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AttachmentRefPropertyNo));
        }
        field(5054; AttachmentRefPropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AttachmentRefPropertyNo),
                                                                          "Line No." = FIELD (AttachmentRefPropertyLineNo)));
            Caption = 'AttachmentRefPropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5055; AttachmentRefCGPType; Option)
        {
            Caption = 'AttachmentRefCGPType';
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
        }
        field(5056; AttachmentRefCGPGroupNo; Code[20])
        {
            Caption = 'AttachmentRefCGPGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo;
        }
        field(5058; AttachmentRefCGPGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (AttachmentRefCGPGroupNo)));
            Caption = 'AttachmentRefCGPGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5060; AttachmentTemplateBLOB; BLOB)
        {
            Caption = 'AttachmentTemplateBLOB';
            Compressed = false;
        }
        field(5065; AttachmentTemplateFilename; Text[250])
        {
            Caption = 'AttachmentTemplateFilename';
        }
        field(5066; AttachmentTemplateExtension; Text[10])
        {
            Caption = 'AttachmentTemplateExtension';
        }
        field(5067; AttachmentReferenceEmplNo; Code[20])
        {
            Caption = 'AttachmentReferenceEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5068; AttachmentReferenceEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (AttachmentReferenceEmplNo)));
            Caption = 'AttachmentReferenceEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5069; AttachmentTemplatePath; Text[250])
        {
            Caption = 'AttachmentTemplatePath';
        }
        field(5070; AssessmentLevelSource; Option)
        {
            Caption = 'AssessmentLevelSource';
            OptionCaption = 'Standard,Job Description Evaluation Target,Qualification Evaluation Competence,Qualification Performing Skilled,Application Aptitude Degree,Application Current Tendency,Application Our Interest,Performance Assessment,Interview Impression,Interview Appearance,Marking,Perform Ass Competence (Lookup),Perform Ass Goal (Lookup),Perform Ass Potential (Lookup),Payment Group,Job Desc Eval Target Property (Alter),Job Descr Eval Target CGP (Alter),Perform Ass Property (Alter),Perform Ass CGP (Alter)';
            OptionMembers = Standard,"Job Description Evaluation Target","Qualification Evaluation Competence","Qualification Performing Skilled","Application Aptitude Degree","Application Current Tendency","Application Our Interest","Performance Assessment","Interview Impression","Interview Appearance",Marking,"Perform Ass Competence (Lookup)","Perform Ass Goal (Lookup)","Perform Ass Potential (Lookup)","Payment Group","Job Desc Eval Target Property (Alter)","Job Descr Eval Target CGP (Alter)","Perform Ass Property (Alter)","Perform Ass CGP (Alter)";
        }
        field(5071; AssessmentFactor; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentFactor';
        }
        field(5072; AssessmentMinValueMarking; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentMinValueMarking';
        }
        field(5073; AssessmentMaxValueMarking; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentMaxValueMarking';
        }
        field(5075; NumberOfYears; Decimal)
        {
            BlankZero = true;
            Caption = 'NumberOfYears';
        }
        field(5077; NumOfResourcesAssignedActive; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesAssignedActive';
            Editable = false;
        }
        field(5078; NumOfResourcesBalance; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesBalance';
            Editable = false;
        }
        field(5079; NumOfResourcesAssignedTotal; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesAssignedTotal';
            Editable = false;
        }
        field(5080; NumOfResourcesRequired; Integer)
        {
            BlankZero = true;
            Caption = 'NumOfResourcesRequired';
        }
        field(5081; OutputOfficialDocuments; Boolean)
        {
            Caption = 'OutputOfficialDocuments';
        }
        field(5085; ClassPropertyNo; Code[20])
        {
            Caption = 'ClassPropertyNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(5086; ClassPropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ClassPropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ClassPropertyNo));
        }
        field(5088; ClassPropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ClassPropertyNo),
                                                                          "Line No." = FIELD (ClassPropertyLineNo)));
            Caption = 'ClassPropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5090; QualiType; Option)
        {
            Caption = 'QualiType';
            OptionCaption = ' ,Seminar,Briefing,internal Training,external Training,advanced Training';
            OptionMembers = " ",Seminar,Briefing,"internal Training","external Training","advanced Training";
        }
        field(5100; QualiInstituteNo; Code[20])
        {
            Caption = 'QualiInstituteNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Institute));
        }
        field(5101; QualiInstituteLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiInstituteLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiInstituteNo));
        }
        field(5103; QualiInstituteDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiInstituteNo),
                                                                          "Line No." = FIELD (QualiInstituteLineNo)));
            Caption = 'QualiInstituteDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5105; QualiStatus; Option)
        {
            Caption = 'QualiStatus';
            OptionCaption = ' ,planned,public advertised,booked up,cancelled,currently proceeding,finished';
            OptionMembers = " ",planned,"public advertised","booked up",cancelled,"currently proceeding",finished;
        }
        field(5107; QualiPriority; Option)
        {
            Caption = 'QualiPriority';
            OptionCaption = ' ,very important,important,preferable';
            OptionMembers = " ","very important",important,preferable;
        }
        field(5110; QualiCostsAttendant; Decimal)
        {
            Caption = 'QualiCostsAttendant';
        }
        field(5200; QualiRequiredCompGroupNo; Code[20])
        {
            Caption = 'QualiRequiredCompGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(5202; QualiRequiredCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (QualiRequiredCompGroupNo)));
            Caption = 'QualiRequiredCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5210; QualiAttainCompGroupNo; Code[20])
        {
            Caption = 'QualiAttainCompGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(5212; QualiAttainCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (QualiAttainCompGroupNo)));
            Caption = 'QualiAttainCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5215; QualiAttainCertificateNo; Code[20])
        {
            Caption = 'QualiAttainCertificateNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Certificate));
        }
        field(5216; QualiAttainCertificateLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiAttainCertificateLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiAttainCertificateNo));
        }
        field(5218; QualiAttainCertificateDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiAttainCertificateNo),
                                                                          "Line No." = FIELD (QualiAttainCertificateLineNo)));
            Caption = 'QualiAttainCertificateDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5300; QualiLocationNo; Code[20])
        {
            Caption = 'QualiLocationNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Location));
        }
        field(5301; QualiLocationLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'QualiLocationLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (QualiLocationNo));
        }
        field(5303; QualiLocationDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (QualiLocationNo),
                                                                          "Line No." = FIELD (QualiLocationLineNo)));
            Caption = 'QualiLocationDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5310; QualiInternalExternal; Option)
        {
            Caption = 'QualiInternalExternal';
            OptionCaption = ' ,internal,external';
            OptionMembers = " ",internal,external;
        }
        field(5320; QualiInstructorEmplNoInt; Code[20])
        {
            Caption = 'QualiInstructorEmplNoInt';
            TableRelation = "Employee/T"."No.";
        }
        field(5321; QualiInstructorEmplNameInt; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (QualiInstructorEmplNoInt)));
            Caption = 'QualiInstructorEmplNameInt';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5322; QualiInstructorEmplNameExt; Text[30])
        {
            Caption = 'QualiInstructorEmplNameExt';
        }
        field(5400; QualiCostsTotal; Decimal)
        {
            Caption = 'QualiCostsTotal';
        }
        field(5450; LocationType; Option)
        {
            Caption = 'LocationType';
            OptionCaption = ' ,Room,Job Advertisement Place,Seminar Location,Equipment/Payment Location';
            OptionMembers = " ",Room,"Job Advertisement Place","Seminar Location","Equipment/Payment Location";
        }
        field(5470; ReasonType; Option)
        {
            Caption = 'ReasonType';
            OptionCaption = ' ,Employment,Leaving,Formal Warning';
            OptionMembers = " ",Employment,Leaving,"Formal Warning";
        }
        field(5490; InstituteType; Option)
        {
            Caption = 'InstituteType';
            OptionCaption = ' ,Employment,Leaving,Formal Warning,Certificate,Award';
            OptionMembers = " ","Qualification/Education",Qualification,Education,Certificate,Award;
        }
        field(5500; EquipPayManufacturer; Text[30])
        {
            Caption = 'EquipPayManufacturer';
        }
        field(5502; EquipPayModel; Text[50])
        {
            Caption = 'EquipPayModel';
        }
        field(5510; EquipPaySerialNo; Text[50])
        {
            Caption = 'EquipPaySerialNo';
        }
        field(5512; EquipPayLicenseNo; Text[20])
        {
            Caption = 'EquipPayLicenseNo';
        }
        field(5514; EquipPayInventoryNo; Text[20])
        {
            Caption = 'EquipPayInventoryNo';
        }
        field(5520; EquipPayPINCode; Code[10])
        {
            Caption = 'EquipPayPINCode';
        }
        field(5521; EquipPayPUKCode; Code[30])
        {
            Caption = 'EquipPayPUKCode';
        }
        field(5522; EquipPayPINCode2; Code[10])
        {
            Caption = 'EquipPayPINCode2';
        }
        field(5523; EquipPayPUKCode2; Code[30])
        {
            Caption = 'EquipPayPUKCode2';
        }
        field(5524; EquipPayFixedAssetNo; Code[20])
        {
            Caption = 'EquipPayFixedAssetNo';
            TableRelation = "Fixed Asset"."No.";
            ValidateTableRelation = false;
        }
        field(5530; EquipPayStatusNo; Code[20])
        {
            Caption = 'EquipPayStatusNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(5531; EquipPayStatusLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'EquipPayStatusLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EquipPayStatusNo));
        }
        field(5533; EquipPayStatusDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EquipPayStatusNo),
                                                                          "Line No." = FIELD (EquipPayStatusLineNo)));
            Caption = 'EquipPayStatusDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5535; EquipPayLocationNo; Code[20])
        {
            Caption = 'EquipPayLocationNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Location));
        }
        field(5536; EquipPayLocationLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'EquipPayLocationLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EquipPayLocationNo));
        }
        field(5538; EquipPayLocationDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EquipPayLocationNo),
                                                                          "Line No." = FIELD (EquipPayLocationLineNo)));
            Caption = 'EquipPayLocationDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5540; EquipPayPurchaseDate; Date)
        {
            Caption = 'EquipPayPurchaseDate';
        }
        field(5541; EquipPayWarrantyExpiryDate; Date)
        {
            Caption = 'EquipPayWarrantyExpiryDate';
        }
        field(5545; EquipPayVendorNo; Code[20])
        {
            Caption = 'EquipPayVendorNo';
            TableRelation = Vendor."No.";
        }
        field(5546; EquipPayVendorName; Text[50])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD (EquipPayVendorNo)));
            Caption = 'EquipPayVendorName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5550; EquipPayExclusiveAssignment; Boolean)
        {
            Caption = 'EquipPayExclusiveAssignment';
            InitValue = true;
        }
        field(5590; WorkingProgType; Option)
        {
            Caption = 'WorkingProgType';
            OptionCaption = ' ,Job Training Program,Trainee Program';
            OptionMembers = " ","Job Training Program","Trainee Program";
        }
        field(5600; WorkingProgSupervisorNo; Code[20])
        {
            Caption = 'WorkingProgSupervisorNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5601; WorkingProgSupervisorName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (WorkingProgSupervisorNo)));
            Caption = 'WorkingProgSupervisorName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5610; WorkingProgStandInNo; Code[20])
        {
            Caption = 'WorkingProgStandInNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5611; WorkingProgStandInName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (WorkingProgStandInNo)));
            Caption = 'WorkingProgStandInName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5620; WorkingProgPropGroupNo; Code[20])
        {
            Caption = 'WorkingProgPropGroupNo';
            TableRelation = "PropertyGroup/TM".PropertyGroupNo;
        }
        field(5621; WorkingProgPropGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (WorkingProgPropGroupNo)));
            Caption = 'WorkingProgPropGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5640; WorkingProgReqCompGroupNo; Code[20])
        {
            Caption = 'WorkingProgReqCompGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(5642; WorkingProgReqCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (WorkingProgReqCompGroupNo)));
            Caption = 'WorkingProgReqCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5650; WorkingProgAttCompGroupNo; Code[20])
        {
            Caption = 'WorkingProgAttCompGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(5652; WorkingProgAttCompGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (WorkingProgAttCompGroupNo)));
            Caption = 'WorkingProgAttCompGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5900; ContractWorkTimeFactorPercent; Decimal)
        {
            Caption = 'ContractWorkTimeFactorPercent';
        }
        field(5905; ContractType; Option)
        {
            Caption = 'ContractType';
            OptionCaption = ' ,own,others';
            OptionMembers = " ",own,others;
        }
        field(6000; JobType; Option)
        {
            Caption = 'JobType';
            OptionCaption = ' ,Job Description,Job Matrix';
            OptionMembers = " ","Job Description","Job Matrix";
        }
        field(6050; JobDescrJobGroup; Boolean)
        {
            Caption = 'JobDescrJobGroup';
        }
        field(6060; JobDescrRefJobGroupNo; Code[20])
        {
            Caption = 'JobDescrRefJobGroupNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job),
                                                       JobDescrJobGroup = CONST (true));
        }
        field(6061; JobDescrRefJobGroupLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobDescrRefJobGroupLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (JobDescrRefJobGroupNo));
        }
        field(6063; JobDescrRefJobGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (JobDescrRefJobGroupNo),
                                                                          "Line No." = FIELD (JobDescrRefJobGroupLineNo)));
            Caption = 'JobDescrRefJobGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6100; PropertyDimensionCode; Code[20])
        {
            Caption = 'PropertyDimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6101; PropertyDimensionValue; Code[20])
        {
            Caption = 'PropertyDimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (PropertyDimensionCode),
                                                                      DimensionValue = FIELD (PropertyDimensionValue));
        }
        field(6103; PropertyDimensionValueDescr; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (PropertyDimensionCode),
                                                                                 DimensionValue = FIELD (PropertyDimensionValue)));
            Caption = 'PropertyDimensionValueDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6104; PropertyDimensionFromDate; Date)
        {
            Caption = 'PropertyDimensionFromDate';
        }
        field(6105; PropertyDimensionToDate; Date)
        {
            Caption = 'PropertyDimensionToDate';
        }
        field(6200; Points; Integer)
        {
            Caption = 'Points';
        }
        field(6210; TaskDescription1; Text[250])
        {
            Caption = 'Task Description 1';
        }
        field(6215; TaskDescription2; Text[250])
        {
            Caption = 'Task Description 2';
        }
        field(9000; JobMatrixJobStructureType; Option)
        {
            Caption = 'JobMatrixJobStructureType';
            OptionCaption = ' ,superior to,inferior to,Top Level';
            OptionMembers = " ","superior to","inferior to","Top Level";
        }
        field(9010; JobMatrixJobNoRelated; Code[20])
        {
            Caption = 'JobMatrixJobNoRelated';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job),
                                                       JobType = FILTER (" " .. "Job Description"));
        }
        field(9011; JobMatrixJobLineNoRelated; Integer)
        {
            BlankZero = true;
            Caption = 'JobMatrixJobLineNoRelated';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (JobMatrixJobNoRelated));
        }
        field(9013; JobMatrixJobDescrRelated; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (JobMatrixJobNoRelated),
                                                                          "Line No." = FIELD (JobMatrixJobLineNoRelated)));
            Caption = 'JobMatrixJobDescrRelated';
            Editable = false;
            FieldClass = FlowField;
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
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

