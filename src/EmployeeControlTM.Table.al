table 5056317 "EmployeeControl/TM"
{
    Caption = 'Employee Control';
    Description = 'GrEmplControl';

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
        field(5124; DimensionRefSynchronized; Boolean)
        {
            Caption = 'DimensionRefSynchronized';
        }
        field(5125; DimensionRefEmployeeTableOpt; Option)
        {
            Caption = 'DimensionRefEmployeeTableOpt';
            Editable = false;
            OptionCaption = ' ,Company,Department,Organization Unit 1,Organization Unit 2,Organization Unit 3,Organization Unit 4,Organization Unit 5,Organization Unit 6,Organization Unit 7,Organization Unit 8,Organization Unit 9,Organization Unit 10';
            OptionMembers = " ",Company,Department,"Organization Unit 1","Organization Unit 2","Organization Unit 3","Organization Unit 4","Organization Unit 5","Organization Unit 6","Organization Unit 7","Organization Unit 8","Organization Unit 9","Organization Unit 10";
        }
        field(5126; DimensionRefEmployeeTableTemp; Boolean)
        {
            Caption = 'DimensionRefEmployeeTableTemp';
        }
        field(5150; AttachmentExisting; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentExisting';
            Editable = false;
        }
        field(5180; CompGoalPotPropType; Option)
        {
            Caption = 'CompGoalPotPropType';
            OptionCaption = ' ,Competence,Goal,Potential,Property';
            OptionMembers = " ",Competence,Goal,Potential,Property;
        }
        field(5200; CompetenceGroupNo; Code[20])
        {
            Caption = 'CompetenceGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Competence));
        }
        field(5202; CompetenceGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (CompetenceGroupNo)));
            Caption = 'CompetenceGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5210; GoalGroupNo; Code[20])
        {
            Caption = 'GoalGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Goal));
        }
        field(5212; GoalGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (GoalGroupNo)));
            Caption = 'GoalGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5220; PotentialGroupNo; Code[20])
        {
            Caption = 'PotentialGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo WHERE (Type = CONST (Potential));
        }
        field(5222; PotentialGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (PotentialGroupNo)));
            Caption = 'PotentialGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5230; PropertyGroupNo; Code[20])
        {
            Caption = 'PropertyGroupNo';
            TableRelation = "PropertyGroup/TM".PropertyGroupNo;
        }
        field(5232; PropertyGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("PropertyGroup/TM".Description WHERE (PropertyGroupNo = FIELD (PropertyGroupNo)));
            Caption = 'PropertyGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5300; CompGoalPotGroupLineNo; Integer)
        {
            Caption = 'CompGoalPotGroupLineNo';
            NotBlank = true;
        }
        field(5310; RefToQualiEmplAddLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'RefToQualiEmplAddLineNo';
        }
        field(5320; ReferenceToQualiNo; Code[20])
        {
            Caption = 'ReferenceToQualiNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Qualification));
        }
        field(5321; ReferenceToQualiLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ReferenceToQualiLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ReferenceToQualiNo));
        }
        field(5323; ReferenceToQualiDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ReferenceToQualiNo),
                                                                          "Line No." = FIELD (ReferenceToQualiLineNo)));
            Caption = 'ReferenceToQualiDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5330; RefToInterviewEmplAddLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'RefToInterviewEmplAddLineNo';
        }
        field(5340; ReferenceToInterviewNo; Code[20])
        {
            Caption = 'ReferenceToInterviewNo';
            TableRelation = "EmployeeControlAdditive/TM".PropertyNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                           "Line No." = FIELD (RefToInterviewEmplAddLineNo),
                                                                           PropertyType = CONST (Interview),
                                                                           InterviewType = CONST ("Interview for Performance Assessment"));
        }
        field(5341; ReferenceToInterviewLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ReferenceToInterviewLineNo';
            TableRelation = "EmployeeControlAdditive/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("Employee No."),
                                                                               "Line No." = FIELD (RefToInterviewEmplAddLineNo),
                                                                               PropertyType = CONST (Interview),
                                                                               PropertyNo = FIELD (ReferenceToInterviewNo),
                                                                               InterviewType = CONST ("Interview for Performance Assessment"));
        }
        field(5343; ReferenceToInterviewDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ReferenceToInterviewNo),
                                                                          "Line No." = FIELD (ReferenceToInterviewLineNo)));
            Caption = 'ReferenceToInterviewDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5350; AssessmentResult; Decimal)
        {
            BlankZero = true;
            Caption = 'AssessmentResult';
        }
        field(5360; AssessmentMarking; Text[30])
        {
            Caption = 'AssessmentMarking';
        }
        field(5370; AssessmentComplete; Boolean)
        {
            Caption = 'AssessmentComplete';
        }
        field(5700; DimensionCurrentHead; Boolean)
        {
            Caption = 'DimensionCurrentHead';
        }
        field(5705; DimensionHeadFromDate; Date)
        {
            Caption = 'DimensionHeadFromDate';
        }
        field(5706; DimensionHeadToDate; Date)
        {
            Caption = 'DimensionHeadToDate';
        }
        field(5710; DimensionCurrentHeadStandIn; Boolean)
        {
            Caption = 'DimensionCurrentHeadStandIn';
        }
        field(5715; DimensionHeadStandInFromDate; Date)
        {
            Caption = 'DimensionHeadStandInFromDate';
        }
        field(5716; DimensionHeadStandInToDate; Date)
        {
            Caption = 'DimensionHeadStandInToDate';
        }
        field(5800; DimensionPriority; Integer)
        {
            Caption = 'DimensionPriority';
        }
        field(5801; DimensionMembershipPercent; Decimal)
        {
            Caption = 'DimensionMembershipPercent';
        }
        field(6000; EmployeeStructureType; Option)
        {
            Caption = 'EmployeeStructureType';
            OptionCaption = ' ,Supervisor of,Subordinate of,Top Level';
            OptionMembers = " ","Supervisor of","Subordinate of","Top Level";
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
        field(7040; OutputOfficialDocuments; Boolean)
        {
            Caption = 'OutputOfficialDocuments';
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
        field(7100; GeneralInfoTypeNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".GeneralInfoTypeNo WHERE ("No." = FIELD (PropertyNo),
                                                                        "Line No." = FIELD (PropertyLineNo)));
            Caption = 'GeneralInfoTypeNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7101; GeneralInfoTypeLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("Property/TM".GeneralInfoTypeLineNo WHERE ("No." = FIELD (PropertyNo),
                                                                            "Line No." = FIELD (PropertyLineNo)));
            Caption = 'GeneralInfoTypeLineNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7103; GeneralInfoTypeDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (GeneralInfoTypeNo),
                                                                          "Line No." = FIELD (GeneralInfoTypeLineNo)));
            Caption = 'GeneralInfoTypeDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7105; GeneralInfoDefault; Option)
        {
            CalcFormula = Lookup ("Property/TM".GeneralInfoDefault WHERE ("No." = FIELD (PropertyNo),
                                                                         "Line No." = FIELD (PropertyLineNo)));
            Caption = 'GeneralInfoDefault';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Salutation,Authority,Education Major Subject,Complaint Issue,Complaint Measure,Complaint Consequence,Disabled,Status Equipment Payment,Bookmark,Technical Communication,Incoming Documents,Outgoing Note,Functional Communikation Internal,Functional Communikation External,Interview,Reminder,Application Engagements,Application Rejections';
            OptionMembers = " ",Salutation,Authority,"Education Major Subject","Complaint Issue","Complaint Measure","Complaint Consequence",Disabled,"Status Equipment Payment",Bookmark,"Technical Communication","Incoming Documents","Outgoing Note","Functional Communikation Internal","Functional Communikation External",Interview,Reminder,"Application Engagements","Application Rejections";
        }
        field(7106; GeneralInfoClassPropertyType; Option)
        {
            CalcFormula = Lookup ("Property/TM".GeneralInfoDefault WHERE ("No." = FIELD (PropertyNo),
                                                                         "Line No." = FIELD (PropertyLineNo)));
            Caption = 'GeneralInfoClassPropertyType';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(7110; GenInfoDisabledIssueAuthority; Text[30])
        {
            Caption = 'GenInfoDisabledIssueAuthority';
        }
        field(7111; GenInfoDisabledCertNo; Text[30])
        {
            Caption = 'GenInfoDisabledCertNo';
        }
        field(7112; GenInfoDisabledCertValidFrom; Date)
        {
            Caption = 'GenInfoDisabledCertValidFrom';
        }
        field(7113; GenInfoDisabledCertValidTo; Date)
        {
            Caption = 'GenInfoDisabledCertValidTo';
        }
        field(7114; GenInfoDisabledEqual; Boolean)
        {
            Caption = 'GenInfoDisabledEqual';
        }
        field(7115; GenInfoDisabledPercent; Decimal)
        {
            Caption = 'GenInfoDisabledPercent';
        }
        field(7120; GenInfoDisabledDimCode; Code[20])
        {
            Caption = 'GenInfoDisabledDimCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(7121; GenInfoDisabledDimValue; Code[20])
        {
            Caption = 'GenInfoDisabledDimValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (GenInfoDisabledDimCode),
                                                                      DimensionValue = FIELD (GenInfoDisabledDimValue));
        }
        field(7123; GenInfoDisabledDimValueDescr; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (GenInfoDisabledDimCode),
                                                                                 DimensionValue = FIELD (GenInfoDisabledDimValue)));
            Caption = 'GenInfoDisabledDimValueDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7140; EquipPayManufacturer; Text[30])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayManufacturer WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayManufacturer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7141; EquipPayModel; Text[50])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayModel WHERE ("No." = FIELD (PropertyNo),
                                                                    "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayModel';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7142; EquipPaySerialNo; Text[50])
        {
            CalcFormula = Lookup ("Property/TM".EquipPaySerialNo WHERE ("No." = FIELD (PropertyNo),
                                                                       "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPaySerialNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7143; EquipPayLicenseNo; Text[20])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayLicenseNo WHERE ("No." = FIELD (PropertyNo),
                                                                        "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayLicenseNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7144; EquipPayInventoryNo; Text[20])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayInventoryNo WHERE ("No." = FIELD (PropertyNo),
                                                                          "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayInventoryNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7145; EquipPayPINCode; Code[10])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayPINCode WHERE ("No." = FIELD (PropertyNo),
                                                                      "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayPINCode';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7146; EquipPayPUKCode; Code[30])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayPUKCode WHERE ("No." = FIELD (PropertyNo),
                                                                      "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayPUKCode';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7147; EquipPayPINCode2; Code[10])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayPINCode2 WHERE ("No." = FIELD (PropertyNo),
                                                                       "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayPINCode2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7148; EquipPayPUKCode2; Code[30])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayPUKCode2 WHERE ("No." = FIELD (PropertyNo),
                                                                       "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayPUKCode2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7149; EquipPayFixedAssetNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayFixedAssetNo WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayFixedAssetNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Fixed Asset"."No.";
        }
        field(7150; EquipPayStatusNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayStatusNo WHERE ("No." = FIELD (PropertyNo),
                                                                       "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayStatusNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(7151; EquipPayStatusLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("Property/TM".EquipPayStatusLineNo WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayStatusLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EquipPayStatusNo));
        }
        field(7153; EquipPayStatusDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EquipPayStatusNo),
                                                                          "Line No." = FIELD (EquipPayStatusLineNo)));
            Caption = 'EquipPayStatusDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7155; EquipPayPurchaseDate; Date)
        {
            CalcFormula = Lookup ("Property/TM".EquipPayPurchaseDate WHERE ("No." = FIELD (PropertyNo),
                                                                           "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayPurchaseDate';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7156; EquipPayWarrantyExpiryDate; Date)
        {
            CalcFormula = Lookup ("Property/TM".EquipPayWarrantyExpiryDate WHERE ("No." = FIELD (PropertyNo),
                                                                                 "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayWarrantyExpiryDate';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7160; EquipPayVendorNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayVendorNo WHERE ("No." = FIELD (PropertyNo),
                                                                       "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayVendorNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = Vendor."No.";
        }
        field(7161; EquipPayVendorName; Text[50])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD (EquipPayVendorNo)));
            Caption = 'EquipPayVendorName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7170; EquipPayLocationNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".EquipPayLocationNo WHERE ("No." = FIELD (PropertyNo),
                                                                         "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayLocationNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(7171; EquipPayLocationLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("Property/TM".EquipPayLocationLineNo WHERE ("No." = FIELD (PropertyNo),
                                                                             "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayLocationLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EquipPayLocationNo));
        }
        field(7173; EquipPayLocationDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EquipPayLocationNo),
                                                                          "Line No." = FIELD (EquipPayLocationLineNo)));
            Caption = 'EquipPayLocationDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7190; EquipPayParkingArea; Text[20])
        {
            Caption = 'EquipPayParkingArea';
        }
        field(7192; EquipPayIdentKey; Text[20])
        {
            Caption = 'EquipPayIdentKey';
        }
        field(7195; EquipPayEmplNoHandingOut; Code[20])
        {
            Caption = 'EquipPayEmplNoHandingOut';
            TableRelation = "Employee/T"."No.";
        }
        field(7196; EquipPayEmplNameHandingOut; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (EquipPayEmplNoHandingOut)));
            Caption = 'EquipPayEmplNameHandingOut';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7197; EquipPayDateOfHandingOut; Date)
        {
            Caption = 'EquipPayDateOfHandingOut';
        }
        field(7200; EquipPayEmplNoApprove; Code[20])
        {
            Caption = 'EquipPayEmplNoApprove';
            TableRelation = "Employee/T"."No.";
        }
        field(7201; EquipPayEmplNameApprove; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (EquipPayEmplNoApprove)));
            Caption = 'EquipPayEmplNameApprove';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7202; EquipPayDateOfApprove; Date)
        {
            Caption = 'EquipPayDateOfApprove';
        }
        field(7205; EquipPayEmplNoTakeBack; Code[20])
        {
            Caption = 'EquipPayEmplNoTakeBack';
            TableRelation = "Employee/T"."No.";
        }
        field(7206; EquipPayEmplNameTakeBack; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (EquipPayEmplNoTakeBack)));
            Caption = 'EquipPayEmplNameTakeBack';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7207; EquipPayDateOfTakeBack; Date)
        {
            Caption = 'EquipPayDateOfTakeBack';
        }
        field(7210; EquipPayExclusiveAssignment; Boolean)
        {
            CalcFormula = Lookup ("Property/TM".EquipPayExclusiveAssignment WHERE ("No." = FIELD (PropertyNo),
                                                                                  "Line No." = FIELD (PropertyLineNo)));
            Caption = 'EquipPayExclusiveAssignment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7220; EducationInstituteNo; Code[20])
        {
            Caption = 'EducationInstituteNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Institute));
        }
        field(7221; EducationInstituteLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'EducationInstituteLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EducationInstituteNo));
        }
        field(7223; EducationInstituteDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EducationInstituteNo),
                                                                          "Line No." = FIELD (EducationInstituteLineNo)));
            Caption = 'EducationInstituteDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7230; EducationMajorSubjectNo; Code[20])
        {
            Caption = 'EducationMajorSubjectNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"),
                                                       GeneralInfoDefault = CONST ("Education Major Subject"));
        }
        field(7231; EducationMajorSubjectLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'EducationMajorSubjectLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EducationMajorSubjectNo));
        }
        field(7233; EducationMajorSubjectDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EducationMajorSubjectNo),
                                                                          "Line No." = FIELD (EducationMajorSubjectLineNo)));
            Caption = 'EducationMajorSubjectDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7240; EducationCertificateNo; Code[20])
        {
            Caption = 'EducationCertificateNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Certificate));
        }
        field(7241; EducationCertificateLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'EducationCertificateLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (EducationCertificateNo));
        }
        field(7243; EducationCertificateDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (EducationCertificateNo),
                                                                          "Line No." = FIELD (EducationCertificateLineNo)));
            Caption = 'EducationCertificateDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7300; CertificateInstituteNo; Code[20])
        {
            Caption = 'CertificateInstituteNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Institute));
        }
        field(7301; CertificateInstituteLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CertificateInstituteLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CertificateInstituteNo));
        }
        field(7303; CertificateInstituteDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CertificateInstituteNo),
                                                                          "Line No." = FIELD (CertificateInstituteLineNo)));
            Caption = 'CertificateInstituteDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7310; CertificateMajorSubjectNo; Code[20])
        {
            Caption = 'CertificateMajorSubjectNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"),
                                                       GeneralInfoDefault = CONST ("Education Major Subject"));
        }
        field(7311; CertificateMajorSubjectLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CertificateMajorSubjectLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CertificateMajorSubjectNo));
        }
        field(7313; CertificateMajorSubjectDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CertificateMajorSubjectNo),
                                                                          "Line No." = FIELD (CertificateMajorSubjectLineNo)));
            Caption = 'CertificateMajorSubjectDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7335; LanguageSkill; Option)
        {
            Caption = 'LanguageSkill';
            OptionCaption = ' ,C2 native speaker,C1 high speaking level,B2 solid speaker,B1 nearly solid speaker,A2 advanced beginner,A1 beginner';
            OptionMembers = " ","C2 native speaker","C1 high speaking level","B2 solid speaker","B1 nearly solid speaker","A2 advanced beginner","A1 beginner";
        }
        field(7400; ProfExpInternalExternal; Option)
        {
            Caption = 'ProfExpInternalExternal';
            OptionCaption = ' ,internal,external';
            OptionMembers = " ",internal,external;
        }
        field(7410; ProfExpTitleNo; Code[20])
        {
            Caption = 'ProfExpTitleNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Title));
        }
        field(7411; ProfExpTitleLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ProfExpTitleLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ProfExpTitleNo));
        }
        field(7413; ProfExpTitleDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ProfExpTitleNo),
                                                                          "Line No." = FIELD (ProfExpTitleLineNo)));
            Caption = 'ProfExpTitleDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7420; ProfExpJobNo; Code[20])
        {
            Caption = 'ProfExpJobNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job));
        }
        field(7421; ProfExpJobLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ProfExpJobLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ProfExpJobNo));
        }
        field(7423; ProfExpJobDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ProfExpJobNo),
                                                                          "Line No." = FIELD (ProfExpJobLineNo)));
            Caption = 'ProfExpJobDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7430; ProfExpPositionNo; Code[20])
        {
            Caption = 'ProfExpPositionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Position));
        }
        field(7431; ProfExpPositionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ProfExpPositionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ProfExpPositionNo));
        }
        field(7433; ProfExpPositionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ProfExpPositionNo),
                                                                          "Line No." = FIELD (ProfExpPositionLineNo)));
            Caption = 'ProfExpPositionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7440; ProfExpFunctionNo; Code[20])
        {
            Caption = 'ProfExpFunctionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Function));
        }
        field(7441; ProfExpFunctionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ProfExpFunctionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ProfExpFunctionNo));
        }
        field(7443; ProfExpFunctionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (ProfExpFunctionNo),
                                                                          "Line No." = FIELD (ProfExpFunctionLineNo)));
            Caption = 'ProfExpFunctionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7450; ProfExpCompanyName; Text[30])
        {
            Caption = 'ProfExpCompanyName';
        }
        field(7451; ProfExpEnterpriseDescription; Text[30])
        {
            Caption = 'ProfExpEnterpriseDescription';
        }
        field(7500; StatusHistEmployeeStatus; Option)
        {
            Caption = 'StatusHistEmployeeStatus';
            OptionCaption = ' ,active,inactive,terminated by employer,terminated by employee,retired,parental leave,maternity leave,terminated';
            OptionMembers = " ",active,inactive,"terminated by employer","terminated by employee",retired,"parental leave","maternity leave",terminated;
        }
        field(7510; StatusHistEmploymentDate; Date)
        {
            Caption = 'StatusHistEmploymentDate';
        }
        field(7511; StatusHistReasonEmployNo; Code[20])
        {
            Caption = 'StatusHistReasonEmployNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Reason),
                                                       ReasonType = CONST (Employment));
        }
        field(7512; StatusHistReasonEmployLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'StatusHistReasonEmployLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (StatusHistReasonEmployNo));
        }
        field(7514; StatusHistReasonEmployDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (StatusHistReasonEmployNo),
                                                                          "Line No." = FIELD (StatusHistReasonEmployLineNo)));
            Caption = 'StatusHistReasonEmployDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7520; StatusHistLeavingDate; Date)
        {
            Caption = 'StatusHistLeavingDate';
        }
        field(7521; StatusHistReasonLeaveNo; Code[20])
        {
            Caption = 'StatusHistReasonLeaveNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Reason),
                                                       ReasonType = CONST (Leaving));
        }
        field(7522; StatusHistReasonLeaveLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'StatusHistReasonLeaveLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (StatusHistReasonLeaveNo));
        }
        field(7524; StatusHistReasonLeaveDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (StatusHistReasonLeaveNo),
                                                                          "Line No." = FIELD (StatusHistReasonLeaveLineNo)));
            Caption = 'StatusHistReasonLeaveDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7530; StatusHistSeniorityDate; Date)
        {
            Caption = 'StatusHistSeniorityDate';
        }
        field(7535; StatusHistEndTimeOfProbation; Date)
        {
            Caption = 'StatusHistEndTimeOfProbation';
        }
        field(7650; MembershipType; Option)
        {
            Caption = 'MembershipType';
            OptionCaption = ' ,business,private';
            OptionMembers = " ",business,private;
        }
        field(7660; MembershipAssociation; Text[30])
        {
            Caption = 'MembershipAssociation';
        }
        field(7670; MembershipTitleNo; Code[20])
        {
            Caption = 'MembershipTitleNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Title));
        }
        field(7671; MembershipTitleLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'MembershipTitleLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (MembershipTitleNo));
        }
        field(7673; MembershipTitleDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (MembershipTitleNo),
                                                                          "Line No." = FIELD (MembershipTitleLineNo)));
            Caption = 'MembershipTitleDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7680; MembershipJobNo; Code[20])
        {
            Caption = 'MembershipJobNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job));
        }
        field(7681; MembershipJobLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'MembershipJobLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (MembershipJobNo));
        }
        field(7683; MembershipJobDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (MembershipJobNo),
                                                                          "Line No." = FIELD (MembershipJobLineNo)));
            Caption = 'MembershipJobDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7690; MembershipPositionNo; Code[20])
        {
            Caption = 'MembershipPositionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Position));
        }
        field(7691; MembershipPositionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'MembershipPositionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (MembershipPositionNo));
        }
        field(7693; MembershipPositionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (MembershipPositionNo),
                                                                          "Line No." = FIELD (MembershipPositionLineNo)));
            Caption = 'MembershipPositionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7700; MembershipFunctionNo; Code[20])
        {
            Caption = 'MembershipFunctionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Function));
        }
        field(7701; MembershipFunctionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'MembershipFunctionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (MembershipFunctionNo));
        }
        field(7703; MembershipFunctionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (MembershipFunctionNo),
                                                                          "Line No." = FIELD (MembershipFunctionLineNo)));
            Caption = 'MembershipFunctionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7710; MembershipMemberNo; Code[20])
        {
            Caption = 'Membership Member No';
        }
        field(7800; AwardEmployeeNo; Code[20])
        {
            Caption = 'AwardEmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(7801; AwardEmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (AwardEmployeeNo)));
            Caption = 'AwardEmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7805; AwardInstituteNo; Code[20])
        {
            Caption = 'AwardInstituteNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Institute));
        }
        field(7806; AwardInstituteLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AwardInstituteLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AwardInstituteNo));
        }
        field(7808; AwardInstituteDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AwardInstituteNo),
                                                                          "Line No." = FIELD (AwardInstituteLineNo)));
            Caption = 'AwardInstituteDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7810; AwardDate; Date)
        {
            Caption = 'AwardDate';
        }
        field(7850; Budget; Decimal)
        {
            BlankZero = true;
            Caption = 'Budget';
        }
        field(7870; CompensationSalaryYearly; Decimal)
        {
            BlankZero = true;
            Caption = 'CompensationSalaryYearly';
        }
        field(7871; CompensationTotalSalaryMonthly; Decimal)
        {
            BlankZero = true;
            Caption = 'CompensationTotalSalaryMonthly';
        }
        field(7872; CompensationBonus; Decimal)
        {
            BlankZero = true;
            Caption = 'CompensationBonus';
        }
        field(7873; CompensationIncentives; Decimal)
        {
            BlankZero = true;
            Caption = 'CompensationIncentives';
        }
        field(7874; CompensationHourlyWage; Decimal)
        {
            BlankZero = true;
            Caption = 'CompensationHourlyWage';
        }
        field(7875; CompensationBaseSalaryMonthly; Decimal)
        {
            BlankZero = true;
            Caption = 'CompensationBaseSalaryMonthly';
        }
        field(7900; ContractWorkTimeFactorPercent; Decimal)
        {
            BlankZero = true;
            Caption = 'ContractWorkTimeFactorPercent';
        }
        field(7905; ContractType; Option)
        {
            Caption = 'ContractType';
            OptionCaption = ' ,own,others';
            OptionMembers = " ",own,others;
        }
        field(8000; PositionLeading; Boolean)
        {
            Caption = 'PositionLeading';
        }
        field(8020; PositionFormerEmployer; Boolean)
        {
            Caption = 'PositionFormerEmployer';
        }
        field(8100; FunctionFormerEmployer; Boolean)
        {
            Caption = 'FunctionFormerEmployer';
        }
        field(8200; AttachmentRefPropertyType; Option)
        {
            Caption = 'AttachmentRefPropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Job Application';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info","Job Application";
        }
        field(8210; AttachmentRefPropertyNo; Code[20])
        {
            Caption = 'AttachmentRefPropertyNo';
            TableRelation = "Property/TM"."No.";
        }
        field(8211; AttachmentRefPropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefPropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AttachmentRefPropertyNo));
        }
        field(8213; AttachmentRefPropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AttachmentRefPropertyNo),
                                                                          "Line No." = FIELD (AttachmentRefPropertyLineNo)));
            Caption = 'AttachmentRefPropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8215; AttachmentRefEmplCtrlLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefEmplCtrlLineNo';
        }
        field(8216; AttachmentRefEmplCtrlAddLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AttachmentRefEmplCtrlAddLineNo';
        }
        field(8220; AttachmentRefCGPType; Option)
        {
            Caption = 'AttachmentRefCGPType';
            OptionCaption = ' ,Competence,Goal,Potential';
            OptionMembers = " ",Competence,Goal,Potential;
        }
        field(8230; AttachmentRefCGPGroupNo; Code[20])
        {
            Caption = 'AttachmentRefCGPGroupNo';
            TableRelation = "CompGoalPotGroup/TM".CompGoalPotGroupNo;
        }
        field(8232; AttachmentRefCGPGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("CompGoalPotGroup/TM".Description WHERE (CompGoalPotGroupNo = FIELD (AttachmentRefCGPGroupNo)));
            Caption = 'AttachmentRefCGPGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8250; AttachmentRefApplicationDocs; Boolean)
        {
            Caption = 'AttachmentRefApplicationDocs';
        }
        field(8500; JobStatusType; Option)
        {
            Caption = 'JobStatusType';
            OptionCaption = 'Job Holder,Job Candidate,Nominated';
            OptionMembers = "Job Holder","Job Candidate",Nominated;
        }
        field(8505; JobDescrJobGroup; Boolean)
        {
            CalcFormula = Lookup ("Property/TM".JobDescrJobGroup WHERE ("No." = FIELD (PropertyNo),
                                                                       "Line No." = FIELD (PropertyLineNo)));
            Caption = 'JobDescrJobGroup';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8506; JobDescrRefJobGroupNo; Code[20])
        {
            CalcFormula = Lookup ("Property/TM".JobDescrRefJobGroupNo WHERE ("No." = FIELD (PropertyNo),
                                                                            "Line No." = FIELD (PropertyLineNo)));
            Caption = 'JobDescrRefJobGroupNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8507; JobDescrRefJobGroupLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("Property/TM".JobDescrRefJobGroupLineNo WHERE ("No." = FIELD (PropertyNo),
                                                                                "Line No." = FIELD (PropertyLineNo)));
            Caption = 'JobDescrRefJobGroupLineNo';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8509; JobDescrRefJobGroupDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (JobDescrRefJobGroupNo),
                                                                          "Line No." = FIELD (JobDescrRefJobGroupLineNo)));
            Caption = 'JobDescrRefJobGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8510; JobStaffingPercent; Decimal)
        {
            Caption = 'JobStaffingPercent';
        }
        field(8520; JobPositionNo; Code[20])
        {
            Caption = 'JobPositionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Position));
        }
        field(8521; JobPositionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobPositionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (JobPositionNo));
        }
        field(8523; JobPositionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (JobPositionNo),
                                                                          "Line No." = FIELD (JobPositionLineNo)));
            Caption = 'JobPositionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8530; JobFunctionNo; Code[20])
        {
            Caption = 'JobFunctionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Function));
        }
        field(8531; JobFunctionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobFunctionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (JobFunctionNo));
        }
        field(8533; JobFunctionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (JobFunctionNo),
                                                                          "Line No." = FIELD (JobFunctionLineNo)));
            Caption = 'JobFunctionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8540; JobFormerEmployer; Text[30])
        {
            Caption = 'JobFormerEmployer';
        }
        field(8541; JobFormEmplCompanyName; Text[30])
        {
            Caption = 'JobFormEmplCompanyName';
        }
        field(8542; JobFormEmplEnterprDescr; Text[30])
        {
            Caption = 'JobFormEmplEnterprDescr';
        }
        field(8570; JobProposedByEmplNo; Code[20])
        {
            Caption = 'JobProposedByEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(8571; JobProposedByEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (JobProposedByEmplNo)));
            Caption = 'JobProposedByEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8572; JobProposedQualiLevelPercent; Option)
        {
            Caption = 'JobProposedQualiLevelPercent';
            OptionCaption = ' ,10%,20%,30%,40%,50%,60%,70%,80%,90%,100%';
            OptionMembers = " ","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%";
        }
        field(8573; JobProposedDate; Date)
        {
            Caption = 'JobProposedDate';
        }
        field(8590; JobPromotedByEmplNo; Code[20])
        {
            Caption = 'JobPromotedByEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(8591; JobPromotedByEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (JobPromotedByEmplNo)));
            Caption = 'JobPromotedByEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8592; JobPromotedQualiLevelPercent; Decimal)
        {
            Caption = 'JobPromotedQualiLevelPercent';
        }
        field(8593; JobPromotedDate; Date)
        {
            Caption = 'JobPromotedDate';
        }
        field(8610; JobAcceptedBySupervisorEmplNo; Code[20])
        {
            Caption = 'JobAcceptedBySupervisorEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(8611; JobAcceptedBySVEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (JobAcceptedBySupervisorEmplNo)));
            Caption = 'JobAcceptedBySVEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8612; JobAcceptedSVQualiLevelPercent; Decimal)
        {
            Caption = 'JobAcceptedSVQualiLevelPercent';
        }
        field(8613; JobAcceptedSVDate; Date)
        {
            Caption = 'JobAcceptedSVDate';
        }
        field(8630; JobAcceptedByJobHolderEmplNo; Code[20])
        {
            Caption = 'JobAcceptedByJobHolderEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(8631; JobAcceptedByJobHolderEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (JobAcceptedByJobHolderEmplNo)));
            Caption = 'JobAcceptedByJobHolderEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8632; JobAcceptedJHQualiLevelPercent; Decimal)
        {
            Caption = 'JobAcceptedJHQualiLevelPercent';
        }
        field(8633; JobAcceptedJHDate; Date)
        {
            Caption = 'JobAcceptedJHDate';
        }
        field(8700; JobDayObjectNo; Code[10])
        {
            Caption = 'JobDayObjectNo';
            TableRelation = "Day Object/T"."No.";
        }
        field(8701; JobDayObjectDescription; Text[50])
        {
            CalcFormula = Lookup ("Day Object/T".Description WHERE ("No." = FIELD (JobDayObjectNo)));
            Caption = 'JobDayObjectDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8800; ReasonType; Option)
        {
            CalcFormula = Lookup ("Property/TM".ReasonType WHERE ("No." = FIELD (PropertyNo),
                                                                 "Line No." = FIELD (PropertyLineNo)));
            Caption = 'ReasonType';
            FieldClass = FlowField;
            OptionCaption = ' ,Employment,Leaving,Formal Warning';
            OptionMembers = " ",Employment,Leaving,"Formal Warning";
        }
        field(9700; FavouritesPropertyType; Option)
        {
            Caption = 'FavouritesPropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info,Dimension';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info",Dimension;
        }
        field(9710; FavouritesGenInfoTypeNo; Code[20])
        {
            Caption = 'FavouritesGenInfoTypeNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info Type"));
        }
        field(9711; FavouritesGenInfoTypeLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'FavouritesGenInfoTypeLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (FavouritesGenInfoTypeNo));
        }
        field(9713; FavouritesGenInfoTypeDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (FavouritesGenInfoTypeNo),
                                                                          "Line No." = FIELD (FavouritesGenInfoTypeLineNo)));
            Caption = 'FavouritesGenInfoTypeDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9715; FavouritesGenInfoTypeDefault; Option)
        {
            Caption = 'FavouritesGenInfoTypeDefault';
            OptionCaption = ' ,Salutation,Authority,Education Major Subject,Complaint Facts,Complaint Activity,Complaint Consequence';
            OptionMembers = " ",Salutation,Authority,"Education Major Subject","Complaint Facts","Complaint Activity","Complaint Consequence";
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

