table 5056261 "UserLine/TM"
{
    Caption = 'User Line/TM';
    Description = 'GrUserLineTM';

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
        field(5010; DimensionCode1; Code[20])
        {
            Caption = 'DimensionCode1';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5011; DimensionValueFrom1; Code[20])
        {
            Caption = 'DimensionValueFrom1';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode1));
        }
        field(5013; DimensionValueFromDescr1; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode1),
                                                                                 DimensionValue = FIELD (DimensionValueFrom1)));
            Caption = 'DimensionValueFromDescr1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5020; DimensionValueTo1; Code[20])
        {
            Caption = 'DimensionValueTo1';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode1));
        }
        field(5022; DimensionValueToDescr1; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode1),
                                                                                 DimensionValue = FIELD (DimensionValueTo1)));
            Caption = 'DimensionValueToDescr1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5030; DimensionGroupNo1; Code[20])
        {
            Caption = 'DimensionGroupNo1';
            TableRelation = "DimensionGroup/TM"."No.";
        }
        field(5032; DimensionGroupDescr1; Text[250])
        {
            CalcFormula = Lookup ("DimensionGroup/TM".Description WHERE ("No." = FIELD (DimensionGroupNo1)));
            Caption = 'DimensionGroupDescr1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5040; DimensionCodeNOT1; Boolean)
        {
            Caption = 'DimensionCodeNOT1';
        }
        field(5110; DimensionCode2; Code[20])
        {
            Caption = 'DimensionCode2';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5111; DimensionValueFrom2; Code[20])
        {
            Caption = 'DimensionValueFrom2';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode2));
        }
        field(5113; DimensionValueFromDescr2; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode2),
                                                                                 DimensionValue = FIELD (DimensionValueFrom2)));
            Caption = 'DimensionValueFromDescr2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5120; DimensionValueTo2; Code[20])
        {
            Caption = 'DimensionValueTo2';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode2));
        }
        field(5122; DimensionValueToDescr2; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode2),
                                                                                 DimensionValue = FIELD (DimensionValueTo2)));
            Caption = 'DimensionValueToDescr2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5130; DimensionGroupNo2; Code[20])
        {
            Caption = 'DimensionGroupNo2';
            TableRelation = "DimensionGroup/TM"."No.";
        }
        field(5132; DimensionGroupDescr2; Text[250])
        {
            CalcFormula = Lookup ("DimensionGroup/TM".Description WHERE ("No." = FIELD (DimensionGroupNo2)));
            Caption = 'DimensionGroupDescr2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5140; DimensionCodeNOT2; Boolean)
        {
            Caption = 'DimensionCodeNOT2';
        }
        field(5150; DimensionCodeCockpit; Code[20])
        {
            Caption = 'DimensionCodeCockpit';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5151; DimensionValueFromCockpit; Code[20])
        {
            Caption = 'DimensionValueFromCockpit';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeCockpit));
        }
        field(5153; DimensionValueFromDescrCockpit; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCodeCockpit),
                                                                                 DimensionValue = FIELD (DimensionValueFromCockpit)));
            Caption = 'DimensionValueFromDescrCockpit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5160; DimensionValueToCockpit; Code[20])
        {
            Caption = 'DimensionValueToCockpit';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeCockpit));
        }
        field(5162; DimensionValueToDescrCockpit; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCodeCockpit),
                                                                                 DimensionValue = FIELD (DimensionValueToCockpit)));
            Caption = 'DimensionValueToDescrCockpit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5170; DimensionGroupNoCockpit; Code[20])
        {
            Caption = 'DimensionGroupNoCockpit';
            TableRelation = "DimensionGroup/TM"."No.";
        }
        field(5172; DimensionGroupDescrCockpit; Text[250])
        {
            CalcFormula = Lookup ("DimensionGroup/TM".Description WHERE ("No." = FIELD (DimensionGroupNoCockpit)));
            Caption = 'DimensionGroupDescrCockpit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5180; DimensionCodeNOTCockpit; Boolean)
        {
            Caption = 'DimensionCodeNOTCockpit';
        }
        field(5200; AccessOnlyOwnDataUser; Boolean)
        {
            Caption = 'AccessOnlyOwnDataUser';
        }
        field(5210; AccessOnlyOwnDataPassword; Boolean)
        {
            Caption = 'AccessOnlyOwnDataPassword';
        }
        field(5220; CockpitGeneralDeleted; Boolean)
        {
            Caption = 'CockpitGeneralDeleted';
        }
        field(5350; DimensionCodeAppl; Code[20])
        {
            Caption = 'DimensionCodeAppl';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5351; DimensionValueFromAppl; Code[20])
        {
            Caption = 'DimensionValueFromAppl';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAppl));
        }
        field(5353; DimensionValueFromDescrAppl; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCodeAppl),
                                                                                 DimensionValue = FIELD (DimensionValueFromAppl)));
            Caption = 'DimensionValueFromDescrAppl';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5360; DimensionValueToAppl; Code[20])
        {
            Caption = 'DimensionValueToAppl';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAppl));
        }
        field(5362; DimensionValueToDescrAppl; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCodeAppl),
                                                                                 DimensionValue = FIELD (DimensionValueToAppl)));
            Caption = 'DimensionValueToDescrAppl';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370; DimensionGroupNoAppl; Code[20])
        {
            Caption = 'DimensionGroupNoAppl';
            TableRelation = "DimensionGroup/TM"."No.";
        }
        field(5372; DimensionGroupDescrAppl; Text[250])
        {
            CalcFormula = Lookup ("DimensionGroup/TM".Description WHERE ("No." = FIELD (DimensionGroupNoAppl)));
            Caption = 'DimensionGroupDescrAppl';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5380; DimensionCodeNOTAppl; Boolean)
        {
            Caption = 'DimensionCodeNOTAppl';
        }
        field(6000; PageSetup; Option)
        {
            Caption = 'PageSetup';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6010; PageUser; Option)
        {
            Caption = 'PageUser';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6020; PageTableInitialization; Option)
        {
            Caption = 'PageTableInitialization';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6030; PageEmployee; Option)
        {
            Caption = 'PageEmployee';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6040; PageDimensionCodes; Option)
        {
            Caption = 'PageDimensionCodes';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6050; PageDimensionValues; Option)
        {
            Caption = 'PageDimensionValues';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6055; PageDimensionGroups; Option)
        {
            Caption = 'PageDimensionGroups';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6060; PageProperties; Option)
        {
            Caption = 'PageProperties';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6070; PageCompGoalPotStructElement; Option)
        {
            Caption = 'PageCompGoalPotStructElement';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6075; PageCompGoalPotStructTree; Option)
        {
            Caption = 'PageCompGoalPotStructTree';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6080; PageCompGoalPotAssTemp; Option)
        {
            Caption = 'PageCompGoalPotAssTemp';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6090; PageCompGoalPotPropGroups; Option)
        {
            Caption = 'PageCompGoalPotPropGroups';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6100; PageJobDescriptions; Option)
        {
            Caption = 'PageJobDescriptions';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6110; PageJobAdvertisements; Option)
        {
            Caption = 'PageJobAdvertisements';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6120; PageEmployeeControl; Option)
        {
            Caption = 'PageEmployeeControl';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6122; PageEmployeeToDo; Option)
        {
            Caption = 'PageEmployeeToDo';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6125; PageWorkflow; Option)
        {
            Caption = 'PageWorkflow';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6130; PageEmployeeApplications; Option)
        {
            Caption = 'PageEmployeeApplications';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6135; PageStatusApplications; Option)
        {
            Caption = 'PageStatusApplications';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6140; PageEmployeeComplaints; Option)
        {
            Caption = 'PageEmployeeComplaints';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6150; PageEmployeePropertyList; Option)
        {
            Caption = 'PageEmployeePropertyList';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6160; PageEmployeeAssessments; Option)
        {
            Caption = 'PageEmployeeAssessments';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6165; PageEmployeeGroups; Option)
        {
            Caption = 'PageEmployeeGroups';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6170; PageCockpitMessage; Option)
        {
            Caption = 'PageCockpitMessage';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6180; PageCockpitMessageAdmin; Option)
        {
            Caption = 'PageCockpitMessageAdmin';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6190; PageCockpitReminderProperty; Option)
        {
            Caption = 'PageCockpitReminderProperty';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6200; PageDimensionChart; Option)
        {
            Caption = 'PageDimensionChart';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6210; PageEmployeeChart; Option)
        {
            Caption = 'PageEmployeeChart';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6220; PageJobChart; Option)
        {
            Caption = 'PageJobChart';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6230; PagePropertyGenerator; Option)
        {
            Caption = 'PagePropertyGenerator';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6240; PageSoftTerminal; Option)
        {
            Caption = 'PageSoftTerminal';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6250; PageCockpitControl; Option)
        {
            Caption = 'PageCockpitControl';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6260; PageCockpitKeyData; Option)
        {
            Caption = 'PageCockpitKeyData';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6270; PageCockpitReminderEmployee; Option)
        {
            Caption = 'PageCockpitReminderEmployee';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6280; PageCockpitApplication; Option)
        {
            Caption = 'PageCockpitApplication';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6290; PageCockpitReminderEmplProp; Option)
        {
            Caption = 'PageCockpitReminderEmplProp';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6300; PageTemplateTextProcessing; Option)
        {
            Caption = 'PageTemplateTextProcessing';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6310; PagePeriodEnd; Option)
        {
            Caption = 'PagPeriodEnd';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6320; PageLicenceCheck; Option)
        {
            Caption = 'PageLicenceCheck';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6500; PropJob; Option)
        {
            Caption = 'PropJob';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6510; PropJobMatrix; Option)
        {
            Caption = 'PropJobMatrix';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6520; PropPosition; Option)
        {
            Caption = 'PropPosition';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6530; PropFunction; Option)
        {
            Caption = 'PropFunction';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6540; PropTask; Option)
        {
            Caption = 'PropTask';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6550; PropActivity; Option)
        {
            Caption = 'PropActivity';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6560; PropContract; Option)
        {
            Caption = 'PropContract';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6570; PropStatusHistory; Option)
        {
            Caption = 'PropStatusHistory';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6580; PropEquipmentPayment; Option)
        {
            Caption = 'PropEquipmentPayment';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6590; PropFavourites; Option)
        {
            Caption = 'PropFavourites';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6600; PropGeneralInfoType; Option)
        {
            Caption = 'PropGeneralInfoType';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6610; PropGeneralInfo; Option)
        {
            Caption = 'PropGeneralInfo';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6620; PropTemplate; Option)
        {
            Caption = 'PropTemplate';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6630; PropAttachment; Option)
        {
            Caption = 'PropAttachment';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6640; PropInterview; Option)
        {
            Caption = 'PropInterview';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6650; PropQualification; Option)
        {
            Caption = 'PropQualification';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6660; PropEducation; Option)
        {
            Caption = 'PropEducation';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6670; PropWorkingProgram; Option)
        {
            Caption = 'PropWorkingProgram';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6680; PropProfession; Option)
        {
            Caption = 'PropProfession';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6690; PropProfessionalExperience; Option)
        {
            Caption = 'PropProfessionalExperience';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6700; PropTitle; Option)
        {
            Caption = 'PropTitle';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6710; PropSpecialSkillProject; Option)
        {
            Caption = 'PropSpecialSkillProject';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6720; PropCertificate; Option)
        {
            Caption = 'PropCertificate';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6730; PropAward; Option)
        {
            Caption = 'PropAward';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6740; PropInstitute; Option)
        {
            Caption = 'PropInstitute';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6750; PropMembership; Option)
        {
            Caption = 'PropMembership';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6760; PropIndividualPerspective; Option)
        {
            Caption = 'PropIndividualPerspective';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6770; PropDenomination; Option)
        {
            Caption = 'PropDenomination';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6780; PropLanguage; Option)
        {
            Caption = 'PropLanguage';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6790; PropBudgetCompensation; Option)
        {
            Caption = 'PropBudgetCompensation';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6800; PropLocation; Option)
        {
            Caption = 'PropLocation';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6810; PropReason; Option)
        {
            Caption = 'PropReason';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(6820; PropAssessmentLevel; Option)
        {
            Caption = 'PropAssessmentLevel';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7000; EmplAll; Option)
        {
            Caption = 'EmplAll';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7010; EmplFavourites; Option)
        {
            Caption = 'EmplFavourites';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7020; EmplDimension; Option)
        {
            Caption = 'EmplDimension';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7030; EmplJob; Option)
        {
            Caption = 'EmplJob';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7040; EmplRelationMatrix; Option)
        {
            Caption = 'EmplRelationMatrix';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7050; EmplPosition; Option)
        {
            Caption = 'EmplPosition';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7060; EmplFunction; Option)
        {
            Caption = 'EmplFunction';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7070; EmplTask; Option)
        {
            Caption = 'EmplTask';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7080; EmplActivity; Option)
        {
            Caption = 'EmplActivity';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7090; EmplContract; Option)
        {
            Caption = 'EmplContract';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7100; EmplStatusHistory; Option)
        {
            Caption = 'EmplStatusHistory';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7110; EmplEquipmentPayment; Option)
        {
            Caption = 'EmplEquipmentPayment';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7120; EmplLanguage; Option)
        {
            Caption = 'EmplLanguage';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7130; EmplReason; Option)
        {
            Caption = 'EmplReason';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7140; EmplGeneralInfo; Option)
        {
            Caption = 'EmplGeneralInfo';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7150; EmplBudgetCompensation; Option)
        {
            Caption = 'EmplBudgetCompensation';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7160; EmplAttachment; Option)
        {
            Caption = 'EmplAttachment';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7165; EmplAttachmentApplication; Option)
        {
            Caption = 'EmplAttachmentApplication';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7170; EmplInterview; Option)
        {
            Caption = 'EmplInterview';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7180; EmplQualification; Option)
        {
            Caption = 'EmplQualification';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7190; EmplEducation; Option)
        {
            Caption = 'EmplEducation';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7200; EmplWorkingProgram; Option)
        {
            Caption = 'EmplWorkingProgram';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7210; EmplProfession; Option)
        {
            Caption = 'EmplProfession';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7220; EmplProfessionalExperience; Option)
        {
            Caption = 'EmplProfessionalExperience';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7230; EmplTitle; Option)
        {
            Caption = 'EmplTitle';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7240; EmplSpecialSkillProject; Option)
        {
            Caption = 'EmplSpecialSkillProject';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7250; EmplCertificate; Option)
        {
            Caption = 'EmplCertificate';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7260; EmplAward; Option)
        {
            Caption = 'EmplAward';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7280; EmplMembership; Option)
        {
            Caption = 'EmplMembership';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7290; EmplIndividualPerspective; Option)
        {
            Caption = 'EmplIndividualPerspective';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7310; EmplCompetenceGroup; Option)
        {
            Caption = 'EmplCompetenceGroup';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7320; EmplGoalGroup; Option)
        {
            Caption = 'EmplGoalGroup';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7330; EmplPotentialGroup; Option)
        {
            Caption = 'EmplPotentialGroup';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7335; EmplPropertyGroup; Option)
        {
            Caption = 'EmplPropertyGroup';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7340; EmplSetup; Option)
        {
            Caption = 'EmplSetup';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7350; EmplAssessmentSum; Option)
        {
            Caption = 'EmplAssessmentSum';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(7360; EmplHistory; Option)
        {
            Caption = 'EmplHistory';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8000; RepVacationList; Option)
        {
            Caption = 'RepVacationList';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8010; RepRemainingVacationList; Option)
        {
            Caption = 'RepRemainingVacationList';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8020; RepAbsencesCalendar; Option)
        {
            Caption = 'RepAbsencesCalendar';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8030; RepAbsencesMonthlyOverview; Option)
        {
            Caption = 'RepAbsencesMonthlyOverview';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8040; RepAbsencesAnnualOverview; Option)
        {
            Caption = 'RepAbsencesAnnualOverview';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8050; RepTimeAccountPeriodic; Option)
        {
            Caption = 'RepTimeAccountPeriodic';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8060; RepBirthdayList; Option)
        {
            Caption = 'RepBirthdayList';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(8070; RepEmployeeScoreCard; Option)
        {
            Caption = 'RepEmployeeScoreCard';
            OptionCaption = 'read/write,read,blocked';
            OptionMembers = "read/write",read,blocked;
        }
        field(9000; CompGoalPotAll; Boolean)
        {
            Caption = 'CompGoalPotAll';
        }
        field(9010; CompGoalPotCurrentPeriod; Boolean)
        {
            Caption = 'CompGoalPotCurrentPeriod';
        }
        field(9020; CompGoalPotEvaluationTarget; Boolean)
        {
            Caption = 'CompGoalPotEvaluationTarget';
        }
        field(9030; CompGoalPotTargetScaleMax; Boolean)
        {
            Caption = 'CompGoalPotTargetScaleMax';
        }
        field(9040; CompGoalPotTargetScaleNum; Integer)
        {
            Caption = 'CompGoalPotTargetScaleNum';
        }
        field(9050; CompGoalPotPerformAssessment; Boolean)
        {
            Caption = 'CompGoalPotPerformAssessment';
        }
        field(9060; CompGoalPotAssessScaleMax; Boolean)
        {
            Caption = 'CompGoalPotAssessScaleMax';
        }
        field(9070; CompGoalPotAssessScaleNum; Integer)
        {
            Caption = 'CompGoalPotAssessScaleNum';
        }
        field(9100; PropertyAll; Boolean)
        {
            Caption = 'PropertyAll';
        }
        field(9110; PropertyCurrentPeriod; Boolean)
        {
            Caption = 'PropertyCurrentPeriod';
        }
        field(9120; PropertyEvaluationTarget; Boolean)
        {
            Caption = 'PropertyEvaluationTarget';
        }
        field(9130; PropertyTargetScaleMax; Boolean)
        {
            Caption = 'PropertyTargetScaleMax';
        }
        field(9140; PropertyTargetScaleNum; Integer)
        {
            Caption = 'PropertyTargetScaleNum';
        }
        field(9150; PropertyPerformAssessment; Boolean)
        {
            Caption = 'PropertyPerformAssessment';
        }
        field(9160; PropertyAssessScaleMax; Boolean)
        {
            Caption = 'PropertyAssessScaleMax';
        }
        field(9170; PropertyAssessScaleNum; Integer)
        {
            Caption = 'PropertyAssessScaleNum';
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

