table 5056250 "TempVision Setup Vol.1/T"
{
    // TempVision Variable Prefix
    // 
    // 1. Pos L  local variable
    // 1. Pos Tl local text constant (and 2. Pos)
    // 1. Pos G  global variable
    // 1. Pos Tg global text constant (and 2. Pos)
    // 1. Pos P  function parameter
    // 1. Pos F  function variable
    // 1. Pos Tf function text constant (and 2. Pos)
    // 1. Pos R  funktion return
    // 
    // 2. Pos x file
    // 2. Pos w dialog
    // 2. Pos f form
    // 2. Pos u codeunit
    // 2. Pos r record
    // 2. Pos b boolean
    // 2. Pos o option
    // 2. Pos i integer
    // 2. Pos n decimal
    // 2. Pos a char
    // 2. Pos t text
    // 2. Pos c code
    // 2. Pos d date
    // 2. Pos z time
    // 2. Pos v record virtual (temporary)
    // 
    // 3. Pos m only for bei matrix variables

    Caption = 'TempVision Setup Vol.1';
    Description = 'GrSetup';

    fields
    {
        field(1; "GE/No."; Code[10])
        {
            Caption = 'GE/No.';
            NotBlank = true;
        }
        field(2; "GE/Description"; Text[50])
        {
            Caption = 'GE/Description';
        }
        field(3; "GE/State No."; Option)
        {
            Caption = 'GE/State No.';
            Description = 'OptionString Element 1 to 20 reserved for Germany';
            OptionCaption = ' ,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,SWISS,AUSTRIA,POL,ENG,FRA,ITA,ESP,TUN,CZ,USA,RUS,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50';
            OptionMembers = " ","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",SWISS,AUSTRIA,POL,ENG,FRA,ITA,ESP,TUN,CZ,USA,RUS,"32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50";
        }
        field(4; "GE/Begin of Current Period"; Date)
        {
            Caption = 'GE/Begin of Current Period';
        }
        field(5; "GE/End of Current Period"; Date)
        {
            Caption = 'GE/End of Current Period';
        }
        field(6; "GE/Begin of Current Year"; Date)
        {
            Caption = 'GE/Begin of Current Year';
        }
        field(7; "GE/End of Current Year"; Date)
        {
            Caption = 'GE/End of Current Year';
        }
        field(8; "GE/No. of Plan Cont. Days"; Integer)
        {
            Caption = 'GE/No. of Plan Cont. Days';
        }
        field(9; "GE/FDC/Default Total Key"; Code[120])
        {
            Caption = 'GE/FDC/Default Total Key';
        }
        field(10; "GE/Customer Parameter"; Code[10])
        {
            Caption = 'GE/Customer Parameter';
        }
        field(11; "GE/FDC/Journal CU 22 post"; Option)
        {
            Caption = 'GE/FDC/Journal CU 22 post';
            OptionCaption = ' ,Batch Processing,Direct Posting,Batch Processing+Direct Posting';
            OptionMembers = " ","Batch Processing","Direct Posting","Batch Processing+Direct Posting";
        }
        field(12; "GE/Balance Check/Min."; Decimal)
        {
            Caption = 'GE/Balance Check/Min.';
        }
        field(13; "GE/Balance Check/Max."; Decimal)
        {
            Caption = 'GE/Balance Check/Max.';
        }
        field(14; "GE/TA No. Balance Check"; Code[10])
        {
            Caption = 'GE/TA No. Balance Check';
            TableRelation = "Time Account/T"."No.";
        }
        field(15; "GE/Employee Number Series"; Code[10])
        {
            Caption = 'GE/Employee Number Series';
            TableRelation = "No. Series";
        }
        field(16; "GE/Standard/Weekly Hours"; Decimal)
        {
            Caption = 'GE/Standard/Weekly Hours';
        }
        field(17; "GE/Last Daily Report"; Date)
        {
            Caption = 'GE/Last Daily Report';
        }
        field(18; "GE/Current Company Sync."; Boolean)
        {
            Caption = 'GE/Current Company Sync.';
        }
        field(19; "GE/Last Break Report of"; Date)
        {
            Caption = 'GE/Last Break Report of';
        }
        field(20; "GE/Last Break Report until"; Date)
        {
            Caption = 'GE/Last Break Report until';
        }
        field(21; "GE/Sync. Empl. Data Fin->TV"; Boolean)
        {
            Caption = 'GE/Sync. Empl. Data Fin->TV';
        }
        field(22; "GE/Sync. Empl. Data TV->Fin"; Boolean)
        {
            Caption = 'GE/Sync. Empl. Data TV->Fin';
        }
        field(23; "GE/Sync. Dept. Data Fin-TV"; Boolean)
        {
            Caption = 'GE/Sync. Dept. Data Fin-TV';
        }
        field(24; "GE/Sync. Dept. Attain->TV"; Boolean)
        {
            Caption = 'GE/Sync. Dept. Attain->TV';
        }
        field(25; "GE/Sync. Divis. Data Union->TV"; Boolean)
        {
            Caption = 'GE/Sync. Divis. Data Union->TV';
        }
        field(26; "GE/Match Divis. Data TV->Union"; Boolean)
        {
            Caption = 'GE/Match Divis. Data TV->Union';
        }
        field(27; "GE/Sync. Pay Data Attain->TV"; Boolean)
        {
            Caption = 'GE/Sync. Pay Data Attain->TV';
        }
        field(28; "GE/Sync. Pay Data TV->Attain"; Boolean)
        {
            Caption = 'GE/Sync. Pay Data TV->Attain';
        }
        field(30; "CC/Soft Term. P. File Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. P. File Inactive';
        }
        field(31; "GE/Deactivate COMMIT"; Option)
        {
            Caption = 'GE/Deactivate COMMIT';
            OptionCaption = ' ,Terminal Services,Processing Services,Terminal Services+Processing Services';
            OptionMembers = " ","Terminal Services","Processing Services","Terminal Services+Processing Services";
        }
        field(32; "GE/FDC/Parallel Def. Total Key"; Code[120])
        {
            Caption = 'GE/FDC/Parallel Def. Total Key';
        }
        field(33; "GE/FDC/Journal CU 23 post"; Option)
        {
            Caption = 'GE/FDC/Journal CU 23 post';
            OptionCaption = ' ,Batch Processing,Direct Posting,Batch Processing+Direct Posting';
            OptionMembers = " ","Batch Processing","Direct Posting","Batch Processing+Direct Posting";
        }
        field(39; "GE/Source Employee-Synchro."; Option)
        {
            Caption = 'GE/Source Employee-Synchro.';
            OptionCaption = ' ,Resource';
            OptionMembers = " ",Resource;
        }
        field(40; "GE/Present with TP/Inactive"; Boolean)
        {
            Caption = 'GE/Present with TP/Inactive';
        }
        field(41; "GE/Payroll Journal"; Option)
        {
            Caption = 'GE/Payroll Journal';
            OptionCaption = 'Lessor Payroll,TempVision,NAPA Sums/Absent Times,Payroll CH,Payroll Poland,NAPA Sums/Missing Times separated,Bauvision Payroll,Austria Payroll,Primevision,Omega,Swiss Salary';
            OptionMembers = "Lessor Payroll",TempVision,"NAPA Sums/Absent Times","Payroll CH","Payroll Poland","NAPA Sums/Missing Times separated","Bauvision Payroll","Austria Payroll",Primevision,Omega,"Swiss Salary";
        }
        field(42; "GE/Early Shift Optimum"; Integer)
        {
            Caption = 'GE/Early Shift Optimum';
        }
        field(43; "GE/Late Shift Optimum"; Integer)
        {
            Caption = 'GE/Late Shift Optimum';
        }
        field(44; "GE/Night Shift Optimum"; Integer)
        {
            Caption = 'GE/Night Shift Optimum';
        }
        field(45; "GE/Special Shift Optimum"; Integer)
        {
            Caption = 'GE/Special Shift Optimum';
        }
        field(46; "GE/Dept. Sync. Definition"; Code[20])
        {
            Caption = 'GE/Dept. Sync. Definition';
        }
        field(50; "TP/Pairing - Coming"; Boolean)
        {
            Caption = 'TP/Pairing - Coming';
        }
        field(51; "TP/Pairing - Leaving"; Boolean)
        {
            Caption = 'TP/Pairing - Leaving';
        }
        field(52; "TP/Pairing - Errand"; Boolean)
        {
            Caption = 'TP/Pairing - Errand';
        }
        field(53; "TP/FDC Clocking illogical"; Boolean)
        {
            Caption = 'TP/FDC Clocking illogical';
        }
        field(54; "TP/Pairing - Break"; Boolean)
        {
            Caption = 'TP/Pairing - Break';
        }
        field(55; "TP/Pairing - Info"; Boolean)
        {
            Caption = 'TP/Pairing - Info';
        }
        field(60; "TP/Save Unpaired Coming"; Boolean)
        {
            Caption = 'TP/Save Unpaired Coming';
        }
        field(61; "TP/Save Unp. Leaving Clocking"; Boolean)
        {
            Caption = 'TP/Save Unp. Leaving Clocking';
        }
        field(62; "TP/Save Unpaired Errand"; Boolean)
        {
            Caption = 'TP/Save Unpaired Errand';
        }
        field(63; "TP/Save FDC Clocking illogical"; Boolean)
        {
            Caption = 'TP/Save FDC Clocking illogical';
        }
        field(64; "TP/Save Unpaired Break"; Boolean)
        {
            Caption = 'TP/Save Unpaired Break';
        }
        field(65; "TP/Save Unpaired Info"; Boolean)
        {
            Caption = 'TP/Save Unpaired Info';
        }
        field(66; "TP/FDC-Entries no Output"; Boolean)
        {
            Caption = 'TP/FDC-Entries no Output';
        }
        field(70; "TP/Def. Rounding Group No."; Code[20])
        {
            Caption = 'TP/Def. Rounding Group No.';
            TableRelation = "Rounding Group/T"."No.";
        }
        field(71; "TP/Activation Dimension 3"; Boolean)
        {
            Caption = 'TP/Activation Dimension 3';
        }
        field(72; "TP/Def. Key Reference No."; Code[10])
        {
            Caption = 'TP/Def. Key Reference No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Key Reference"));
        }
        field(73; "TP/Skip Night Shift from"; Time)
        {
            Caption = 'TP/Skip Night Shift from';
        }
        field(74; "TP/Activation Compressed 2"; Boolean)
        {
            Caption = 'TP/Activation Compressed 2';
        }
        field(75; "TP/Last Preprocessing"; Date)
        {
            Caption = 'TP/Last Preprocessing';
        }
        field(76; "TP/Last Terminal Transfer"; Date)
        {
            Caption = 'TP/Last Terminal Transfer';
        }
        field(77; "TP/Activation Compressed 1"; Boolean)
        {
            Caption = 'TP/Activation Compressed 1';
        }
        field(78; "TP/Activation Dimension 1"; Boolean)
        {
            Caption = 'TP/Activation Dimension 1';
        }
        field(79; "TP/Activation Dimension 4"; Boolean)
        {
            Caption = 'TP/Activation Dimension 4';
        }
        field(80; "TP/Activation Coming"; Boolean)
        {
            Caption = 'TP/Activation Coming';
        }
        field(81; "TP/Activation Leaving"; Boolean)
        {
            Caption = 'TP/Activation Leaving';
        }
        field(82; "TP/Activation Errand"; Boolean)
        {
            Caption = 'TP/Activation Errand';
        }
        field(83; "TP/Activation Department"; Boolean)
        {
            Caption = 'TP/Activation Department';
        }
        field(84; "TP/Activation Break Orig."; Boolean)
        {
            Caption = 'TP/Activation Break Orig.';
        }
        field(85; "TP/Activation Access"; Boolean)
        {
            Caption = 'TP/Activation Access';
        }
        field(86; "TP/Activation Query"; Boolean)
        {
            Caption = 'TP/Activation Query';
        }
        field(87; "TP/Activation Info"; Boolean)
        {
            Caption = 'TP/Activation Info';
        }
        field(88; "TP/Activation Order Begin"; Boolean)
        {
            Caption = 'TP/Activation Order Begin';
        }
        field(89; "TP/Activation Order End"; Boolean)
        {
            Caption = 'TP/Activation Order End';
        }
        field(90; "TP/Activation Actual Break"; Boolean)
        {
            Caption = 'TP/Activation Actual Break';
        }
        field(91; "TP/System Mode"; Boolean)
        {
            Caption = 'TP/System Mode';
        }
        field(92; "TP/Save Query"; Boolean)
        {
            Caption = 'TP/Save Query';
        }
        field(93; "TP/Before last Period blocked"; Boolean)
        {
            Caption = 'TP/Before last Period blocked';
        }
        field(94; "TP/Alternative 1./last Clock."; Boolean)
        {
            Caption = 'TP/Alternative 1./last Clock.';
        }
        field(95; "TP/FDC Defaultkey as Clocking"; Boolean)
        {
            Caption = 'TP/FDC Defaultkey as Clocking';
        }
        field(96; "TP/Absenc.and Clock.dev.ina."; Boolean)
        {
            Caption = 'TP/Absenc.and Clock.dev.ina.';
        }
        field(97; "TP/Year End as Limit"; Boolean)
        {
            Caption = 'TP/Year End as Limit';
        }
        field(98; "TP/Balance Period End as Limit"; Boolean)
        {
            Caption = 'TP/Balance Period End as Limit';
        }
        field(99; "TP/Come/Leave Auto.Recognition"; Boolean)
        {
            Caption = 'TP/Come/Leave Auto.Recognition';
        }
        field(100; "TP/Alternative Orig. Clocking"; Boolean)
        {
            Caption = 'TP/Alternative Orig. Clocking';
        }
        field(101; "TP/Full Access by Default"; Boolean)
        {
            Caption = 'TP/Full Access by Default';
        }
        field(102; "TP/PP Input Clocking Status"; Boolean)
        {
            Caption = 'TP/PP Input Clocking Status';
        }
        field(103; "TP/Save integrated Data"; Boolean)
        {
            Caption = 'TP/Save integrated Data';
        }
        field(104; "TP/Save current Day"; Boolean)
        {
            Caption = 'TP/Save current Day';
        }
        field(105; "TP/Vacation in Hours"; Boolean)
        {
            Caption = 'TP/Vacation in Hours';
        }
        field(106; "TP/Global Auto.Clk.Base Target"; Boolean)
        {
            Caption = 'TP/Global Auto.Clk.Base Target';
        }
        field(107; "TP/Protect planned D-Object"; Boolean)
        {
            Caption = 'TP/Protect planned D-Object';
        }
        field(108; "TP/PP blocked current Day"; Boolean)
        {
            Caption = 'TP/PP blocked current Day';
        }
        field(109; "TP/Save Previous Period"; Boolean)
        {
            Caption = 'TP/Save Previous Period';
        }
        field(110; "TP/Department Splitting"; Boolean)
        {
            Caption = 'TP/Department Splitting';
        }
        field(111; "TP/FDC Splitting"; Boolean)
        {
            Caption = 'TP/FDC Splitting';
        }
        field(112; "TP/Absent Time in Core Time"; Boolean)
        {
            Caption = 'TP/Absent Time in Core Time';
        }
        field(113; "TP/ Chg.Act.Brk.to Target Brk."; Integer)
        {
            Caption = 'TP/ Chg.Act.Brk.to Target Brk.';
        }
        field(114; "TP/Act. Break Change TA"; Code[10])
        {
            Caption = 'TP/Act. Break Change TA';
            TableRelation = "Time Account/T"."No.";
        }
        field(115; "TP/Inactive Break Balance TA"; Code[10])
        {
            Caption = 'TP/Inactive Break Balance TA';
            TableRelation = "Time Account/T"."No.";
        }
        field(116; "TP/Dyn. Break to Act. Total"; Boolean)
        {
            Caption = 'TP/Dyn. Break to Act. Total';
        }
        field(117; "TP/Evaluate+Recalculate"; Boolean)
        {
            Caption = 'TP/Evaluate+Recalculate';
        }
        field(119; "TP/FDC Key Length Order No."; Integer)
        {
            Caption = 'TP/FDC Key Length Order No.';
        }
        field(120; "TP/FDC Key Length Task No."; Integer)
        {
            Caption = 'TP/FDC Key Length Task No.';
        }
        field(122; "TP/FDC Key Length Total Key"; Integer)
        {
            Caption = 'TP/FDC Key Length Total Key';
        }
        field(123; "TP/Def. Order No. unprod."; Code[20])
        {
            Caption = 'TP/Def. Order No. unprod.';
        }
        field(124; "TP/Def. Order No. prod. End"; Code[20])
        {
            Caption = 'TP/Def. Order No. prod. End';
        }
        field(125; "TP/Read until Day before"; Boolean)
        {
            Caption = 'TP/Read until Day before';
        }
        field(126; "TP/PP as of Begin of Period"; Boolean)
        {
            Caption = 'TP/PP as of Begin of Period';
        }
        field(127; "GE/FDC/Integration automatic"; Boolean)
        {
            Caption = 'GE/FDC/Integration automatic';
        }
        field(128; "TP/Def. Task No. unprod."; Code[20])
        {
            Caption = 'TP/Def. Task No. unprod.';
        }
        field(129; "TP/Break Sync. Active"; Boolean)
        {
            Caption = 'TP/Break Sync. Active';
        }
        field(130; "TP/Preprocess. Future/Days"; Integer)
        {
            Caption = 'TP/Preprocess. Future/Days';
        }
        field(131; "TP/FDC Splitting Parallel"; Boolean)
        {
            Caption = 'TP/FDC Splitting Parallel';
        }
        field(132; "TP/Automatic Absent Day Chain"; Boolean)
        {
            Caption = 'TP/Automatic Absent Day Chain';
        }
        field(133; "TP/FDC Padding Characters"; Code[1])
        {
            Caption = 'TP/FDC Padding Characters';
        }
        field(134; "TP/Fill Resources autom."; Boolean)
        {
            Caption = 'TP/Fill Resources autom.';
        }
        field(135; "TP/FDC Key Length Dimension 1"; Integer)
        {
            Caption = 'TP/FDC Key Length Dimension 1';
        }
        field(136; "TP/FDC Key Length Dimension 2"; Integer)
        {
            Caption = 'TP/FDC Key Length Dimension 2';
        }
        field(137; "TP/FDC Key Length Dimension 3"; Integer)
        {
            Caption = 'TP/FDC Key Length Dimension 3';
        }
        field(138; "TP/FDC Key Length Dimension 4"; Integer)
        {
            Caption = 'TP/FDC Key Length Dimension 4';
        }
        field(139; "TP/Export of Clockings"; Boolean)
        {
            Caption = 'TP/Export of Clockings';
        }
        field(140; "TP/Save Unp. Post. - All Days"; Boolean)
        {
            Caption = 'TP/Save Unp. Post. - All Days';
        }
        field(141; "TP/FDC w/o DefaultKey"; Boolean)
        {
            Caption = 'TP/FDC w/o DefaultKey';
        }
        field(142; "TP/Def. Dimension 1 unprod."; Code[20])
        {
            Caption = 'TP/Def. Dimension 1 unprod.';
        }
        field(143; "TP/Def. Dimension 2 unprod."; Code[20])
        {
            Caption = 'TP/Def. Dimension 2 unprod.';
        }
        field(144; "TP/Def. Dimension 3 unprod."; Code[20])
        {
            Caption = 'TP/Def. Dimension 3 unprod.';
        }
        field(145; "TP/Def. Dimension 4 unprod."; Code[20])
        {
            Caption = 'TP/Def. Dimension 4 unprod.';
        }
        field(146; "TP/FDC Output w/o DefaultKey"; Boolean)
        {
            Caption = 'TP/FDC Output w/o DefaultKey';
        }
        field(147; "TP/FDC Splitting Order Collect"; Boolean)
        {
            Caption = 'TP/FDC Splitting Order Collect';
        }
        field(148; "TP/FDC Split.Division Parallel"; Option)
        {
            Caption = 'TP/FDC Split.Division Parallel';
            OptionCaption = ' ,Only Parallel Orders,Only Order Collect,Parallel Orders and Order Collect';
            OptionMembers = " ","Only Parallel Orders","Only Order Collect","Parallel Orders and Order Collect";
        }
        field(149; "CC/Terminal Display Info 1"; Option)
        {
            Caption = 'CC/Terminal Display Info 1';
            OptionCaption = ' ,Time Account,Remainder Vacation Taken,Remainder Vacation Planned,To Date,Time Account Sum-Values previous Day,Time Account Sum-Values Today,Time Account current Month,First Coming-Clocking,Last Coming-Clocking';
            OptionMembers = " ","Time Account","Remainder Vacation Taken","Remainder Vacation Planned","To Date","Time Account Sum-Values previous Day","Time Account Sum-Values Today","Time Account current Month","First Coming-Clocking","Last Coming-Clocking";
        }
        field(150; "CC/Terminal TA No. 1"; Code[10])
        {
            Caption = 'CC/Terminal TA No. 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(151; "CC/Terminal Display Info 2"; Option)
        {
            Caption = 'CC/Terminal Display Info 2';
            OptionCaption = ' ,Time Account,Remainder Vacation Taken,Remainder Vacation Planned,To Date,Time Account Sum-Values previous Day,Time Account Sum-Values Today,Time Account current Month,First Coming-Clocking,Last Coming-Clocking';
            OptionMembers = " ","Time Account","Remainder Vacation Taken","Remainder Vacation Planned","To Date","Time Account Sum-Values previous Day","Time Account Sum-Values Today","Time Account current Month","First Coming-Clocking","Last Coming-Clocking";
        }
        field(152; "CC/Terminal TA No. 2"; Code[10])
        {
            Caption = 'CC/Terminal TA No. 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(153; "CC/Terminal Display Info 3"; Option)
        {
            Caption = 'CC/Terminal Display Info 3';
            OptionCaption = ' ,Time Account,Remainder Vacation Taken,Remainder Vacation Planned,To Date,Time Account Sum-Values previous Day,Time Account Sum-Values Today,Time Account current Month,First Coming-Clocking,Last Coming-Clocking';
            OptionMembers = " ","Time Account","Remainder Vacation Taken","Remainder Vacation Planned","To Date","Time Account Sum-Values previous Day","Time Account Sum-Values Today","Time Account current Month","First Coming-Clocking","Last Coming-Clocking";
        }
        field(154; "CC/Terminal TA No. 3"; Code[10])
        {
            Caption = 'CC/Terminal TA No. 3';
            TableRelation = "Time Account/T"."No.";
        }
        field(155; "CC/Terminal Display Info 4"; Option)
        {
            Caption = 'CC/Terminal Display Info 4';
            OptionCaption = ' ,Time Account,Remainder Vacation Taken,Remainder Vacation Planned,To Date,Time Account Sum-Values previous Day,Time Account Sum-Values Today,Time Account current Month,First Coming-Clocking,Last Coming-Clocking';
            OptionMembers = " ","Time Account","Remainder Vacation Taken","Remainder Vacation Planned","To Date","Time Account Sum-Values previous Day","Time Account Sum-Values Today","Time Account current Month","First Coming-Clocking","Last Coming-Clocking";
        }
        field(156; "CC/Terminal TA No. 4"; Code[10])
        {
            Caption = 'CC/Terminal TA No. 4';
            TableRelation = "Time Account/T"."No.";
        }
        field(157; "TP/FDC Splitting Dept Parallel"; Boolean)
        {
            Caption = 'TP/FDC Splitting Dept Parallel';
        }
        field(158; "CC/Opt. Filesend Interface"; Option)
        {
            Caption = 'CC/Opt. Filesend Interface';
            OptionCaption = ' ,TempVision,KABA-Benzing,Hengstler,Adicom,SAP,TempVision variable,PCS,Acticon,Rexroth,Viisage,Timelink XML,Navision,KK1,MS-Project,Vectron,Datafox,Tour Planning,Datafox (advanced)';
            OptionMembers = " ",TempVision,"KABA-Benzing",Hengstler,Adicom,SAP,"TempVision variable",PCS,Acticon,Rexroth,Viisage,"Timelink XML",Navision,KK1,"MS-Project",Vectron,Datafox,"Tour Planning","Datafox (advanced)";
        }
        field(159; "CC/Create GARBAGE.DAT"; Boolean)
        {
            Caption = 'CC/Create GARBAGE.DAT';
        }
        field(160; "CC/Path/File External.Dat1"; Text[80])
        {
            Caption = 'CC/Path/File External.Dat1';
        }
        field(161; "CC/Path/File External.Dat2"; Text[80])
        {
            Caption = 'CC/Path/File External.Dat2';
        }
        field(162; "CC/Path/File External.Dat3"; Text[80])
        {
            Caption = 'CC/Path/File External.Dat3';
        }
        field(163; "CC/Path/File External.Dat4"; Text[80])
        {
            Caption = 'CC/Path/File External.Dat4';
        }
        field(164; "CC/Path/File External.Dat5"; Text[80])
        {
            Caption = 'CC/Path/File External.Dat5';
        }
        field(165; "CC/Path/Datafile FDC-Scrap.Dat"; Text[80])
        {
            Caption = 'CC/Path/Datafile FDC-Scrap.Dat';
        }
        field(166; "CC/Path/File Filesend.Dat1"; Text[80])
        {
            Caption = 'CC/Path/File Filesend.Dat1';
        }
        field(167; "CC/Path/File Filesend.Dat2"; Text[80])
        {
            Caption = 'CC/Path/File Filesend.Dat2';
        }
        field(168; "CC/Path/File Filesend.Dat3"; Text[80])
        {
            Caption = 'CC/Path/File Filesend.Dat3';
        }
        field(169; "CC/Path/File Empl.Dat"; Text[80])
        {
            Caption = 'CC/Path/File Empl.Dat';
        }
        field(170; "CC/Path/File Copy.Dat"; Text[80])
        {
            Caption = 'CC/Path/File Copy.Dat';
        }
        field(171; "CC/Terminal Interface"; Option)
        {
            Caption = 'CC/Terminal Interface';
            OptionCaption = 'TempVision,KABA-Benzing,Hengstler,Adicom,SAP,TempVision variable,PCS,Acticon,Rexroth,Viisage,Timelink XML,Navision,KK1,MS-Project,Vectron,Datafox,Tour Planning,FDC-Clocking Type,Vectron 2,Kakom';
            OptionMembers = TempVision,"KABA-Benzing",Hengstler,Adicom,SAP,"TempVision variable",PCS,Acticon,Rexroth,Viisage,"Timelink XML",Navision,KK1,"MS-Project",Vectron,Datafox,"Tour Planning","FDC-Clocking Type","Vectron 2",Kakom;
        }
        field(172; "CC/Init.Miss. Day and Clocking"; Boolean)
        {
            Caption = 'CC/Init.Miss. Day and Clocking';
        }
        field(173; "CC/Coming -> Dept./Activity"; Boolean)
        {
            Caption = 'CC/Coming -> Dept./Activity';
        }
        field(174; "CC/KABA-Benzing Format"; Boolean)
        {
            Caption = 'CC/KABA-Benzing Format';
        }
        field(175; "CC/Payroll Dest. Path/Sums 1"; Text[80])
        {
            Caption = 'CC/Payroll Dest. Path/Sums 1';
        }
        field(176; "CC/Payroll Dest. Path/Sums 2"; Text[80])
        {
            Caption = 'CC/Payroll Dest. Path/Sums 2';
        }
        field(177; "CC/Path/File Licence.Dat"; Text[80])
        {
            Caption = 'CC/Path/File Licence.Dat';
        }
        field(178; "CC/Payroll Dest. Path/Cau.Abs."; Text[80])
        {
            Caption = 'CC/Payroll Dest. Path/Cau.Abs.';
        }
        field(179; "CC/Entry Inf.Dest.Path"; Text[80])
        {
            Caption = 'CC/Entry Inf.Dest.Path';
        }
        field(180; "CC/Clocking Interf. Dest. Path"; Text[80])
        {
            Caption = 'CC/Clocking Interf. Dest. Path';
        }
        field(181; "CC/Coming-Leaving/Break"; Boolean)
        {
            Caption = 'CC/Coming-Leaving/Break';
        }
        field(182; "CC/Com-Leav./Break Begin 1"; Time)
        {
            Caption = 'CC/Com-Leav./Break Begin 1';
        }
        field(183; "CC/Com-Leav./Break End 1"; Time)
        {
            Caption = 'CC/Com-Leav./Break End 1';
        }
        field(184; "CC/Com-Leav./Break Begin 2"; Time)
        {
            Caption = 'CC/Com-Leav./Break Begin 2';
        }
        field(185; "CC/Com-Leav./Break End 2"; Time)
        {
            Caption = 'CC/Com-Leav./Break End 2';
        }
        field(186; "CC/Coming/Errand"; Boolean)
        {
            Caption = 'CC/Coming/Errand';
        }
        field(187; "CC/Access/Coming/Leaving"; Boolean)
        {
            Caption = 'CC/Access/Coming/Leaving';
        }
        field(188; "CC/Com.-Order/Num. Prev. Days"; Integer)
        {
            Caption = 'CC/Com.-Order/Num. Prev. Days';
        }
        field(189; "CC/FDC ST Qty. Online-Clock."; Boolean)
        {
            Caption = 'CC/FDC ST Qty. Online-Clock.';
        }
        field(190; "CC/FDC ST Finish Online-Clock."; Boolean)
        {
            Caption = 'CC/FDC ST Finish Online-Clock.';
        }
        field(191; "CC/FDC Online-Clockings Term."; Boolean)
        {
            Caption = 'CC/FDC Online-Clockings Term.';
        }
        field(192; "CC/Begin Value - Dummy ID"; Integer)
        {
            Caption = 'CC/Begin Value - Dummy ID';
        }
        field(193; "CC/TA No. FDC Finished"; Code[10])
        {
            Caption = 'CC/TA No. FDC Finished';
            TableRelation = "Time Account/T"."No.";
        }
        field(194; "CC/Ref. FDC Finished"; Option)
        {
            Caption = 'CC/Ref. FDC Finished';
            OptionCaption = ' ,Order,Order/Task/Dimensions';
            OptionMembers = " ","Order","Order/Task/Dimensions";
        }
        field(195; "CC/FDC-Key Byte to Blank 1"; Code[1])
        {
            Caption = 'CC/FDC-Key Byte to Blank 1';
        }
        field(196; "CC/EntryLength Info Clocking"; Integer)
        {
            Caption = 'CC/EntryLength Info Clocking';
        }
        field(197; "CC/PP/Terminal Clocking"; Boolean)
        {
            Caption = 'CC/PP/Terminal Clocking';
        }
        field(198; "CC/Soft Term. Time/Date Entry"; Boolean)
        {
            Caption = 'CC/Soft Term. Time/Date Entry';
        }
        field(199; "CC/Rounding all Clockings"; Integer)
        {
            Caption = 'CC/Rounding all Clockings';
        }
        field(200; "CC/Entry Length - Department"; Integer)
        {
            Caption = 'CC/Entry Length - Department';
        }
        field(201; "CC/Entry Length Order No.FA-FC"; Integer)
        {
            Caption = 'CC/Entry Length Order No.FA-FC';
        }
        field(202; "CC/Entry Length Task No.FA-FC"; Integer)
        {
            Caption = 'CC/Entry Length Task No.FA-FC';
        }
        field(203; "CC/FDC Export"; Boolean)
        {
            Caption = 'CC/FDC Export';
        }
        field(204; "CC/Allocate Company"; Boolean)
        {
            Caption = 'CC/Allocate Company';
        }
        field(205; "CC/Entry L. Total Key FA-FC"; Integer)
        {
            Caption = 'CC/Entry L. Total Key FA-FC';
        }
        field(206; "CC/FDC-Key Zero to Blank"; Boolean)
        {
            Caption = 'CC/FDC-Key Zero to Blank';
        }
        field(207; "CC/Man. Entry Total Key FD-FF"; Integer)
        {
            Caption = 'CC/Man. Entry Total Key FD-FF';
        }
        field(208; "CC/Man. Entry Order No. FD-FF"; Integer)
        {
            Caption = 'CC/Man. Entry Order No. FD-FF';
        }
        field(209; "CC/Man. Entry Task No. FD-FF"; Integer)
        {
            Caption = 'CC/Man. Entry Task No. FD-FF';
        }
        field(210; "CC/Soft Term. Coming Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Coming Inactive';
        }
        field(211; "CC/Soft Term. Leaving Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Leaving Inactive';
        }
        field(212; "CC/Soft Term. Errand Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Errand Inactive';
        }
        field(213; "CC/Soft Term. Break Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Break Inactive';
        }
        field(214; "CC/Soft Term. Dept. Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Dept. Inactive';
        }
        field(215; "CC/Soft Term. Project Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Project Inactive';
        }
        field(216; "CC/Soft Term. P. Info Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. P. Info Inactive';
        }
        field(217; "CC/Soft Term. Passw. Chg. ina."; Boolean)
        {
            Caption = 'CC/Soft Term. Passw. Chg. ina.';
        }
        field(218; "CC/Soft Term. Mk.Vac.Appl.ina."; Boolean)
        {
            Caption = 'CC/Soft Term. Mk.Vac.Appl.ina.';
        }
        field(219; "CC/Soft Term. A.Vac.Appl.ina."; Boolean)
        {
            Caption = 'CC/Soft Term. A.Vac.Appl.ina.';
        }
        field(220; "CC/Soft Term. Coming Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Coming Pos1-21';
        }
        field(221; "CC/Soft Term. Leaving Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Leaving Pos1-21';
        }
        field(222; "CC/Soft Term. Errand Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Errand Pos1-21';
        }
        field(223; "CC/Soft Term. Break Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Break Pos1-21';
        }
        field(224; "CC/Soft Term. Dept. Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Dept. Pos1-21';
        }
        field(225; "CC/Soft Term. Project Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Project Pos1-21';
        }
        field(226; "CC/Soft Term. P-Info Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. P-Info Pos1-21';
        }
        field(227; "CC/Soft Term. Pass.Chg.Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Pass.Chg.Pos1-21';
        }
        field(228; "CC/Soft-Term. Vac-M. Pos1-21"; Integer)
        {
            Caption = 'CC/Soft-Term. Vac-M. Pos1-21';
        }
        field(229; "CC/Soft-Term. Vac-A. Pos1-21"; Integer)
        {
            Caption = 'CC/Soft-Term. Vac-A. Pos1-21';
        }
        field(230; "CC/TA Limit/End of Period"; Boolean)
        {
            Caption = 'CC/TA Limit/End of Period';
        }
        field(231; "CC/Access Data Inactive"; Boolean)
        {
            Caption = 'CC/Access Data Inactive';
        }
        field(232; "CC/EmplInfo Months back"; Integer)
        {
            Caption = 'CC/EmplInfo Months back';
        }
        field(233; "CC/Terminalbalance Format HHMM"; Boolean)
        {
            Caption = 'CC/Terminalbalance Format HHMM';
        }
        field(234; "CC/TermServices Appl.Server"; Boolean)
        {
            Caption = 'CC/TermServices Appl.Server';
        }
        field(235; "CC/Overwrite Record Type FC"; Boolean)
        {
            Caption = 'CC/Overwrite Record Type FC';
        }
        field(236; "CC/Coming - Order Begin"; Option)
        {
            Caption = 'CC/Coming - Order Begin';
            OptionCaption = ' ,Today,Today and Day before,Today and Days before,Day before,Days before';
            OptionMembers = " ",Today,"Today and Day before","Today and Days before","Day before","Days before";
        }
        field(237; "CC/TA No. FDC Qty."; Code[10])
        {
            Caption = 'CC/TA No. FDC Qty.';
            TableRelation = "Time Account/T"."No.";
        }
        field(238; "CC/Field Length FDC Qty."; Integer)
        {
            Caption = 'CC/Field Length FDC Qty.';
        }
        field(239; "CC/Reference FDC Qty."; Option)
        {
            Caption = 'CC/Reference FDC Qty.';
            OptionCaption = ' ,Order,Order/Task/Dimensions';
            OptionMembers = " ","Order","Order/Task/Dimensions";
        }
        field(240; "CC/FDC/Prefix Order No."; Code[20])
        {
            Caption = 'CC/FDC/Prefix Order No.';
        }
        field(241; "CC/FDC/Suffix Order No."; Code[20])
        {
            Caption = 'CC/FDC/Suffix Order No.';
        }
        field(242; "CC/FDC/Enter Order No."; Code[20])
        {
            Caption = 'CC/FDC/Enter Order No.';
        }
        field(243; "CC/FDC/from Pos. Order No."; Integer)
        {
            Caption = 'CC/FDC/from Pos. Order No.';
        }
        field(244; "CC/FDC/Prefix man.Order No."; Code[20])
        {
            Caption = 'CC/FDC/Prefix man.Order No.';
        }
        field(245; "CC/FDC/Suffix man.Order No."; Code[20])
        {
            Caption = 'CC/FDC/Suffix man.Order No.';
        }
        field(246; "CC/FDC/Fill In man.Order No."; Code[20])
        {
            Caption = 'CC/FDC/Fill In man.Order No.';
        }
        field(247; "CC/FDC/from Pos. man.Order No."; Integer)
        {
            Caption = 'CC/FDC/from Pos. man.Order No.';
        }
        field(248; "CC/TA No. FDC Scrap"; Code[10])
        {
            Caption = 'CC/TA No. FDC Scrap';
            TableRelation = "Time Account/T"."No.";
        }
        field(249; "CC/Field Length FDC Scrap"; Integer)
        {
            Caption = 'CC/Field Length FDC Scrap';
        }
        field(250; "PE/Direct Button FDC Int."; Boolean)
        {
            Caption = 'PE/Direct Button FDC Int.';
        }
        field(251; "PE/Payroll Grp. Summary"; Boolean)
        {
            Caption = 'PE/Payroll Grp. Summary';
        }
        field(252; "CC/Reference FDC Scrap"; Option)
        {
            Caption = 'CC/Reference FDC Scrap';
            OptionCaption = ' ,Order,Order/Task/Dimensions';
            OptionMembers = " ","Order","Order/Task/Dimensions";
        }
        field(253; "GE/History editable"; Boolean)
        {
            Caption = 'GE/History editable';
        }
        field(254; "PE/Period Entry Round."; Decimal)
        {
            Caption = 'PE/Period Entry Round.';
        }
        field(255; "PE/Period Values/Pay rounded"; Boolean)
        {
            Caption = 'PE/Period Values/Pay rounded';
        }
        field(256; "PE/Filter FDC-Int. Deviating"; Boolean)
        {
            Caption = 'PE/Filter FDC-Int. Deviating';
        }
        field(257; "GE/End of Period automatic"; Option)
        {
            Caption = 'GE/End of Period automatic';
            OptionCaption = ' ,Sum+Carried Forward+End of Period';
            OptionMembers = " ","Sum+Carried Forward+End of Period";
        }
        field(258; "GE/Pay Reg. Journal Batch"; Code[10])
        {
            Caption = 'GE/Pay Reg. Journal Batch';
        }
        field(259; "GE/Absence Reg. Journal Batch"; Code[10])
        {
            Caption = 'GE/Absence Reg. Journal Batch';
        }
        field(260; "GE/Company synchro. 1"; Text[30])
        {
            Caption = 'GE/Company synchro. 1';
            TableRelation = Company;
        }
        field(261; "GE/Company synchro. 2"; Text[30])
        {
            Caption = 'GE/Company synchro. 2';
            TableRelation = Company;
        }
        field(262; "GE/Company synchro. 3"; Text[30])
        {
            Caption = 'GE/Company synchro. 3';
            TableRelation = Company;
        }
        field(263; "GE/Company synchro. 4"; Text[30])
        {
            Caption = 'GE/Company synchro. 4';
            TableRelation = Company;
        }
        field(264; "GE/Company synchro. 5"; Text[30])
        {
            Caption = 'GE/Company synchro. 5';
            TableRelation = Company;
        }
        field(265; "GE/Company synchro. 6"; Text[30])
        {
            Caption = 'GE/Company synchro. 6';
            TableRelation = Company;
        }
        field(266; "GE/Company synchro. 7"; Text[30])
        {
            Caption = 'GE/Company synchro. 7';
            TableRelation = Company;
        }
        field(267; "GE/Company synchro. 8"; Text[30])
        {
            Caption = 'GE/Company synchro. 8';
            TableRelation = Company;
        }
        field(268; "GE/Company synchro. 9"; Text[30])
        {
            Caption = 'GE/Company synchro. 9';
            TableRelation = Company;
        }
        field(269; "GE/Company synchro. 10"; Text[30])
        {
            Caption = 'GE/Company synchro. 10';
            TableRelation = Company;
        }
        field(270; "CC/FDC-Serial No./Lot No."; Boolean)
        {
            Caption = 'CC/FDC-Serial No./Lot No.';
        }
        field(271; "TP/FDC-Time Account"; Boolean)
        {
            Caption = 'TP/FDC-Time Account';
        }
        field(272; "CC/FDC Lot Double-Check"; Boolean)
        {
            Caption = 'CC/FDC Lot Double-Check';
        }
        field(273; "GE/Output Lights"; Boolean)
        {
            Caption = 'GE/Output Lights';
        }
        field(274; "GE/Lights green/Minimum"; Decimal)
        {
            Caption = 'GE/Lights green/Minimum';
        }
        field(275; "GE/Lights green/Maximum"; Decimal)
        {
            Caption = 'GE/Lights green/Maximum';
        }
        field(276; "GE/Lights yellow/Minimum"; Decimal)
        {
            Caption = 'GE/Lights yellow/Minimum';
        }
        field(277; "GE/Lights yellow/Maximum"; Decimal)
        {
            Caption = 'GE/Lights yellow/Maximum';
        }
        field(278; "GE/Lights red/Minimum"; Decimal)
        {
            Caption = 'GE/Lights red/Minimum';
        }
        field(279; "GE/Lights red/Maximum"; Decimal)
        {
            Caption = 'GE/Lights red/Maximum';
        }
        field(280; "GE/Check Shift Scheduling Past"; Boolean)
        {
            Caption = 'GE/Check Shift Scheduling Past';
        }
        field(281; "GE/Handic. Rem. Vacation"; Boolean)
        {
            Caption = 'GE/Handic. Rem. Vacation';
        }
        field(282; "GE/Separated Handic. Vac."; Boolean)
        {
            Caption = 'GE/Separated Handic. Vac.';
        }
        field(283; "GE/Time Card Format HHMM"; Boolean)
        {
            Caption = 'GE/Time Card Format HHMM';
        }
        field(284; "GE/Number Days Open Entries"; Integer)
        {
            Caption = 'GE/Number Days Open Entries';
        }
        field(285; "GE/T-Card/Individual Title 1"; Text[30])
        {
            Caption = 'GE/T-Card/Individual Title 1';
        }
        field(286; "GE/T-Card/Individual Title 2"; Text[30])
        {
            Caption = 'GE/T-Card/Individual Title 2';
        }
        field(287; "GE/T-Card/Individual Title 3"; Text[30])
        {
            Caption = 'GE/T-Card/Individual Title 3';
        }
        field(288; "GE/Board with Cause of Absence"; Option)
        {
            Caption = 'GE/Board with Cause of Absence';
            OptionCaption = ' ,Cause of Absence Description,Cause of Absence Anonymous';
            OptionMembers = " ","Cause of Absence Description","Cause of Absence Anonymous";
        }
        field(289; "GE/Board from Time"; Time)
        {
            Caption = 'GE/Board from Time';
        }
        field(290; "GE/Board to Time"; Time)
        {
            Caption = 'GE/Board to Time';
        }
        field(291; "GE/T-Card/Output V/F"; Boolean)
        {
            Caption = 'GE/T-Card/Output V/F';
        }
        field(292; "GE/T-Card/Output Type"; Option)
        {
            Caption = 'GE/T-Card/Output Type';
            OptionCaption = 'Standard,Weekly List,Weekly Sums';
            OptionMembers = Standard,"Weekly List","Weekly Sums";
        }
        field(293; "GE/Daily Report Orig. Clock."; Boolean)
        {
            Caption = 'GE/Daily Report Orig. Clock.';
        }
        field(294; "GE/Begin Statistics"; Date)
        {
            Caption = 'GE/Begin Statistics';
        }
        field(295; "GE/Daily Report Ext. Dept."; Boolean)
        {
            Caption = 'GE/Daily Report Ext. Dept.';
        }
        field(296; "GE/Save Time Defaults"; Option)
        {
            Caption = 'GE/Save Time Defaults';
            OptionCaption = 'Standard,Enhanced,Structured';
            OptionMembers = Standard,Enhanced,Structured;
        }
        field(297; "GE/Weekly Report TA No. Break"; Code[10])
        {
            Caption = 'GE/Weekly Report TA No. Break';
            TableRelation = "Time Account/T"."No.";
        }
        field(298; "GE/Present with Order"; Boolean)
        {
            Caption = 'GE/Present with Order';
        }
        field(299; "GE/Present with Department"; Boolean)
        {
            Caption = 'GE/Present with Department';
        }
        field(300; "TP/Output FDC-Quantity"; Boolean)
        {
            Caption = 'TP/Output FDC-Quantity';
        }
        field(301; "TP/Output FDC-Scrap"; Boolean)
        {
            Caption = 'TP/Output FDC-Scrap';
        }
        field(302; "TP/Output FDC-Finished"; Boolean)
        {
            Caption = 'TP/Output FDC-Finished';
        }
        field(303; "TP/Output FDC-Serial/Lot"; Boolean)
        {
            Caption = 'TP/Output FDC-Serial/Lot';
        }
        field(304; "TP/Output FDC-Time Account"; Boolean)
        {
            Caption = 'TP/Output FDC-Time Account';
        }
        field(305; "CC/Default Finished Quantity"; Option)
        {
            Caption = 'CC/Default Finished Quantity';
            OptionCaption = 'F - Finished,I - Interrupted';
            OptionMembers = "F - Finished","I - Interrupted";
        }
        field(306; "CC/Default Serial/Lot Quantity"; Decimal)
        {
            Caption = 'CC/Default Serial/Lot Quantity';
        }
        field(307; "CC/FDC-Clockings later"; Boolean)
        {
            Caption = 'CC/FDC-Clockings later';
        }
        field(308; "CC/FDC/Leaving stops Parallel"; Boolean)
        {
            Caption = 'CC/FDC/Leaving stops Parallel';
        }
        field(309; "GE/FDC/Journal Batch Process."; Code[10])
        {
            Caption = 'GE/FDC/Journal Batch Process.';
        }
        field(310; "GE/FDC/Journal Direct Posting"; Code[10])
        {
            Caption = 'GE/FDC/Journal Direct Posting';
        }
        field(311; "GE/FDC/Journal Error Log"; Code[10])
        {
            Caption = 'GE/FDC/Journal Error Log';
        }
        field(312; "CC/Field Length FDC Finished"; Integer)
        {
            Caption = 'CC/Field Length FDC Finished';
        }
        field(313; "CC/Export File Pre. Org-Form"; Option)
        {
            Caption = 'CC/Export File Pre. Org-Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(314; "GE/Board Display"; Option)
        {
            Caption = 'GE/Board Display';
            OptionCaption = ' ,Only Attendees,Only Absentees,at Break Only,at Errand Only';
            OptionMembers = " ","Only Attendees","Only Absentees";
        }
        field(315; "CC/Errand B3 as A2-Record"; Boolean)
        {
            Caption = 'CC/Errand B3 as A2-Record';
        }
        field(316; "CC/FDC-Quantity w/o Finished"; Boolean)
        {
            Caption = 'CC/FDC-Quantity w/o Finished';
        }
        field(317; "CC/End Value - Dummy ID"; Integer)
        {
            Caption = 'CC/End Value - Dummy ID';
        }
        field(318; "CC/Create MIRROR.DAT"; Boolean)
        {
            Caption = 'CC/Create MIRROR.DAT';
        }
        field(319; "GE/Board with Access-Clocking"; Boolean)
        {
            Caption = 'GE/Board with Access-Clocking';
        }
        field(320; "CC/FDC-Key Byte to Blank 2"; Code[1])
        {
            Caption = 'CC/FDC-Key Byte to Blank 2';
        }
        field(321; "TP/Def. Order No. ext. posted"; Code[20])
        {
            Caption = 'TP/Def. Order No. ext. posted';
        }
        field(322; "TP/Preprocess. Num. prev. Days"; Integer)
        {
            Caption = 'TP/Preprocess. Num. prev. Days';
        }
        field(323; "CC/FDC/Offset Total Key"; Integer)
        {
            Caption = 'CC/FDC/Offset Total Key';
        }
        field(324; "GE/Company Control"; Option)
        {
            Caption = 'GE/Company Control';
            OptionCaption = 'Synchronization,Preprocessing,Synchronization+Preprocessing';
            OptionMembers = Synchronization,Preprocessing,"Synchronization+Preprocessing";
        }
        field(325; "TP/Check illog.Clock. Inactive"; Boolean)
        {
            Caption = 'TP/Check illog.Clock. Inactive';
        }
        field(326; "GE/FDC-Quantity separate Line"; Boolean)
        {
            Caption = 'GE/FDC-Quantity separate Line';
        }
        field(327; "TP/FDC-Collect Check Minutes"; Integer)
        {
            Caption = 'TP/FDC-Collect Check Minutes';
        }
        field(328; "CC/FDC/Leaving stops Collect"; Boolean)
        {
            Caption = 'CC/FDC/Leaving stops Collect';
        }
        field(329; "CC/FDC-Collect later"; Boolean)
        {
            Caption = 'CC/FDC-Collect later';
        }
        field(330; "CC/Error Par-End Rejection"; Boolean)
        {
            Caption = 'CC/Error Par-End Rejection';
        }
        field(331; "CC/Check Col-End at Leaving"; Boolean)
        {
            Caption = 'CC/Check Col-End at Leaving';
        }
        field(332; "CC/Error Col-End Rejection"; Boolean)
        {
            Caption = 'CC/Error Col-End Rejection';
        }
        field(333; "CC/Appl.Server w/o 1.Message"; Boolean)
        {
            Caption = 'CC/Appl.Server w/o 1.Message';
        }
        field(334; "CC/FDC/Bar-Decode Separator"; Code[1])
        {
            Caption = 'CC/FDC/Bar-Decode Separator';
        }
        field(335; "TP/FDC 2x CASE Prog1"; Boolean)
        {
            Caption = 'TP/FDC 2x CASE Prog1';
        }
        field(336; "TP/FDC-Parallel End w.Quantity"; Boolean)
        {
            Caption = 'TP/FDC-Parallel End w.Quantity';
        }
        field(337; "GE/File Data Change History"; Boolean)
        {
            Caption = 'GE/File Data Change History';
        }
        field(338; "CC/FDC/Unprod.at Quantity/Fin."; Boolean)
        {
            Caption = 'CC/FDC/Unprod.at Quantity/Fin.';
        }
        field(360; "CC/Entry Len Dimension 1 FA-FC"; Integer)
        {
            Caption = 'CC/Entry Len Dimension 1 FA-FC';
        }
        field(361; "CC/Entry Len Dimension 2 FA-FC"; Integer)
        {
            Caption = 'CC/Entry Len Dimension 2 FA-FC';
        }
        field(362; "CC/Entry Len Dimension 3 FA-FC"; Integer)
        {
            Caption = 'CC/Entry Len Dimension 3 FA-FC';
        }
        field(363; "CC/Entry Len Dimension 4 FA-FC"; Integer)
        {
            Caption = 'CC/Entry Len Dimension 4 FA-FC';
        }
        field(364; "CC/Man.Entry Dimension 1 FD-FF"; Integer)
        {
            Caption = 'CC/Man.Entry Dimension 1 FD-FF';
        }
        field(365; "CC/Man.Entry Dimension 2 FD-FF"; Integer)
        {
            Caption = 'CC/Man.Entry Dimension 2 FD-FF';
        }
        field(366; "CC/Man.Entry Dimension 3 FD-FF"; Integer)
        {
            Caption = 'CC/Man.Entry Dimension 3 FD-FF';
        }
        field(367; "CC/Man.Entry Dimension 4 FD-FF"; Integer)
        {
            Caption = 'CC/Man.Entry Dimension 4 FD-FF';
        }
        field(370; "CC/Path/File Mirror.Dat"; Text[80])
        {
            Caption = 'CC/Path/File Mirror.Dat';
        }
        field(380; "GE/T-Card/Individual Column 1"; Option)
        {
            Caption = 'GE/T-Card/Individual Column 1';
            OptionCaption = ' ,Original,Act,Target,Break,Errand,Info';
            OptionMembers = " ",Original,Act,Target,"Break",Errand,Info;
        }
        field(381; "GE/T-Card/Individual Column 2"; Option)
        {
            Caption = 'GE/T-Card/Individual Column 2';
            OptionCaption = ' ,Original,Act,Target,Break,Errand,Info';
            OptionMembers = " ",Original,Act,Target,"Break",Errand,Info;
        }
        field(382; "GE/T-Card/Individual Column 3"; Option)
        {
            Caption = 'GE/T-Card/Individual Column 3';
            OptionCaption = ' ,Original,Act,Target,Break,Errand,Info';
            OptionMembers = " ",Original,Act,Target,"Break",Errand,Info;
        }
        field(50000; "EX/Barcode Number Series"; Code[10])
        {
            Caption = 'EX/Barcode Number Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "GE/No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

