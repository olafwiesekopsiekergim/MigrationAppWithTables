table 5056429 "SetupCockpit/TM"
{
    Caption = 'Setup Cockpit';
    Description = 'GrSetupCock';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(5000; INSenderEmployeeNo; Boolean)
        {
            Caption = 'INSenderEmployeeNo';
        }
        field(5001; INSenderEmployeeName; Boolean)
        {
            Caption = 'INSenderEmployeeName';
        }
        field(5002; INSenderCreatedDate; Boolean)
        {
            Caption = 'INSenderCreatedDate';
        }
        field(5003; INSenderCreatedTime; Boolean)
        {
            Caption = 'INSenderCreatedTime';
        }
        field(5004; INSenderMessage; Boolean)
        {
            Caption = 'INSenderMessage';
        }
        field(5005; INSenderPriority; Boolean)
        {
            Caption = 'INSenderPriority';
        }
        field(5006; INSenderToFinishToDate; Boolean)
        {
            Caption = 'INSenderToFinishToDate';
        }
        field(5007; INSenderToFinishToTime; Boolean)
        {
            Caption = 'INSenderToFinishToTime';
        }
        field(5008; INRecipientProcessingType; Boolean)
        {
            Caption = 'INRecipientProcessingType';
        }
        field(5009; INRecipientRead; Boolean)
        {
            Caption = 'INRecipientRead';
        }
        field(5010; INRecipientInProcessing; Boolean)
        {
            Caption = 'INRecipientInProcessing';
        }
        field(5011; INRecipientComment; Boolean)
        {
            Caption = 'INRecipientComment';
        }
        field(5012; INRecipientFinished; Boolean)
        {
            Caption = 'INRecipientFinished';
        }
        field(5013; INRecipientDeleted; Boolean)
        {
            Caption = 'INRecipientDeleted';
        }
        field(5014; INRecipientDeletedShown; Boolean)
        {
            Caption = 'INRecipientDeletedShown';
        }
        field(5015; INRecipientAutoCreateMessage; Boolean)
        {
            Caption = 'INRecipientAutoCreateMessage';
        }
        field(5016; INProcessingEmployeeNo; Boolean)
        {
            Caption = 'INProcessingEmployeeNo';
        }
        field(5017; INProcessingEmployeeName; Boolean)
        {
            Caption = 'INProcessingEmployeeName';
        }
        field(5100; OUTRecipientEmployeeNo; Boolean)
        {
            Caption = 'OUTRecipientEmployeeNo';
        }
        field(5101; OUTSenderProcessingType; Boolean)
        {
            Caption = 'OUTSenderProcessingType';
        }
        field(5102; OUTSenderCreatedDate; Boolean)
        {
            Caption = 'OUTSenderCreatedDate';
        }
        field(5103; OUTSenderCreatedTime; Boolean)
        {
            Caption = 'OUTSenderCreatedTime';
        }
        field(5104; OUTSenderMessage; Boolean)
        {
            Caption = 'OUTSenderMessage';
        }
        field(5105; OUTSenderPriority; Boolean)
        {
            Caption = 'OUTSenderPriority';
        }
        field(5106; OUTSenderToFinishToDate; Boolean)
        {
            Caption = 'OUTSenderToFinishToDate';
        }
        field(5107; OUTSenderToFinishToTime; Boolean)
        {
            Caption = 'OUTSenderToFinishToTime';
        }
        field(5108; OUTRecipientEmployeeName; Boolean)
        {
            Caption = 'OUTRecipientEmployeeName';
        }
        field(5109; OUTRecipientRead; Boolean)
        {
            Caption = 'OUTRecipientRead';
        }
        field(5110; OUTRecipientInProcessing; Boolean)
        {
            Caption = 'OUTRecipientInProcessing';
        }
        field(5111; OUTRecipientComment; Boolean)
        {
            Caption = 'OUTRecipientComment';
        }
        field(5112; OUTRecipientFinished; Boolean)
        {
            Caption = 'OUTRecipientFinished';
        }
        field(5113; OUTRecipientDeleted; Boolean)
        {
            Caption = 'OUTRecipientDeleted';
        }
        field(5114; OUTRecipientDeletedShown; Boolean)
        {
            Caption = 'OUTRecipientDeletedShown';
        }
        field(5200; REProcessingEmployeeNo; Boolean)
        {
            Caption = 'REProcessingEmployeeNo';
        }
        field(5201; REProcessingEmployeeName; Boolean)
        {
            Caption = 'REProcessingEmployeeName';
        }
        field(5202; REEmployeeDateType; Boolean)
        {
            Caption = 'REEmployeeDateType';
        }
        field(5203; REEmployeeDatePriority; Boolean)
        {
            Caption = 'REEmployeeDatePriority';
        }
        field(5204; REEmployeeDateCheck; Boolean)
        {
            Caption = 'REEmployeeDateCheck';
        }
        field(5205; REEmployeeDateYears; Boolean)
        {
            Caption = 'REEmployeeDateYears';
        }
        field(5206; REEmployeeDateComment; Boolean)
        {
            Caption = 'REEmployeeDateComment';
        }
        field(5207; RERecipient1EmployeeNo; Boolean)
        {
            Caption = 'RERecipient1EmployeeNo';
        }
        field(5208; RERecipient1EmployeeName; Boolean)
        {
            Caption = 'RERecipient1EmployeeName';
        }
        field(5209; RERecipient2EmployeeNo; Boolean)
        {
            Caption = 'RERecipient2EmployeeNo';
        }
        field(5210; RERecipient2EmployeeName; Boolean)
        {
            Caption = 'RERecipient2EmployeeName';
        }
        field(5211; RERecipientAutoCreateMessage; Boolean)
        {
            Caption = 'RERecipientAutoCreateMessage';
        }
        field(5212; RECockpitToDoNo; Boolean)
        {
            Caption = 'RECockpitToDoNo';
        }
        field(5213; REShowToday; Boolean)
        {
            Caption = 'REShowToday';
        }
        field(5214; REShowPastInterval3; Boolean)
        {
            Caption = 'REShowPastInterval3';
        }
        field(5215; REShowPastInterval2; Boolean)
        {
            Caption = 'REShowPastInterval2';
        }
        field(5216; REShowPastInterval1; Boolean)
        {
            Caption = 'REShowPastInterval1';
        }
        field(5217; REShowFutureInterval1; Boolean)
        {
            Caption = 'REShowFutureInterval1';
        }
        field(5218; REShowFutureInterval2; Boolean)
        {
            Caption = 'REShowFutureInterval2';
        }
        field(5219; REShowFutureInterval3; Boolean)
        {
            Caption = 'REShowFutureInterval3';
        }
        field(5220; REGeneralDeleted; Boolean)
        {
            Caption = 'REGeneralDeleted';
        }
        field(5221; REUserOnlyDeleted; Boolean)
        {
            Caption = 'REUserOnlyDeleted';
        }
        field(5300; RPRecipient1EmployeeNo; Boolean)
        {
            Caption = 'RPRecipient1EmployeeNo';
        }
        field(5301; RPRecipient1EmployeeName; Boolean)
        {
            Caption = 'RPRecipient1EmployeeName';
        }
        field(5302; RPRecipient2EmployeeNo; Boolean)
        {
            Caption = 'RPRecipient2EmployeeNo';
        }
        field(5303; RPRecipient2EmployeeName; Boolean)
        {
            Caption = 'RPRecipient2EmployeeName';
        }
        field(5304; RPRecipientAutoCreateMessage; Boolean)
        {
            Caption = 'RPRecipientAutoCreateMessage';
        }
        field(5305; RPPropertyType; Boolean)
        {
            Caption = 'RPPropertyType';
        }
        field(5306; RPPropertySubType; Boolean)
        {
            Caption = 'RPPropertySubType';
        }
        field(5307; RPPropertyPriority; Boolean)
        {
            Caption = 'RPPropertyPriority';
        }
        field(5308; RPPropertyNo; Boolean)
        {
            Caption = 'RPPropertyNo';
        }
        field(5309; RPPropertyLineNo; Boolean)
        {
            Caption = 'RPPropertyLineNo';
        }
        field(5310; RPPropertyDescr; Boolean)
        {
            Caption = 'RPPropertyDescr';
        }
        field(5311; RPPropertyDateCheck; Boolean)
        {
            Caption = 'RPPropertyDateCheck';
        }
        field(5312; RPPropertyComment; Boolean)
        {
            Caption = 'RPPropertyComment';
        }
        field(5313; RPCockpitToDoNo; Boolean)
        {
            Caption = 'RPCockpitToDoNo';
        }
        field(5314; RPShowToday; Boolean)
        {
            Caption = 'RPShowToday';
        }
        field(5315; RPShowPastInterval3; Boolean)
        {
            Caption = 'RPShowPastInterval3';
        }
        field(5316; RPShowPastInterval2; Boolean)
        {
            Caption = 'RPShowPastInterval2';
        }
        field(5317; RPShowPastInterval1; Boolean)
        {
            Caption = 'RPShowPastInterval1';
        }
        field(5318; RPShowFutureInterval1; Boolean)
        {
            Caption = 'RPShowFutureInterval1';
        }
        field(5319; RPShowFutureInterval2; Boolean)
        {
            Caption = 'RPShowFutureInterval2';
        }
        field(5320; RPShowFutureInterval3; Boolean)
        {
            Caption = 'RPShowFutureInterval3';
        }
        field(5321; RPGeneralDeleted; Boolean)
        {
            Caption = 'RPGeneralDeleted';
        }
        field(5322; RPUserOnlyDeleted; Boolean)
        {
            Caption = 'RPUserOnlyDeleted';
        }
        field(5400; REPProcessingEmployeeNo; Boolean)
        {
            Caption = 'REPProcessingEmployeeNo';
        }
        field(5401; REPProcessingEmployeeName; Boolean)
        {
            Caption = 'REPProcessingEmployeeName';
        }
        field(5402; REPRecipient1EmployeeNo; Boolean)
        {
            Caption = 'REPRecipient1EmployeeNo';
        }
        field(5403; REPRecipient1EmployeeName; Boolean)
        {
            Caption = 'REPRecipient1EmployeeName';
        }
        field(5404; REPRecipient2EmployeeNo; Boolean)
        {
            Caption = 'REPRecipient2EmployeeNo';
        }
        field(5405; REPRecipient2EmployeeName; Boolean)
        {
            Caption = 'REPRecipient2EmployeeName';
        }
        field(5406; REPRecipientAutoCreateMessage; Boolean)
        {
            Caption = 'REPRecipientAutoCreateMessage';
        }
        field(5407; REPPropertyType; Boolean)
        {
            Caption = 'REPPropertyType';
        }
        field(5408; REPPropertySubType; Boolean)
        {
            Caption = 'REPPropertySubType';
        }
        field(5409; REPPropertyPriority; Boolean)
        {
            Caption = 'REPPropertyPriority';
        }
        field(5410; REPPropertyNo; Boolean)
        {
            Caption = 'REPPropertyNo';
        }
        field(5411; REPPropertyLineNo; Boolean)
        {
            Caption = 'REPPropertyLineNo';
        }
        field(5412; REPPropertyDescr; Boolean)
        {
            Caption = 'REPPropertyDescr';
        }
        field(5413; REPPropertyDateCheck; Boolean)
        {
            Caption = 'REPPropertyDateCheck';
        }
        field(5414; REPPropertyComment; Boolean)
        {
            Caption = 'REPPropertyComment';
        }
        field(5415; REPCockpitToDoNo; Boolean)
        {
            Caption = 'REPCockpitToDoNo';
        }
        field(5416; REPShowToday; Boolean)
        {
            Caption = 'REPShowToday';
        }
        field(5417; REPShowPastInterval3; Boolean)
        {
            Caption = 'REPShowPastInterval3';
        }
        field(5418; REPShowPastInterval2; Boolean)
        {
            Caption = 'REPShowPastInterval2';
        }
        field(5419; REPShowPastInterval1; Boolean)
        {
            Caption = 'REPShowPastInterval1';
        }
        field(5420; REPShowFutureInterval1; Boolean)
        {
            Caption = 'REPShowFutureInterval1';
        }
        field(5421; REPShowFutureInterval2; Boolean)
        {
            Caption = 'REPShowFutureInterval2';
        }
        field(5422; REPShowFutureInterval3; Boolean)
        {
            Caption = 'REPShowFutureInterval3';
        }
        field(5423; REPGeneralDeleted; Boolean)
        {
            Caption = 'REPGeneralDeleted';
        }
        field(5424; REPUserOnlyDeleted; Boolean)
        {
            Caption = 'REPUserOnlyDeleted';
        }
        field(6000; ProcessingType; Boolean)
        {
            Caption = 'ProcessingType';
        }
        field(6001; ApplicationEmployeeNo; Boolean)
        {
            Caption = 'ApplicationEmployeeNo';
        }
        field(6002; ApplicationLineNo; Boolean)
        {
            Caption = 'ApplicationLineNo';
        }
        field(6003; ApplicationEmployeeName; Boolean)
        {
            Caption = 'ApplicationEmployeeName';
        }
        field(6004; ApplicationProcessNo; Boolean)
        {
            Caption = 'ApplicationProcessNo';
        }
        field(6005; ApplicationProcessDescription; Boolean)
        {
            Caption = 'ApplicationProcessDescription';
        }
        field(6006; ApplicationDateCheck; Boolean)
        {
            Caption = 'ApplicationDateCheck';
        }
        field(6007; DimensionCode; Boolean)
        {
            Caption = 'DimensionCode';
        }
        field(6008; DimensionValue; Boolean)
        {
            Caption = 'DimensionValue';
        }
        field(6009; DimensionValueDescription; Boolean)
        {
            Caption = 'DimensionValueDescription';
        }
        field(6010; Comment; Boolean)
        {
            Caption = 'Comment';
        }
        field(6011; Type; Boolean)
        {
            Caption = 'Type';
        }
        field(6012; EntryDate; Boolean)
        {
            Caption = 'EntryDate';
        }
        field(6013; JobAdvertNo; Boolean)
        {
            Caption = 'JobAdvertNo';
        }
        field(6014; JobAdvertLineNo; Boolean)
        {
            Caption = 'JobAdvertLineNo';
        }
        field(6015; JobAdvertDescr; Boolean)
        {
            Caption = 'JobAdvertDescr';
        }
        field(6016; SpeculativeJobDescrNo; Boolean)
        {
            Caption = 'SpeculativeJobDescrNo';
        }
        field(6017; SpeculativeJobDescrLineNo; Boolean)
        {
            Caption = 'SpeculativeJobDescrLineNo';
        }
        field(6018; SpeculativeJobDescrDescr; Boolean)
        {
            Caption = 'SpeculativeJobDescrDescr';
        }
        field(6019; AptitudeDegreeAssLevelNo; Boolean)
        {
            Caption = 'AptitudeDegreeAssLevelNo';
        }
        field(6020; AptitudeDegreeAssLevelLineNo; Boolean)
        {
            Caption = 'AptitudeDegreeAssLevelLineNo';
        }
        field(6021; AptitudeDegreeAssLevelDescr; Boolean)
        {
            Caption = 'AptitudeDegreeAssLevelDescr';
        }
        field(6022; OurInterestEngAssLevelNo; Boolean)
        {
            Caption = 'OurInterestEngAssLevelNo';
        }
        field(6023; OurInterestEngAssLevelLineNo; Boolean)
        {
            Caption = 'OurInterestEngAssLevelLineNo';
        }
        field(6024; OurInterestEngAssLevelDescr; Boolean)
        {
            Caption = 'OurInterestEngAssLevelDescr';
        }
        field(6025; CurrentProcessingStatus; Boolean)
        {
            Caption = 'CurrentProcessingStatus';
        }
        field(6026; CurrentProcessingStatusPerDate; Boolean)
        {
            Caption = 'CurrentProcessingStatusPerDate';
        }
        field(6027; WhereIsTheProcessEmplGrpNo; Boolean)
        {
            Caption = 'EmployeeGroupNo';
        }
        field(6028; WhereIsTheProcessEmplGrpDescr; Boolean)
        {
            Caption = 'EmployeeGroupDescr';
        }
        field(6029; WhereIsTheProcessFromWhen; Boolean)
        {
            Caption = 'WhereIsTheProcessFromWhen';
        }
        field(6030; CurrentTendencyAssLevelNo; Boolean)
        {
            Caption = 'CurrentTendencyAssLevelNo';
        }
        field(6031; CurrentTendencyAssLevelLineNo; Boolean)
        {
            Caption = 'CurrentTendencyAssLevelLineNo';
        }
        field(6032; CurrentTendencyAssLevelDescr; Boolean)
        {
            Caption = 'CurrentTendencyAssLevelDescr';
        }
        field(6033; DateReminder; Boolean)
        {
            Caption = 'DateReminder';
        }
        field(6034; FeedbackExpectedToDate; Boolean)
        {
            Caption = 'FeedbackExpectedToDate';
        }
        field(6035; ShowToday; Boolean)
        {
            Caption = 'ShowToday';
        }
        field(6036; ShowPastInterval3; Boolean)
        {
            Caption = 'ShowPastInterval3';
        }
        field(6037; ShowPastInterval2; Boolean)
        {
            Caption = 'ShowPastInterval2';
        }
        field(6038; ShowPastInterval1; Boolean)
        {
            Caption = 'ShowPastInterval1';
        }
        field(6039; ShowFutureInterval1; Boolean)
        {
            Caption = 'ShowFutureInterval1';
        }
        field(6040; ShowFutureInterval2; Boolean)
        {
            Caption = 'ShowFutureInterval2';
        }
        field(6041; ShowFutureInterval3; Boolean)
        {
            Caption = 'ShowFutureInterval3';
        }
        field(9300; RemSortingEmplProperty; Option)
        {
            Caption = 'RemSortingEmplProperty';
            OptionCaption = ' ,Type/No/Date/Prio,Type/No/Prio/Date,Type/Prio/No/Date,Type/Prio/Date/No,Type/Date/No/Prio,Type/Date/Prio/No,No/Type/Prio/Date,No/Type/Date/Prio,No/Prio/Type/Date,No/Prio/Date/Type,No/Date/Type/Prio,No/Date/Prio/Type,Prio/Type/No/Date,Prio/Type/Date/No,Prio/No/Type/Date,Prio/No/Date/Type,Prio/Date/Type/No,Prio/Date/No/Type,Date/Type/No/Prio,Date/Type/Prio/No,Date/No/Type/Prio,Date/No/Prio/Type,Date/Prio/Type/No,Date/Prio/No/Type';
            OptionMembers = " ","Type/No/Date/Prio","Type/No/Prio/Date","Type/Prio/No/Date","Type/Prio/Date/No","Type/Date/No/Prio","Type/Date/Prio/No","No/Type/Prio/Date","No/Type/Date/Prio","No/Prio/Type/Date","No/Prio/Date/Type","No/Date/Type/Prio","No/Date/Prio/Type","Prio/Type/No/Date","Prio/Type/Date/No","Prio/No/Type/Date","Prio/No/Date/Type","Prio/Date/Type/No","Prio/Date/No/Type","Date/Type/No/Prio","Date/Type/Prio/No","Date/No/Type/Prio","Date/No/Prio/Type","Date/Prio/Type/No","Date/Prio/No/Type";
        }
        field(9310; RemFilterEStatActive; Boolean)
        {
            Caption = 'RemFilterEStatActive';
        }
        field(9312; RemFilterEStatParental; Boolean)
        {
            Caption = 'RemFilterEStatParental';
        }
        field(9314; RemFilterEStatMaternity; Boolean)
        {
            Caption = 'RemFilterEStatMaternity';
        }
        field(9320; RemFilterEmplEmpl; Boolean)
        {
            Caption = 'RemFilterEmplEmpl';
        }
        field(9322; RemFilterEmplSub; Boolean)
        {
            Caption = 'RemFilterEmplSub';
        }
        field(9324; RemFilterEmplLeased; Boolean)
        {
            Caption = 'RemFilterEmplLeased';
        }
        field(9326; RemFilterEmplAppl; Boolean)
        {
            Caption = 'RemFilterEmplAppl';
        }
        field(9328; RemFilterEmplService; Boolean)
        {
            Caption = 'RemFilterEmplService';
        }
        field(9330; RemFilterEmplTrainee; Boolean)
        {
            Caption = 'RemFilterEmplTrainee';
        }
        field(9332; RemFilterEmplAppr; Boolean)
        {
            Caption = 'RemFilterEmplAppr';
        }
        field(9334; RemFilterEmplStud; Boolean)
        {
            Caption = 'RemFilterEmplStud';
        }
        field(9336; RemFilterEmplIndi; Boolean)
        {
            Caption = 'RemFilterEmplIndi';
        }
        field(9400; AbsDayPlannedTAGroup; Code[10])
        {
            Caption = 'AbsDayPlannedTAGroup';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(9405; AbsDayUnplannedTAGroup; Code[10])
        {
            Caption = 'AbsDayUnplannedTAGroup';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(9410; AbsDayIndiv1TAGroup; Code[10])
        {
            Caption = 'AbsDayIndiv1TAGroup';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(9415; AbsDayIndiv2TAGroup; Code[10])
        {
            Caption = 'AbsDayIndiv2TAGroup';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(9440; FilterEmplStatusActive; Boolean)
        {
            Caption = 'FilterEmplStatusActive';
        }
        field(9442; FilterEmplStatusParental; Boolean)
        {
            Caption = 'FilterEmplStatusParental';
        }
        field(9444; FilterEmplStatusMaternity; Boolean)
        {
            Caption = 'FilterEmplStatusMaternity';
        }
        field(9450; NumEmplTotalFiltEmpl; Boolean)
        {
            Caption = 'NumEmplTotalFiltEmpl';
        }
        field(9452; NumEmplTotalFiltSub; Boolean)
        {
            Caption = 'NumEmplTotalFiltSub';
        }
        field(9454; NumEmplTotalFiltLeased; Boolean)
        {
            Caption = 'NumEmplTotalFiltLeased';
        }
        field(9456; NumEmplTotalFiltAppl; Boolean)
        {
            Caption = 'NumEmplTotalFiltAppl';
        }
        field(9458; NumEmplTotalFiltService; Boolean)
        {
            Caption = 'NumEmplTotalFiltService';
        }
        field(9460; NumEmplTotalFiltTrainee; Boolean)
        {
            Caption = 'NumEmplTotalFiltTrainee';
        }
        field(9462; NumEmplTotalFiltAppr; Boolean)
        {
            Caption = 'NumEmplTotalFiltAppr';
        }
        field(9464; NumEmplTotalFiltStud; Boolean)
        {
            Caption = 'NumEmplTotalFiltStud';
        }
        field(9466; NumEmplTotalFiltIndi; Boolean)
        {
            Caption = 'NumEmplTotalFiltIndi';
        }
        field(9470; NumEmplTotal; Boolean)
        {
            Caption = 'NumEmplTotal';
        }
        field(9472; NumEmplEmpl; Boolean)
        {
            Caption = 'NumEmplEmpl';
        }
        field(9474; NumEmplSub; Boolean)
        {
            Caption = 'NumEmplSub';
        }
        field(9476; NumEmplLeased; Boolean)
        {
            Caption = 'NumEmplLeased';
        }
        field(9478; NumEmplAppl; Boolean)
        {
            Caption = 'NumEmplAppl';
        }
        field(9480; NumEmplService; Boolean)
        {
            Caption = 'NumEmplService';
        }
        field(9482; NumEmplTrainee; Boolean)
        {
            Caption = 'NumEmplTrainee';
        }
        field(9484; NumEmplAppr; Boolean)
        {
            Caption = 'NumEmplAppr';
        }
        field(9486; NumEmplStud; Boolean)
        {
            Caption = 'NumEmplStud';
        }
        field(9488; NumEmplIndi; Boolean)
        {
            Caption = 'NumEmplIndi';
        }
        field(9500; NumEmplFullTime; Boolean)
        {
            Caption = 'NumEmplFullTime';
        }
        field(9502; NumEmplFullTimeHrsWeek; Decimal)
        {
            Caption = 'NumEmplFullTimeHrsWeek';
        }
        field(9505; NumEmplPartTime; Boolean)
        {
            Caption = 'NumEmplPartTime';
        }
        field(9507; NumEmplPartTimeHrsWeek; Decimal)
        {
            Caption = 'NumEmplPartTimeHrsWeek';
        }
        field(9510; RelFemaleMale; Boolean)
        {
            Caption = 'RelFemaleMale';
        }
        field(9520; AverageAge; Boolean)
        {
            Caption = 'AverageAge';
        }
        field(9530; AverageSeniority; Boolean)
        {
            Caption = 'AverageSeniority';
        }
        field(9540; RelSalariedCommercial; Boolean)
        {
            Caption = 'RelSalariedCommercial';
        }
        field(9550; EducationRate; Boolean)
        {
            Caption = 'EducationRate';
        }
        field(9552; EngagementRate; Boolean)
        {
            Caption = 'EngagementRate';
        }
        field(9554; AverageApplProcTime; Boolean)
        {
            Caption = 'AverageApplProcTime';
        }
        field(9560; JobsUnfilled; Boolean)
        {
            Caption = 'JobsUnfilled';
        }
        field(9570; ContractsLimited; Boolean)
        {
            Caption = 'ContractsLimited';
        }
        field(9572; ContractsUnlimited; Boolean)
        {
            Caption = 'ContractsUnlimited';
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

