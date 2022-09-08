table 5056275 "TempVisionSetup/TM"
{
    Caption = 'TempVision Setup/TM';
    Description = 'GrSetupTM';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5000; BeginOfCurrentPeriod; Date)
        {
            Caption = 'BeginOfCurrentPeriod';
        }
        field(5001; EndOfCurrentPeriod; Date)
        {
            Caption = 'EndOfCurrentPeriod';
        }
        field(5010; BeginOfCurrentYear; Date)
        {
            Caption = 'BeginOfCurrentYear';
        }
        field(5011; EndOfCurrentYear; Date)
        {
            Caption = 'EndOfCurrentYear';
        }
        field(5040; TMAccessOnlyForTMUser; Boolean)
        {
            Caption = 'TMAccessOnlyForTMUser';
        }
        field(5049; ModeTransferCGPPGroupsJobEmpl; Option)
        {
            Caption = 'ModeTransferCGPPGroupsJobEmpl';
            OptionCaption = ' ,Add new Lines,Overwrite all,Overwrite all w/o Assessments';
            OptionMembers = " ","Add new Lines","Overwrite all","Overwrite all w/o Assessments";
        }
        field(5050; DocumentsStoragePlace; Option)
        {
            Caption = 'DocumentsStoragePlace';
            OptionCaption = ' ,BLOB,Server';
            OptionMembers = " ",BLOB,Server;
        }
        field(5051; AutoTransferCGPPGroupsJobEmpl; Boolean)
        {
            Caption = 'AutoTransferCGPPGroupsJobEmpl';
        }
        field(5052; AutoDeleteCockRemLogNumDays; Integer)
        {
            Caption = 'AutoDeleteCockRemLogNumDays';
        }
        field(5053; ApplAutoUserToProcessEmplNo; Boolean)
        {
            Caption = 'ApplAutoUserToProcessEmplNo';
        }
        field(5054; ApplAutoUserToSignLeftEmplNo; Boolean)
        {
            Caption = 'ApplAutoUserToSignLeftEmplNo';
        }
        field(5055; AutoDeleteApplAttachNumDays; Integer)
        {
            Caption = 'AutoDeleteApplAttachNumDays';
        }
        field(5056; SortingApplication; Option)
        {
            Caption = 'SortingApplication';
            OptionCaption = ' ,Employee,Status,Dimension,Process where?,Entry Date,Our Interest';
            OptionMembers = " ",Employee,Status,Dimension,"Process where?","Entry Date","Our Interest";
        }
        field(5057; ApplProcessNoPrefix; Code[2])
        {
            Caption = 'ApplProcessNoPrefix';
        }
        field(5058; ApplProcessNoNumberSeries; Integer)
        {
            Caption = 'ApplProcessNoNumberSeries';
        }
        field(5059; SortingProperty; Option)
        {
            Caption = 'SortingProperty';
            OptionCaption = ' ,Ascending,Descending';
            OptionMembers = " ","Ascending","Descending";
        }
        field(5060; SortingEmployeeControl; Option)
        {
            Caption = 'SortingEmployeeControl';
            OptionCaption = ' ,Ascending,Descending,Date Ascending,Date Descending';
            OptionMembers = " ","Ascending","Descending","Date Ascending","Date Descending";
        }
        field(5061; ApplicantNoPrefix; Code[2])
        {
            Caption = 'ApplicantNoPrefix';
        }
        field(5062; ApplicantNoNumberSeries; Integer)
        {
            Caption = 'ApplicantNoNumberSeries';
        }
        field(5063; LookupInclDimensionBlocked; Boolean)
        {
            Caption = 'LookupInclDimensionBlocked';
        }
        field(5064; NumOfResourcesBalance; Option)
        {
            Caption = 'NumOfResourcesBalance';
            OptionCaption = ' ,active,total';
            OptionMembers = " ",active,total;
        }
        field(5065; EmplLineJobGroupCreate; Boolean)
        {
            Caption = 'EmplLineJobGroupCreate';
        }
        field(5066; SyncResourceModule; Boolean)
        {
            Caption = 'SyncResourceModule';
        }
        field(5067; SyncResourceGroupDimCode; Code[20])
        {
            Caption = 'SyncResourceGroupDimCode';
        }
        field(5068; CustomerParameter; Code[10])
        {
            Caption = 'CustomerParameter';
        }
        field(5069; SyncEmplFieldLineWorkflow; Boolean)
        {
            Caption = 'SyncEmplFieldLineWorkflow';
        }
        field(5070; PropertiesRunRecPointer; Boolean)
        {
            Caption = 'PropertiesRunRecPointer';
        }
        field(5071; EmployeeToDoInactive; Boolean)
        {
            Caption = 'EmployeeToDoInactive';
        }
        field(5072; DropZoneInactive; Boolean)
        {
            Caption = 'DropZoneInactive';
        }
        field(5073; AutoGenerateCompGroupByQuali; Option)
        {
            Caption = 'AutoGenerateCompGroupByQuali';
            OptionCaption = ' ,with Transfer Dimension / with Transfer from-to-Date,with Transfer Dimension / without Transfer from-to-Date,without Transfer Dimension / with Transfer from-to-Date,without Transfer Dimension / without Transfer from-to-Date';
            OptionMembers = " ","with Transfer Dimension / with Transfer from-to-Date","with Transfer Dimension / without Transfer from-to-Date","without Transfer Dimension / with Transfer from-to-Date","without Transfer Dimension / without Transfer from-to-Date";
        }
        field(5074; AutoGenerateCertificateByQuali; Option)
        {
            Caption = 'AutoGenerateCertificateByQuali';
            OptionCaption = ' ,with Transfer from-to-Date,without Transfer from-to-Date';
            OptionMembers = " ","with Transfer from-to-Date","without Transfer from-to-Date";
        }
        field(5075; AutoFillUserToAssessor; Boolean)
        {
            Caption = 'AutoFillUserToAssessor';
        }
        field(5076; AutoDeleteApplicationNumDays; Integer)
        {
            Caption = 'AutoDeleteApplicationNumDays';
        }
        field(5077; PathSourceApplicationImport; Text[250])
        {
            Caption = 'PathSourceApplicationImport';
        }
        field(5078; PathDestApplicationImport; Text[250])
        {
            Caption = 'PathDestApplicationImport';
        }
        field(5080; AutoSyncDimensionOrgForm; Boolean)
        {
            Caption = 'AutoSyncDimensionOrgForm';
        }
        field(5200; JobComplTimeLineIna; Boolean)
        {
            Caption = 'JobComplTimeLineIna';
        }
        field(5202; PositionComplTimeLineIna; Boolean)
        {
            Caption = 'PositionComplTimeLineIna';
        }
        field(5204; FunctionComplTimeLineIna; Boolean)
        {
            Caption = 'FunctionComplTimeLineIna';
        }
        field(5206; TitleComplTimeLineIna; Boolean)
        {
            Caption = 'TitleComplTimeLineIna';
        }
        field(5208; ProfessionComplTimeLineIna; Boolean)
        {
            Caption = 'ProfessionComplTimeLineIna';
        }
        field(5210; SpecialSkillComplTimeLineIna; Boolean)
        {
            Caption = 'SpecialSkillComplTimeLineIna';
        }
        field(5212; EquipmentComplTimeLineIna; Boolean)
        {
            Caption = 'EquipmentComplTimeLineIna';
        }
        field(5214; IndivPerspectComplTimeLineIna; Boolean)
        {
            Caption = 'IndivPerspectComplTimeLineIna';
        }
        field(5216; EducationComplTimeLineIna; Boolean)
        {
            Caption = 'EducationComplTimeLineIna';
        }
        field(5218; QualificationComplTimeLineIna; Boolean)
        {
            Caption = 'QualificationComplTimeLineIna';
        }
        field(5220; CertificateComplTimeLineIna; Boolean)
        {
            Caption = 'CertificateComplTimeLineIna';
        }
        field(5222; ActivityComplTimeLineIna; Boolean)
        {
            Caption = 'ActivityComplTimeLineIna';
        }
        field(5224; ContractComplTimeLineIna; Boolean)
        {
            Caption = 'ContractComplTimeLineIna';
        }
        field(5226; StatusHistoryComplTimeLineIna; Boolean)
        {
            Caption = 'StatusHistoryComplTimeLineIna';
        }
        field(5228; TaskComplTimeLineIna; Boolean)
        {
            Caption = 'TaskComplTimeLineIna';
        }
        field(5230; LanguageComplTimeLineIna; Boolean)
        {
            Caption = 'LanguageComplTimeLineIna';
        }
        field(5232; ProfExperienceComplTimeLineIna; Boolean)
        {
            Caption = 'ProfExperienceComplTimeLineIna';
        }
        field(5234; WorkingProgramComplTimeLineIna; Boolean)
        {
            Caption = 'WorkingProgramComplTimeLineIna';
        }
        field(5236; MembershipComplTimeLineIna; Boolean)
        {
            Caption = 'MembershipComplTimeLineIna';
        }
        field(5238; AwardComplTimeLineIna; Boolean)
        {
            Caption = 'AwardComplTimeLineIna';
        }
        field(5240; BudgetComplTimeLineIna; Boolean)
        {
            Caption = 'BudgetComplTimeLineIna';
        }
        field(5242; InterviewComplTimeLineIna; Boolean)
        {
            Caption = 'InterviewComplTimeLineIna';
        }
        field(5244; GeneralInfoComplTimeLineIna; Boolean)
        {
            Caption = 'GeneralInfoComplTimeLineIna';
        }
        field(5246; DimensionComplTimeLineIna; Boolean)
        {
            Caption = 'DimensionComplTimeLineIna';
        }
        field(5248; EmplRelMatrixComplTimeLineIna; Boolean)
        {
            Caption = 'EmplRelMatrixComplTimeLineIna';
        }
        field(5249; SelfServiceURL; Text[250])
        {
            Caption = 'SelfServiceURL';
        }
        field(5250; CompGoalPotNumStructureLevels; Integer)
        {
            Caption = 'CompGoalPotNumStructureLevels';
        }
        field(5251; CompGoalPotGroupDescrInactive; Boolean)
        {
            Caption = 'CompGoalPotGroupDescrInactive';
        }
        field(5252; CompGoalPotGroupDescr2Inactive; Boolean)
        {
            Caption = 'CompGoalPotGroupDescr2Inactive';
        }
        field(5253; CompGoalPotTreeDescrInactive; Boolean)
        {
            Caption = 'CompGoalPotTreeDescrInactive';
        }
        field(5254; CompGoalPotTreeDescr2Inactive; Boolean)
        {
            Caption = 'CompGoalPotTreeDescr2Inactive';
        }
        field(5255; CompGoalPotTempDescrInactive; Boolean)
        {
            Caption = 'CompGoalPotTempDescrInactive';
        }
        field(5256; CompGoalPotTempDescr2Inactive; Boolean)
        {
            Caption = 'CompGoalPotTempDescr2Inactive';
        }
        field(5257; CompGoalPotJobDescrInactive; Boolean)
        {
            Caption = 'CompGoalPotJobDescrInactive';
        }
        field(5258; CompGoalPotJobDescr2Inactive; Boolean)
        {
            Caption = 'CompGoalPotJobDescr2Inactive';
        }
        field(5259; CompGoalPotEmplDescrInactive; Boolean)
        {
            Caption = 'CompGoalPotEmplDescrInactive';
        }
        field(5260; CompGoalPotEmplDescr2Inactive; Boolean)
        {
            Caption = 'CompGoalPotEmplDescr2Inactive';
        }
        field(5261; InputAssessScaleGroupTemp; Option)
        {
            Caption = 'InputAssessScaleGroupTemp';
            OptionCaption = ' ,only Assessment Level,only Assessment Scale';
            OptionMembers = " ","only Assessment Level","only Assessment Scale";
        }
        field(5262; InputAssessScaleJobEmpl; Option)
        {
            Caption = 'InputAssessScaleJobEmpl';
            OptionCaption = ' ,only Assessment Level,only Assessment Scale';
            OptionMembers = " ","only Assessment Level","only Assessment Scale";
        }
        field(5263; DimChartNumStructureLevels; Integer)
        {
            Caption = 'DimChartNumStructureLevels';
        }
        field(5264; EmplChartNumStructureLevels; Integer)
        {
            Caption = 'EmplChartNumStructureLevels';
        }
        field(5265; JobChartNumStructureLevels; Integer)
        {
            Caption = 'JobChartNumStructureLevels';
        }
        field(5266; PropertyEmplDescrInactive; Boolean)
        {
            Caption = 'PropertyEmplDescrInactive';
        }
        field(5267; PropertyEmplDescr2Inactive; Boolean)
        {
            Caption = 'PropertyEmplDescr2Inactive';
        }
        field(5268; AssessmentLevelDescrInactive; Boolean)
        {
            Caption = 'AssessmentLevelDescrInactive';
        }
        field(5269; DateEndOfDays; Date)
        {
            Caption = 'DateEndOfDays';
        }
        field(5270; PassEndOfDays; Code[20])
        {
            Caption = 'PassEndOfDays';
        }
        field(5271; AssessorTypeInactive; Boolean)
        {
            Caption = 'AssessorTypeInactive';
        }
        field(5272; AssessorEmplNoInactive; Boolean)
        {
            Caption = 'AssessorEmplNoInactive';
        }
        field(5273; AssessorEmplNameInactive; Boolean)
        {
            Caption = 'AssessorEmplNameInactive';
        }
        field(5274; AssessDeviatingMinusInactive; Boolean)
        {
            Caption = 'AssessDeviatingMinusInactive';
        }
        field(5275; AssessNeutralInactive; Boolean)
        {
            Caption = 'AssessNeutralInactive';
        }
        field(5276; AssessDeviatingPlusInactive; Boolean)
        {
            Caption = 'AssessDeviatingPlusInactive';
        }
        field(5277; AssessDefinitionInactive; Boolean)
        {
            Caption = 'AssessDefinitionInactive';
        }
        field(5278; AssessFactorInactive; Boolean)
        {
            Caption = 'AssessFactorInactive';
        }
        field(5279; AssessRequirementTypeInactive; Boolean)
        {
            Caption = 'AssessRequirementTypeInactive';
        }
        field(5280; AssessLevelSourceInactive; Boolean)
        {
            Caption = 'AssessLevelSourceInactive';
        }
        field(5281; AssessCommentInactive; Boolean)
        {
            Caption = 'AssessCommentInactive';
        }
        field(5282; DimensionFromDateInactive; Boolean)
        {
            Caption = 'DimensionFromDateInactive';
        }
        field(5283; DimensionToDateInactive; Boolean)
        {
            Caption = 'DimensionToDateInactive';
        }
        field(5284; DimensionCodeInactive; Boolean)
        {
            Caption = 'DimensionCodeInactive';
        }
        field(5285; DimensionValueInactive; Boolean)
        {
            Caption = 'DimensionValueInactive';
        }
        field(5286; DimensionValueDescrInactive; Boolean)
        {
            Caption = 'DimensionValueDescrInactive';
        }
        field(5287; AssessmentDefaultInactive; Boolean)
        {
            Caption = 'AssessmentDefaultInactive';
        }
        field(5288; AssessorDuplicate; Boolean)
        {
            Caption = 'AssessorDuplicate';
        }
        field(5289; AssessFactorDuplicate; Boolean)
        {
            Caption = 'AssessFactorDuplicate';
        }
        field(5290; AssessRequirementTypeDuplicate; Boolean)
        {
            Caption = 'AssessRequirementTypeDuplicate';
        }
        field(5291; AssessCommentDuplicate; Boolean)
        {
            Caption = 'AssessCommentDuplicate';
        }
        field(5292; DimensionFromDateDuplicate; Boolean)
        {
            Caption = 'DimensionFromDateDuplicate';
        }
        field(5293; DimensionToDateDuplicate; Boolean)
        {
            Caption = 'DimensionToDateDuplicate';
        }
        field(5294; DimensionDuplicate; Boolean)
        {
            Caption = 'DimensionDuplicate';
        }
        field(5295; AllCGPPGroupsDuplicate; Boolean)
        {
            Caption = 'AllCGPPGroupsDuplicate';
        }
        field(5296; CompGoalPotGroupPercInactive; Boolean)
        {
            Caption = 'CompGoalPotGroupPercInactive';
        }
        field(5297; AssessPercentageInactive; Boolean)
        {
            Caption = 'AssessPercentageInactive';
        }
        field(5298; AssessResultInactive; Boolean)
        {
            Caption = 'AssessResultInactive';
        }
        field(5299; CompGoalPotEmplPercInactive; Boolean)
        {
            Caption = 'CompGoalPotEmplPercInactive';
        }
        field(5300; CompGoalPotEmplResultInactive; Boolean)
        {
            Caption = 'CompGoalPotEmplResultInactive';
        }
        field(5301; AssessCalculationModel; Option)
        {
            Caption = 'AssessCalculationModel';
            OptionCaption = ' ,Model <Factor / 10 * Percent>,Model <Factor Addition / Number Elements>';
            OptionMembers = " ","Model <Factor / 10 * Percent>","Model <Factor Addition / Number Elements>";
        }
        field(5302; AssessMarkingInactive; Boolean)
        {
            Caption = 'AssessMarkingInactive';
        }
        field(5303; AssessorDateInactive; Boolean)
        {
            Caption = 'AssessorDateInactive';
        }
        field(5304; AssessCompleteInactive; Boolean)
        {
            Caption = 'AssessCompleteInactive';
        }
        field(5305; OutputAssessQualiInterInactive; Boolean)
        {
            Caption = 'OutputAssessQualiInterInactive';
        }
        field(5306; AutoSyncQualiCardToSubPage; Boolean)
        {
            Caption = 'AutoSyncQualiCardToSubPage';
        }
        field(5307; PerformAssessLookupCompGoalPot; Boolean)
        {
            Caption = 'PerformAssessLookupCompGoalPot';
        }
        field(6500; PerformAssessCompActive; Boolean)
        {
            Caption = 'PerformAssessCompActive';
        }
        field(6501; PerformAssessCompWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformAssessCompWeighting';
        }
        field(6510; PerformAssessGoalActive; Boolean)
        {
            Caption = 'PerformAssessGoalActive';
        }
        field(6511; PerformAssessGoalWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformAssessGoalWeighting';
        }
        field(6520; PerformAssessPotentActive; Boolean)
        {
            Caption = 'PerformAssessPotentActive';
        }
        field(6521; PerformAssessPotentWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'PerformAssessPotentWeighting';
        }
        field(6530; FactorPoints; Decimal)
        {
            Caption = 'Factor Points';
            DecimalPlaces = 3 : 3;
        }
        field(6600; CompAssessProfessionActive; Boolean)
        {
            Caption = 'CompAssessProfessionActive';
        }
        field(6601; CompAssessProfessionWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessProfessionWeighting';
        }
        field(6610; CompAssessMethodActive; Boolean)
        {
            Caption = 'CompAssessMethodActive';
        }
        field(6611; CompAssessMethodWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessMethodWeighting';
        }
        field(6620; CompAssessSocialActive; Boolean)
        {
            Caption = 'CompAssessSocialActive';
        }
        field(6621; CompAssessSocialWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessSocialWeighting';
        }
        field(6630; CompAssessPersonalActive; Boolean)
        {
            Caption = 'CompAssessPersonalActive';
        }
        field(6631; CompAssessPersonalWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessPersonalWeighting';
        }
        field(6640; CompAssessLeadershipActive; Boolean)
        {
            Caption = 'CompAssessLeadershipActive';
        }
        field(6641; CompAssessLeadershipWeighting; Decimal)
        {
            BlankZero = true;
            Caption = 'CompAssessLeadershipWeighting';
        }
        field(8000; FilterLookupPropertyType1; Option)
        {
            Caption = 'FilterLookupPropertyType1';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(8001; FilterLookupPropertyType2; Option)
        {
            Caption = 'FilterLookupPropertyType2';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(8002; FilterLookupPropertyType3; Option)
        {
            Caption = 'FilterLookupPropertyType3';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(8003; FilterLookupPropertyType4; Option)
        {
            Caption = 'FilterLookupPropertyType4';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(8010; FilterLookupDimensionValue; Option)
        {
            Caption = 'FilterLookupDimensionValue';
            OptionCaption = ' ,Company,Department,Others';
            OptionMembers = " ",Company,Department,Others;
        }
        field(8048; EmplProcStatusFilterActive; Boolean)
        {
            Caption = 'EmplProcStatusFilterActive';
        }
        field(8050; EmplProcStatusFilterStd; Text[50])
        {
            Caption = 'EmplProcStatusFilterStd';
        }
        field(8052; EmplProcStatusFilterAppl; Text[50])
        {
            Caption = 'EmplProcStatusFilterAppl';
        }
        field(8100; DimensionCodeAccess1; Code[20])
        {
            Caption = 'DimensionCodeAccess1';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(8102; DimensionCodeAccessDescr1; Text[250])
        {
            CalcFormula = Lookup ("DimensionCode/TM".Description WHERE ("No." = FIELD (DimensionCodeAccess1)));
            Caption = 'DimensionCodeAccessDescr1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8105; DimensionCodeAccess2; Code[20])
        {
            Caption = 'DimensionCodeAccess2';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(8107; DimensionCodeAccessDescr2; Text[250])
        {
            CalcFormula = Lookup ("DimensionCode/TM".Description WHERE ("No." = FIELD (DimensionCodeAccess2)));
            Caption = 'DimensionCodeAccessDescr2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8110; DimensionCodeAccess3; Code[20])
        {
            Caption = 'DimensionCodeAccess3';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(8112; DimensionCodeAccessDescr3; Text[250])
        {
            CalcFormula = Lookup ("DimensionCode/TM".Description WHERE ("No." = FIELD (DimensionCodeAccess3)));
            Caption = 'DimensionCodeAccessDescr3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8115; DimensionCodeAccess4; Code[20])
        {
            Caption = 'DimensionCodeAccess4';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(8117; DimensionCodeAccessDescr4; Text[250])
        {
            CalcFormula = Lookup ("DimensionCode/TM".Description WHERE ("No." = FIELD (DimensionCodeAccess4)));
            Caption = 'DimensionCodeAccessDescr4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8400; SpecSkillLicencePropertyNo; Code[20])
        {
            Caption = 'SpecSkillLicencePropertyNo';
            TableRelation = "Property/TM"."No.";
        }
        field(8410; SpecSkillLicencePropertyLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'SpecSkillLicencePropertyLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (SpecSkillLicencePropertyNo));
        }
        field(8420; SpecSkillLicencePropertyDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (SpecSkillLicencePropertyNo),
                                                                          "Line No." = FIELD (SpecSkillLicencePropertyLineNo)));
            Caption = 'SpecSkillLicencePropertyDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8430; SpecSkillLicenceFromDate; Date)
        {
            Caption = 'SpecSkillLicenceFromDate';
        }
        field(8500; SpecSkillLicenceType; Option)
        {
            Caption = 'SpecSkillLicenceType';
            OptionCaption = ' ,Car,Truck,Coach,Stacker,Others';
            OptionMembers = " ",Car,Truck,Coach,Stacker,Others;
        }
        field(8510; SpecSkillLicenceClass; Option)
        {
            Caption = 'SpecSkillLicenceClass';
            OptionCaption = ' ,A1,A,B,C1,C,D1,D,BE,C1E,CE,D1E,DE,M,L,T';
            OptionMembers = " ",A1,A,B,C1,C,D1,D,BE,C1E,CE,D1E,DE,M,L,T;
        }
        field(8520; SpecSkillLicenceNationIssue; Code[10])
        {
            Caption = 'SpecSkillLicenceNationIssue';
            TableRelation = "Country/Region".Code;
        }
        field(8530; SpecSkillLicenceOfficeIssue; Text[30])
        {
            Caption = 'SpecSkillLicenceOfficeIssue';
        }
        field(8540; SpecSkillLicenceCheckIntMonth; Integer)
        {
            Caption = 'SpecSkillLicenceCheckIntMonth';
        }
        field(8550; SpecSkillLicenceReminderInfo1; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo1';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8560; SpecSkillLicenceReminderInfo2; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo2';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8570; SpecSkillLicenceReminderInfo3; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo3';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8580; SpecSkillLicenceReminderInfo4; Option)
        {
            Caption = 'SpecSkillLicenceReminderInfo4';
            OptionCaption = ' ,E-Mail,Hardware-Terminal,Soft-Terminal,Smart-Terminal';
            OptionMembers = " ","E-Mail","Hardware-Terminal","Soft-Terminal","Smart-Terminal";
        }
        field(8590; SpecSkillLicenceRemInfoDaysBef; Integer)
        {
            Caption = 'SpecSkillLicenceRemInfoDaysBef';
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
        field(9995; GoingUnderground; Text[10])
        {
            Caption = 'GoingUnderground';
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

