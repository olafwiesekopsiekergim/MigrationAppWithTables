table 5056318 "TempVision Setup Vol.2/T"
{
    // //SK01 tempras 25.04.2018 neues Feld Urlaub bis

    Caption = 'TempVision Setup Vol.2';
    Description = 'GrSetup2';

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
        field(3; "GE/AT-Workflow E-Mail Active"; Boolean)
        {
            Caption = 'GE/AT-Workflow E-Mail Active';
        }
        field(4; "GE/AT-Workflow E-Mail Address"; Text[80])
        {
            Caption = 'GE/AT-Workflow E-Mail Address';
        }
        field(5; "GE/Check Relax Time in Hours"; Decimal)
        {
            Caption = 'GE/Check Relax Time in Hours';
        }
        field(6; "GE/Filter Planning Lines"; Option)
        {
            Caption = 'GE/Filter Planning Lines';
            OptionCaption = 'Begin of Current Year,Begin of Current Period';
            OptionMembers = "Begin of Current Year","Begin of Current Period";
        }
        field(7; "GE/TC/Auto. Preproc. Inactive"; Boolean)
        {
            Caption = 'GE/TC/Auto. Preproc. Inactive';
        }
        field(8; "GE/Control Working Days"; Boolean)
        {
            Caption = 'GE/Control Working Days';
        }
        field(9; "GE/Modify Plan-Lines Inactive"; Boolean)
        {
            Caption = 'GE/Modify Plan-Lines Inactive';
        }
        field(10; "GE/Job Queue Delay Sec."; Integer)
        {
            Caption = 'GE/Job Queue Delay Sec.';
        }
        field(11; "GE/AT-Workflow Edit"; Option)
        {
            Caption = 'GE/AT-Workflow Edit';
            OptionCaption = ' ,Stand-In,Superior,Stand-In/Superior';
            OptionMembers = " ","Stand-In",Superior,"Stand-In/Superior";
        }
        field(12; "GE/Minimized Employee List"; Boolean)
        {
            Caption = 'GE/Minimized Employee List';
        }
        field(13; "GE/Monday Working Day"; Boolean)
        {
            Caption = 'GE/Monday Working Day';
            InitValue = true;
        }
        field(14; "GE/Tuesday Working Day"; Boolean)
        {
            Caption = 'GE/Tuesday Working Day';
            InitValue = true;
        }
        field(15; "GE/Wednesday Working Day"; Boolean)
        {
            Caption = 'GE/Wednesday Working Day';
            InitValue = true;
        }
        field(16; "GE/Thursday Working Day"; Boolean)
        {
            Caption = 'GE/Thursday Working Day';
            InitValue = true;
        }
        field(17; "GE/Friday Working Day"; Boolean)
        {
            Caption = 'GE/Friday Working Day';
            InitValue = true;
        }
        field(18; "GE/Saturday Working Day"; Boolean)
        {
            Caption = 'GE/Saturday Working Day';
        }
        field(19; "GE/Sunday Working Day"; Boolean)
        {
            Caption = 'GE/Sunday Working Day';
        }
        field(20; "GE/From Age 1"; Decimal)
        {
            Caption = 'GE/From Age 1';
        }
        field(21; "GE/From Age 2"; Decimal)
        {
            Caption = 'GE/From Age 2';
        }
        field(22; "GE/From Age 3"; Decimal)
        {
            Caption = 'GE/From Age 3';
        }
        field(23; "GE/From Age 4"; Decimal)
        {
            Caption = 'GE/From Age 4';
        }
        field(24; "GE/From Age 5"; Decimal)
        {
            Caption = 'GE/From Age 5';
        }
        field(25; "GE/EP/Auto. Preproc. Inactive"; Boolean)
        {
            Caption = 'GE/EP/Auto. Preproc. Inactive';
        }
        field(26; "GE/Vaca.Car.Fwd.Pr.Y. Inactive"; Boolean)
        {
            Caption = 'GE/Vaca.Car.Fwd.Pr.Y. Inactive';
        }
        field(27; "GE/Vacation Year Control"; Option)
        {
            Caption = 'GE/Vacation Year Control';
            OptionCaption = ' ,Alternative Setup,Alternative Employee periodic,Alternative Employee daily';
            OptionMembers = " ","Alternative Setup","Alternative Employee periodic","Alternative Employee daily";
        }
        field(28; "GE/Begin altern. Vac. Year"; Date)
        {
            Caption = 'GE/Begin altern. Vac. Year';
        }
        field(29; "GE/End altern. Vac. Year"; Date)
        {
            Caption = 'GE/End altern. Vac. Year';
        }
        field(30; "GE/Until Age 1"; Decimal)
        {
            Caption = 'GE/Until Age 1';
        }
        field(31; "GE/Standard Vacation 1"; Decimal)
        {
            Caption = 'GE/Standard Vacation 1';
        }
        field(32; "GE/Until Age 2"; Decimal)
        {
            Caption = 'GE/Until Age 2';
        }
        field(33; "GE/Standard Vacation 2"; Decimal)
        {
            Caption = 'GE/Standard Vacation 2';
        }
        field(34; "GE/Until Age 3"; Decimal)
        {
            Caption = 'GE/Until Age 3';
        }
        field(35; "GE/Standard Vacation 3"; Decimal)
        {
            Caption = 'GE/Standard Vacation 3';
        }
        field(36; "GE/Until Age 4"; Decimal)
        {
            Caption = 'GE/Until Age 4';
        }
        field(37; "GE/Standard Vacation 4"; Decimal)
        {
            Caption = 'GE/Standard Vacation 4';
        }
        field(38; "GE/Until Age 5"; Decimal)
        {
            Caption = 'GE/Until Age 5';
        }
        field(39; "GE/Standard Vacation 5"; Decimal)
        {
            Caption = 'GE/Standard Vacation 5';
        }
        field(40; "GE/Cause of Abs. Hist. Inact."; Boolean)
        {
            Caption = 'GE/Cause of Abs. Hist. Inact.';
        }
        field(41; "GE/Abs.Hist. Filter TA"; Text[80])
        {
            Caption = 'GE/Abs.Hist. Filter TA';
        }
        field(42; "GE/Auto.Dest.Journal - FDC"; Option)
        {
            Caption = 'GE/Auto.Dest.Journal - FDC';
            OptionCaption = ' ,Output Journal,Job Journal';
            OptionMembers = " ","Output Journal","Job Journal";
        }
        field(43; "GE/TV-Access only for TV-User"; Boolean)
        {
            Caption = 'GE/TV-Access only for TV-User';
        }
        field(44; "GE/TA activate total Value"; Boolean)
        {
            Caption = 'GE/TA activate total Value';
        }
        field(45; "GE/TA Pay Types editable"; Boolean)
        {
            Caption = 'GE/TA Pay Types editable';
        }
        field(46; "GE/Working Days / Week"; Integer)
        {
            Caption = 'GE/Working Days / Week';
        }
        field(47; "GE/EP/Marked no Target Time"; Boolean)
        {
            Caption = 'GE/EP/Marked no Target Time';
        }
        field(48; "GE/EP/Auto. 42-Days Check"; Boolean)
        {
            Caption = 'GE/EP/Auto. 42-Days Check';
        }
        field(49; "GE/Employee Info Time Card"; Option)
        {
            Caption = 'GE/Employee Info Time Card';
            OptionCaption = ' ,Time Card - Standard,Time Card - Portrait Format,Time Card - Weekly List,Time Card - Weekly Sums,Time Card - Individual,Time Card - Landscape Format';
            OptionMembers = " ","Time Card - Standard","Time Card - Portrait Format","Time Card - Weekly List","Time Card - Weekly Sums","Time Card - Individual","Time Card - Landscape Format";
        }
        field(50; "TP/Rounding Clockings"; Integer)
        {
            Caption = 'TP/Rounding Clockings';
        }
        field(51; "TP/Dept.Entry/Order incl.Bre."; Boolean)
        {
            Caption = 'TP/Dept.Entry/Order incl.Bre.';
        }
        field(52; "TP/Break Target equal Present"; Boolean)
        {
            Caption = 'TP/Break Target equal Present';
        }
        field(53; "TP/First Field in the Form"; Option)
        {
            Caption = 'TP/First Field in the Form';
            OptionCaption = 'Employee-No.,ID No.,No Default';
            OptionMembers = "Employee-No.","ID No.","No Default";
        }
        field(54; "TP/Test Begin Clocking"; Time)
        {
            Caption = 'TP/Test Begin Clocking';
        }
        field(55; "TP/Test Begin Reference"; Code[1])
        {
            Caption = 'TP/Test Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(56; "TP/Test End Clocking"; Time)
        {
            Caption = 'TP/Test End Clocking';
        }
        field(57; "TP/Test End Reference"; Code[1])
        {
            Caption = 'TP/Test End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(58; "TP/Correction Target Inactive"; Boolean)
        {
            Caption = 'TP/Correction Target Inactive';
        }
        field(59; "TP/Correction Source Inactive"; Boolean)
        {
            Caption = 'TP/Correction Source Inactive';
        }
        field(60; "TP/Correction Ref Inactive"; Boolean)
        {
            Caption = 'TP/Correction Ref Inactive';
        }
        field(61; "TP/Correction Errand Inactive"; Boolean)
        {
            Caption = 'TP/Correction Errand Inactive';
        }
        field(62; "TP/Correction Dept Inactive"; Boolean)
        {
            Caption = 'TP/Correction Dept Inactive';
        }
        field(63; "TP/Correction Break Inactive"; Boolean)
        {
            Caption = 'TP/Correction Break Inactive';
        }
        field(64; "TP/Correction Account Inactive"; Boolean)
        {
            Caption = 'TP/Correction Account Inactive';
        }
        field(65; "TP/Correction Info Inactive"; Boolean)
        {
            Caption = 'TP/Correction Info Inactive';
        }
        field(66; "TP/Correction Actual Inactive"; Boolean)
        {
            Caption = 'TP/Correction Actual Inactive';
        }
        field(67; "TP/Correction Info-B Inactive"; Boolean)
        {
            Caption = 'TP/Correction Info-B Inactive';
        }
        field(68; "TP/Correction FDC Inactive"; Boolean)
        {
            Caption = 'TP/Correction FDC Inactive';
        }
        field(69; "TP/Correction Term Inactive"; Boolean)
        {
            Caption = 'TP/Correction Term Inactive';
        }
        field(70; "TP/Correction Round Inactive"; Boolean)
        {
            Caption = 'TP/Correction Round Inactive';
        }
        field(71; "TP/Correction Orig Inactive"; Boolean)
        {
            Caption = 'TP/Correction Orig Inactive';
        }
        field(72; "TP/Correction Error Inactive"; Boolean)
        {
            Caption = 'TP/Correction Error Inactive';
        }
        field(73; "TP/Correction Dept ft Inactive"; Boolean)
        {
            Caption = 'TP/Correction Dept ft Inactive';
        }
        field(74; "TP/Correction DeptFDC Inactive"; Boolean)
        {
            Caption = 'TP/Correction DeptFDC Inactive';
        }
        field(75; "TP/Correction Plan Inactive"; Boolean)
        {
            Caption = 'TP/Correction Plan Inactive';
        }
        field(76; "TP/Correction Manual Inactive"; Boolean)
        {
            Caption = 'TP/Correction Manual Inactive';
        }
        field(77; "TP/Correction AddInfo Inactive"; Boolean)
        {
            Caption = 'TP/Correction AddInfo Inactive';
        }
        field(79; "TP/Flex/long.act.Time w/o Info"; Boolean)
        {
            Caption = 'TP/Flex/long.act.Time w/o Info';
        }
        field(80; "TP/Flex/Targ. long. act. Time"; Boolean)
        {
            Caption = 'TP/Flex/Targ. long. act. Time';
        }
        field(81; "TP/Prio.Dayobj. instead Alter."; Boolean)
        {
            Caption = 'TP/Prio.Dayobj. instead Alter.';
        }
        field(82; "TP/Rel. Pos. Target 1.Clocking"; Boolean)
        {
            Caption = 'TP/Rel. Pos. Target 1.Clocking';
        }
        field(83; "TP/Half Absent Day dynamic"; Boolean)
        {
            Caption = 'TP/Half Absent Day dynamic';
        }
        field(84; "TP/Dyn. Break to Present Range"; Boolean)
        {
            Caption = 'TP/Dyn. Break to Present Range';
        }
        field(85; "TP/Auto. Calc. Carried forward"; Boolean)
        {
            Caption = 'TP/Auto. Calc. Carried forward';
        }
        field(86; "TP/Auto. Preproc. Sum-Values"; Boolean)
        {
            Caption = 'TP/Auto. Preproc. Sum-Values';
        }
        field(87; "TP/Processing Plan B Inactive"; Boolean)
        {
            Caption = 'TP/Processing Plan B Inactive';
        }
        field(88; "TP/Correction Abs.Day Inactive"; Boolean)
        {
            Caption = 'TP/Correction Abs.Day Inactive';
        }
        field(89; "TP/Swap ProgAnw ProgInfo"; Boolean)
        {
            Caption = 'TP/Swap ProgAnw ProgInfo';
        }
        field(90; "TP/Preproc. only Unfinished"; Boolean)
        {
            Caption = 'TP/Preproc. only Unfinished';
        }
        field(92; "TP/Add-In Size (Factor)"; Decimal)
        {
            Caption = 'TP/Add-In Size (Factor)';
        }
        field(93; "CC/PostingBatch by Time-Sort."; Boolean)
        {
            Caption = 'CC/PostingBatch by Time-Sort.';
        }
        field(94; "CC/first Errand -> Coming"; Time)
        {
            Caption = 'CC/first Errand -> Coming';
        }
        field(95; "CC/Soft-Term. with Search Item"; Boolean)
        {
            Caption = 'CC/Soft-Term. with Search Item';
        }
        field(96; "CC/Auto.Term-Delete Date/Leave"; Boolean)
        {
            Caption = 'CC/Auto.Term-Delete Date/Leave';
        }
        field(97; "CC/Order rounded Coming"; Boolean)
        {
            Caption = 'CC/Order rounded Coming';
        }
        field(98; "CC/Access Clocking not rounded"; Boolean)
        {
            Caption = 'CC/Access Clocking not rounded';
        }
        field(99; "CC/Delete identical Breaks"; Boolean)
        {
            Caption = 'CC/Delete identical Breaks';
        }
        field(100; "CC/Breaks not allocated"; Boolean)
        {
            Caption = 'CC/Breaks not allocated';
        }
        field(101; "CC/Filesend by Company"; Boolean)
        {
            Caption = 'CC/Filesend by Company';
        }
        field(102; "CC/Position ID No."; Integer)
        {
            Caption = 'CC/Position ID No.';
        }
        field(103; "CC/Length ID No."; Integer)
        {
            Caption = 'CC/Length ID No.';
        }
        field(104; "CC/Position Rec. Type"; Integer)
        {
            Caption = 'CC/Position Rec. Type';
        }
        field(105; "CC/Position Date (YY)"; Integer)
        {
            Caption = 'CC/Position Date (YY)';
        }
        field(106; "CC/Position Date (MM)"; Integer)
        {
            Caption = 'CC/Position Date (MM)';
        }
        field(107; "CC/Position Date (DD)"; Integer)
        {
            Caption = 'CC/Position Date (DD)';
        }
        field(108; "CC/Position Time (HH)"; Integer)
        {
            Caption = 'CC/Position Time (HH)';
        }
        field(109; "CC/Position Time (MM)"; Integer)
        {
            Caption = 'CC/Position Time (MM)';
        }
        field(110; "CC/Number of Terminal Calls"; Integer)
        {
            Caption = 'CC/Number of Terminal Calls';
        }
        field(111; "CC/Delay Terminal Calls Sec."; Integer)
        {
            Caption = 'CC/Delay Terminal Calls Sec.';
        }
        field(112; "CC/Soft-Term. Time-Out E-Info"; Boolean)
        {
            Caption = 'CC/Soft-Term. Time-Out E-Info';
        }
        field(113; "CC/Soft-Term. Clocking-Check"; Boolean)
        {
            Caption = 'CC/Soft-Term. Clocking-Check';
        }
        field(114; "CC/Soft-Term. Direct-Save"; Boolean)
        {
            Caption = 'CC/Soft-Term. Direct-Save';
        }
        field(115; "CC/Order creates Coming"; Boolean)
        {
            Caption = 'CC/Order creates Coming';
        }
        field(116; "CC/ID No. alphanumeric"; Boolean)
        {
            Caption = 'CC/ID No. alphanumeric';
        }
        field(117; "CC/Position Terminal No."; Integer)
        {
            Caption = 'CC/Position Terminal No.';
        }
        field(118; "CC/Length Terminal No."; Integer)
        {
            Caption = 'CC/Length Terminal No.';
        }
        field(119; "CC/Position Access Error-Code"; Integer)
        {
            Caption = 'CC/Position Access Error-Code';
        }
        field(120; "CC/Scheduler from Time"; Time)
        {
            Caption = 'CC/Scheduler from Time';
        }
        field(121; "CC/Scheduler to Time"; Time)
        {
            Caption = 'CC/Scheduler to Time';
        }
        field(122; "CC/Length Rec. Type"; Integer)
        {
            Caption = 'CC/Length Rec. Type';
        }
        field(123; "CC/Rec. Type Coming"; Code[10])
        {
            Caption = 'CC/Rec. Type Coming';
        }
        field(124; "CC/Rec. Type Leaving"; Code[10])
        {
            Caption = 'CC/Rec. Type Leaving';
        }
        field(125; "CC/Rec. Type Errand"; Code[10])
        {
            Caption = 'CC/Rec. Type Errand';
        }
        field(126; "CC/Rec. Type Break"; Code[10])
        {
            Caption = 'CC/Rec. Type Break';
        }
        field(127; "CC/Rec. Type Access"; Code[10])
        {
            Caption = 'CC/Rec. Type Access';
        }
        field(128; "CC/Length Record"; Integer)
        {
            Caption = 'CC/Length Record';
        }
        field(129; "CC/Soft-Term. with Empl-No."; Boolean)
        {
            Caption = 'CC/Soft-Term. with Empl-No.';
        }
        field(130; "DS/Posting Day Objects"; Option)
        {
            Caption = 'DS/Posting Day Objects';
            OptionCaption = 'All Organization Forms,Only Organization Forms with Reference ';
            OptionMembers = "All Organization Forms","Only Organization Forms with Reference ";
        }
        field(131; "CC/Soft Term. Password+User ID"; Boolean)
        {
            Caption = 'CC/Soft Term. Password+User ID';
        }
        field(132; "CC/Rec. Type Department"; Code[10])
        {
            Caption = 'CC/Rec. Type Department';
        }
        field(133; "CC/Position Department"; Integer)
        {
            Caption = 'CC/Position Department';
        }
        field(134; "CC/Length Department"; Integer)
        {
            Caption = 'CC/Length Department';
        }
        field(135; "CC/Rec. Type Info"; Code[10])
        {
            Caption = 'CC/Rec. Type Info';
        }
        field(136; "CC/Position Info"; Integer)
        {
            Caption = 'CC/Position Info';
        }
        field(137; "CC/Length Info"; Integer)
        {
            Caption = 'CC/Length Info';
        }
        field(138; "CC/FDC-Status in Progress"; Boolean)
        {
            Caption = 'CC/FDC-Status in Progress';
        }
        field(139; "CC/Soft-Term. w. Message Dev."; Boolean)
        {
            Caption = 'CC/Soft-Term. w. Message Dev.';
        }
        field(140; "CC/Call TimeclockingInsert"; Option)
        {
            Caption = 'CC/Call TimeclockingInsert';
            OptionCaption = ' ,Employee-No. only upon empty ID,Employee-No. instead of ID';
            OptionMembers = " ","Employee-No. only upon empty ID","Employee-No. instead of ID";
        }
        field(141; "CC/Clockings sequential"; Boolean)
        {
            Caption = 'CC/Clockings sequential';
        }
        field(142; "CC/Clockings sequential/Break"; Boolean)
        {
            Caption = 'CC/Clockings sequential/Break';
        }
        field(143; "CC/FDC-Valid-Check"; Boolean)
        {
            Caption = 'CC/FDC-Valid-Check';
        }
        field(144; "CC/Project-Valid-Check"; Boolean)
        {
            Caption = 'CC/Project-Valid-Check';
        }
        field(145; "CC/Parallel-Beg creates Coming"; Boolean)
        {
            Caption = 'CC/Parallel-Beg creates Coming';
        }
        field(146; "CC/Parallel-End creates Leav."; Boolean)
        {
            Caption = 'CC/Parallel-End creates Leav.';
        }
        field(147; "CC/Coming creates Department"; Boolean)
        {
            Caption = 'CC/Coming creates Department';
        }
        field(150; "CC/Soft Term. Coming Color"; Option)
        {
            Caption = 'CC/Soft Term. Coming Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(151; "CC/Soft Term. Leaving Color"; Option)
        {
            Caption = 'CC/Soft Term. Leaving Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(152; "CC/Soft Term. Errand Color"; Option)
        {
            Caption = 'CC/Soft Term. Errand Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(153; "CC/Soft Term. Break Color"; Option)
        {
            Caption = 'CC/Soft Term. Break Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(154; "CC/Soft Term. Dept. Color"; Option)
        {
            Caption = 'CC/Soft Term. Dept. Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(155; "CC/Soft Term. Project Color"; Option)
        {
            Caption = 'CC/Soft Term. Project Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(156; "CC/Soft Term. P-Info Color"; Option)
        {
            Caption = 'CC/Soft Term. P-Info Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(157; "CC/Soft Term. Pass. Chg. Color"; Option)
        {
            Caption = 'CC/Soft Term. Pass. Chg. Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(158; "CC/Soft Term. Mk.Vac.Ap.Color"; Option)
        {
            Caption = 'CC/Soft Term. Mk.Vac.Ap.Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(159; "CC/Soft Term. Vac-A. Color"; Option)
        {
            Caption = 'CC/Soft Term. Vac-A. Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(160; "CC/Rounding Coming"; Integer)
        {
            Caption = 'CC/Rounding Coming';
        }
        field(161; "CC/Rounding Leaving"; Integer)
        {
            Caption = 'CC/Rounding Leaving';
        }
        field(162; "CC/Rounding Errand"; Integer)
        {
            Caption = 'CC/Rounding Errand';
        }
        field(163; "CC/Rounding Break"; Integer)
        {
            Caption = 'CC/Rounding Break';
        }
        field(164; "CC/Rounding Department"; Integer)
        {
            Caption = 'CC/Rounding Department';
        }
        field(165; "CC/Rounding Access"; Integer)
        {
            Caption = 'CC/Rounding Access';
        }
        field(166; "CC/Rounding Info"; Integer)
        {
            Caption = 'CC/Rounding Info';
        }
        field(167; "CC/Rounding Order"; Integer)
        {
            Caption = 'CC/Rounding Order';
        }
        field(168; "CC/Filesend incl. Carried Fwd."; Boolean)
        {
            Caption = 'CC/Filesend incl. Carried Fwd.';
        }
        field(169; "CC/Filesend without Del-Record"; Boolean)
        {
            Caption = 'CC/Filesend without Del-Record';
        }
        field(170; "CC/Opt. Alter. Filesend-I-Face"; Option)
        {
            Caption = 'CC/Opt. Alter. Filesend-I-Face';
            OptionCaption = ' ,TempVision,KABA-Benzing,Hengstler,Adicom,SAP,TempVision variable,PCS,Acticon,Rexroth,Viisage,Timelink XML,Navision,KK1,MS-Project,Vectron,Datafox,Tour Planning,Datafox (advanced)';
            OptionMembers = " ",TempVision,"KABA-Benzing",Hengstler,Adicom,SAP,"TempVision variable",PCS,Acticon,Rexroth,Viisage,"Timelink XML",Navision,KK1,"MS-Project",Vectron,Datafox,"Tour Planning","Datafox (advanced)";
        }
        field(171; "CC/Alternative Terminal-I-Face"; Option)
        {
            Caption = 'CC/Alternative Terminal-I-Face';
            OptionCaption = ' ,TempVision,KABA-Benzing,Hengstler,Adicom,SAP,TempVision variable,PCS,Acticon,Rexroth,Viisage,Timelink XML,Navision,KK1,MS-Project,Vectron,Datafox,Tour Planning,FDC-Clocking Type,Vectron 2,Kakom';
            OptionMembers = " ",TempVision,"KABA-Benzing",Hengstler,Adicom,SAP,"TempVision variable",PCS,Acticon,Rexroth,Viisage,"Timelink XML",Navision,KK1,"MS-Project",Vectron,Datafox,"Tour Planning","FDC-Clocking Type","Vectron 2",Kakom;
        }
        field(172; "CC/Path/Alt.File Extern.Dat"; Text[80])
        {
            Caption = 'CC/Path/Alt.File Extern.Dat';
        }
        field(175; "CC/Path/Alt.File Filesend.Dat"; Text[80])
        {
            Caption = 'CC/Path/Alt.File Filesend.Dat';
        }
        field(176; "CC/Path/Alt.File Empl.Dat"; Text[80])
        {
            Caption = 'CC/Path/Alt.File Empl.Dat';
        }
        field(177; "CC/Path/Alt.File Copy.Dat"; Text[80])
        {
            Caption = 'CC/Path/Alt.File Copy.Dat';
        }
        field(178; "TP/Preprocessing Log-File"; Text[80])
        {
            Caption = 'TP/Preprocessing Log-File';
        }
        field(179; "CC/ST TC Make Corr. Pos1-21"; Integer)
        {
            Caption = 'CC/ST TC Make Corr. Pos1-21';
        }
        field(180; "CC/ST TP Approve Corr. Pos1-21"; Integer)
        {
            Caption = 'CC/ST TP Approve Corr. Pos1-21';
        }
        field(181; "CC/ST Absence Pos1-21"; Integer)
        {
            Caption = 'CC/ST Absence Pos1-21';
        }
        field(182; "CC/ST FDC-Order Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Order Pos1-21';
        }
        field(183; "CC/ST FDC-Order Begin Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Order Begin Pos1-21';
        }
        field(184; "CC/ST FDC-Order End Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Order End Pos1-21';
        }
        field(185; "CC/ST FDC-Task List Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Task List Pos1-21';
        }
        field(186; "CC/ST FDC-Quantity Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Quantity Pos1-21';
        }
        field(187; "CC/ST FDC-Finished Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Finished Pos1-21';
        }
        field(188; "CC/ST FDC Item/Line-No"; Option)
        {
            Caption = 'CC/ST FDC Item/Line-No';
            OptionCaption = ' ,Item,Line-No.';
            OptionMembers = " ",Item,"Line-No.";
        }
        field(189; "CC/ST FDC Work Center"; Option)
        {
            Caption = 'CC/ST FDC Work Center';
            OptionCaption = ' ,Work Center,Machine Center';
            OptionMembers = " ","Work Center","Machine Center";
        }
        field(190; "CC/ST FDC Task Sequence"; Option)
        {
            Caption = 'CC/ST FDC Task Sequence';
            OptionCaption = ' ,Filter Finished';
            OptionMembers = " ","Filter Finished";
        }
        field(191; "CC/ST FDC Task Sequence Msg"; Option)
        {
            Caption = 'CC/ST FDC Task Sequence Msg';
            OptionCaption = ' ,Warning,Rejection';
            OptionMembers = " ",Warning,Rejection;
        }
        field(192; "CC/ST FDC Run/Setup Time"; Option)
        {
            Caption = 'CC/ST FDC Run/Setup Time';
            OptionCaption = ' ,Run/Setup Time';
            OptionMembers = " ","Run/Setup Time";
        }
        field(193; "CC/ST FDC Barcode Inactive"; Boolean)
        {
            Caption = 'CC/ST FDC Barcode Inactive';
        }
        field(194; "CC/ST FDC Number-Block active"; Option)
        {
            Caption = 'CC/ST FDC Number-Block active';
            OptionCaption = ' ,Time Management,FDC,Time Management/FDC';
            OptionMembers = " ","Time Management",FDC,"Time Management/FDC";
        }
        field(195; "CC/ST FDC Msg.Rem. Qty.Under."; Option)
        {
            Caption = 'CC/ST FDC Msg.Rem. Qty.Under.';
            OptionCaption = ' ,Warning,Rejection';
            OptionMembers = " ",Warning,Rejection;
        }
        field(196; "CC/ST FDC-Collect Beg. Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Collect Beg. Pos1-21';
        }
        field(197; "CC/ST FDC-Collect End Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Collect End Pos1-21';
        }
        field(198; "CC/ST FDC Method Rem. Qty."; Option)
        {
            Caption = 'CC/ST FDC Method Rem. Qty.';
            OptionCaption = ' ,Prod. Routing Line,Prod. Order Line';
            OptionMembers = " ","Prod. Routing Line","Prod. Order Line";
        }
        field(199; "CC/ST TP Transfer Date"; Option)
        {
            Caption = 'CC/ST TP Transfer Date';
            OptionCaption = 'Today,Day before,Begin of Period';
            OptionMembers = Today,"Day before","Begin of Period";
        }
        field(200; "PE/Check Deviations"; Option)
        {
            Caption = 'PE/Check Deviations';
            OptionCaption = ' ,Check with Message,Check with Rejection';
            OptionMembers = " ","Check with Message","Check with Rejection";
        }
        field(201; "PE/Sum Filter already  integr."; Boolean)
        {
            Caption = 'PE/Sum Filter already  integr.';
        }
        field(202; "PE/Vac-Rem. EoYear Next Year"; Boolean)
        {
            Caption = 'PE/Vac-Rem. EoYear Next Year';
        }
        field(203; "PE/Cancel TV Absent Days Int."; Boolean)
        {
            Caption = 'PE/Cancel TV Absent Days Int.';
        }
        field(204; "PE/Cancel daily Payroll Int."; Boolean)
        {
            Caption = 'PE/Cancel daily Payroll Int.';
        }
        field(205; "PE/FDC-To-Date End of Period"; Boolean)
        {
            Caption = 'PE/FDC-To-Date End of Period';
        }
        field(206; "CC/Employee-Info to Table"; Boolean)
        {
            Caption = 'CC/Employee-Info to Table';
        }
        field(207; "PE/Cancel period.Payroll Int."; Boolean)
        {
            Caption = 'PE/Cancel period.Payroll Int.';
        }
        field(208; "PE/Cancel LES Absent Days Int."; Boolean)
        {
            Caption = 'PE/Cancel LES Absent Days Int.';
        }
        field(209; "PE/auto.Preproc. when Carried"; Boolean)
        {
            Caption = 'PE/auto.Preproc. when Carried';
        }
        field(210; "TP/Corr Filter unfinished"; Boolean)
        {
            Caption = 'TP/Corr Filter unfinished';
        }
        field(211; "TP/Corr Filter deviating"; Boolean)
        {
            Caption = 'TP/Corr Filter deviating';
        }
        field(212; "TP/Corr Filter OK"; Boolean)
        {
            Caption = 'TP/Corr Filter OK';
        }
        field(213; "TP/Corr Filter processed"; Boolean)
        {
            Caption = 'TP/Corr Filter processed';
        }
        field(214; "TP/Corr Filter manual"; Boolean)
        {
            Caption = 'TP/Corr Filter manual';
        }
        field(215; "TP/Corr Filter unpair ComLeav"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair ComLeav';
        }
        field(216; "TP/Corr Filter unpair Errand"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair Errand';
        }
        field(217; "TP/Corr Filter unpair Break"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair Break';
        }
        field(218; "TP/Corr Filter unpair Info"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair Info';
        }
        field(219; "TP/Corr Filter illog. ComLeav"; Boolean)
        {
            Caption = 'TP/Corr Filter illog. ComLeav';
        }
        field(220; "TP/Corr Filter TA Exceeded"; Boolean)
        {
            Caption = 'TP/Corr Filter TA Exceeded';
        }
        field(221; "TP/Corr Filter Pres on AbsDay"; Boolean)
        {
            Caption = 'TP/Corr Filter Pres on AbsDay';
        }
        field(222; "TP/Corr Filter Dept invalid"; Boolean)
        {
            Caption = 'TP/Corr Filter Dept invalid';
        }
        field(223; "TP/Corr Filter FDC invalid"; Boolean)
        {
            Caption = 'TP/Corr Filter FDC invalid';
        }
        field(224; "TP/Corr Filter FDC illogical"; Boolean)
        {
            Caption = 'TP/Corr Filter FDC illogical';
        }
        field(225; "TP/Corr Filter CASE-Procedure"; Boolean)
        {
            Caption = 'TP/Corr Filter CASE-Procedure';
        }
        field(230; "TP/Def. Order No. Dummy"; Code[20])
        {
            Caption = 'TP/Def. Order No. Dummy';
        }
        field(231; "TP/Def. Task No. Dummy"; Code[20])
        {
            Caption = 'TP/Def. Task No. Dummy';
        }
        field(232; "TP/Def. Dimension 1 Dummy"; Code[20])
        {
            Caption = 'TP/Def. Dimension 1 Dummy';
        }
        field(233; "TP/Def. Dimension 2 Dummy"; Code[20])
        {
            Caption = 'TP/Def. Dimension 2 Dummy';
        }
        field(234; "TP/Def. Dimension 3 Dummy"; Code[20])
        {
            Caption = 'TP/Def. Dimension 3 Dummy';
        }
        field(235; "TP/Def. Dimension 4 Dummy"; Code[20])
        {
            Caption = 'TP/Def. Dimension 4 Dummy';
        }
        field(236; "TP/no FDC-Split from Time-Plan"; Boolean)
        {
            Caption = 'TP/no FDC-Split from Time-Plan';
        }
        field(237; "TP/auto. FDC-Status Finished"; Boolean)
        {
            Caption = 'TP/auto. FDC-Status Finished';
        }
        field(238; "TP/Output FDC-Clocking invalid"; Boolean)
        {
            Caption = 'TP/Output FDC-Clocking invalid';
        }
        field(239; "CC/Auto. Delete alter. ID-No."; Boolean)
        {
            Caption = 'CC/Auto. Delete alter. ID-No.';
        }
        field(240; "CC/ST FDC Msg.Rem. Qty.Over."; Option)
        {
            Caption = 'CC/ST FDC Msg.Rem. Qty.Over.';
            OptionCaption = ' ,Warning,Rejection';
            OptionMembers = " ",Warning,Rejection;
        }
        field(241; "TP/CASE-Procedures History"; Boolean)
        {
            Caption = 'TP/CASE-Procedures History';
        }
        field(242; "PE/Sum Payroll no Filter Init"; Boolean)
        {
            Caption = 'PE/Sum Payroll no Filter Init';
        }
        field(245; "PE/Month auto.Vacation-Delete"; Integer)
        {
            Caption = 'PE/Month auto.Vacation-Delete';
        }
        field(246; "PE/TA auto.Vacation-Delete"; Code[10])
        {
            Caption = 'PE/TA auto.Vacation-Delete';
            TableRelation = "Time Account/T"."No.";
        }
        field(248; "PE/Int. in Corr. Journal"; Boolean)
        {
            Caption = 'PE/Int. in Corr. Journal';
        }
        field(249; "PE/Int. in Corr. Abs. Journal"; Boolean)
        {
            Caption = 'PE/Int. in Corr. Abs. Journal';
        }
        field(250; "PE/Autom. Processing Companies"; Boolean)
        {
            Caption = 'PE/Autom. Processing Companies';
        }
        field(252; "PE/Enter Period Date"; Boolean)
        {
            Caption = 'PE/Enter Period Date';
        }
        field(253; "PE/Enter Period Date + 1"; Boolean)
        {
            Caption = 'PE/Enter Period Date + 1';
        }
        field(254; "PE/External File Org-Value"; Text[20])
        {
            Caption = 'PE/External File Org-Value';
        }
        field(255; "PE/Cancel FDC Integration"; Boolean)
        {
            Caption = 'PE/Cancel FDC Integration';
        }
        field(256; "PE/Empl-No-Pay instead Empl-No"; Boolean)
        {
            Caption = 'PE/Empl-No-Pay instead Empl-No';
        }
        field(257; "GE/Inactive Insert EMPL/TA"; Boolean)
        {
            Caption = 'GE/Inactive Insert EMPL/TA';
        }
        field(258; "PE/Vac-Entitlem. init. Leaving"; Boolean)
        {
            Caption = 'PE/Vac-Entitlem. init. Leaving';
        }
        field(259; "GE/KUMA Absences-Export"; Boolean)
        {
            Caption = 'GE/KUMA Absences-Export';
        }
        field(260; "GE/NAPA Absences-Export"; Boolean)
        {
            Caption = 'GE/NAPA Absences-Export';
        }
        field(261; "GE/SITE Absences-Export"; Boolean)
        {
            Caption = 'GE/SITE Absences-Export';
        }
        field(262; "GE/Vacation Aliquotation"; Boolean)
        {
            Caption = 'GE/Vacation Aliquotation';
        }
        field(263; "GE/AT-Workflow to Sup. at Canc"; Boolean)
        {
            Caption = 'GE/AT-Workflow to Sup. at Canc';
        }
        field(264; "GE/FDC-Module active"; Option)
        {
            Caption = 'GE/FDC-Module active';
            OptionCaption = 'Manufacturing,Project';
            OptionMembers = Manufacturing,Project;
        }
        field(265; "GE/EM/Auto. Preproc./Car.Forw."; Boolean)
        {
            Caption = 'GE/EM/Auto. Preproc./Car.Forw.';
        }
        field(266; "GE/Filter Subform AT-Workflow"; Option)
        {
            Caption = 'GE/Filter Subform AT-Workflow';
            OptionCaption = 'Division,User-Administration';
            OptionMembers = Division,"User-Administration";
        }
        field(267; "GE/AT-Workflow Parallel Si/Su"; Boolean)
        {
            Caption = 'GE/AT-Workflow Parallel Si/Su';
        }
        field(268; "GE/Condition from DateOfBirth"; Date)
        {
            Caption = 'GE/Condition from DateOfBirth';
        }
        field(269; "GE/Condition to DateOfBirth"; Date)
        {
            Caption = 'GE/Condition to DateOfBirth';
        }
        field(270; "GE/Youth Labor Protection Law"; Boolean)
        {
            Caption = 'GE/Youth Labor Protection Law';
        }
        field(271; "GE/ST Password-Encryption"; Boolean)
        {
            Caption = 'GE/ST Password-Encryption';
        }
        field(272; "GE/Preprocessing Record Locked"; Boolean)
        {
            Caption = 'GE/Preprocessing Record Locked';
        }
        field(273; "GE/Customer Parameter alter"; Code[10])
        {
            Caption = 'GE/Customer Parameter alter';
        }
        field(277; "GE/Employee Sync. Filter"; Text[80])
        {
            Caption = 'GE/Employee Sync. Filter';
        }
        field(278; "GE/Path Server/DLL Import/Inst"; Text[120])
        {
            Caption = 'GE/Path Server/DLL Import/Inst';
        }
        field(279; "GE/Server Time Delay (sec.)"; Integer)
        {
            Caption = 'GE/Server Time Delay (sec.)';
        }
        field(280; "GE/Copy Company Employees"; Option)
        {
            Caption = 'GE/Copy Company Employees';
            OptionCaption = ' ,Equal Employee No.,Based on Employee Field Lines';
            OptionMembers = " ","Equal Employee No.","Based on Employee Field Lines";
        }
        field(281; "GE/From Belonging to Comp. 1"; Decimal)
        {
            Caption = 'GE/From Belonging to Comp. 1';
        }
        field(282; "GE/Until Belonging to Comp. 1"; Decimal)
        {
            Caption = 'GE/Until Belonging to Comp. 1';
        }
        field(283; "GE/Agreed Vacation Comp. 1"; Decimal)
        {
            Caption = 'GE/Agreed Vacation Comp. 1';
        }
        field(284; "GE/From Belonging to Comp. 2"; Decimal)
        {
            Caption = 'GE/From Belonging to Comp. 2';
        }
        field(285; "GE/Until Belonging to Comp. 2"; Decimal)
        {
            Caption = 'GE/Until Belonging to Comp. 2';
        }
        field(286; "GE/Agreed Vacation Comp. 2"; Decimal)
        {
            Caption = 'GE/Agreed Vacation Comp. 2';
        }
        field(287; "GE/From Belonging to Comp. 3"; Decimal)
        {
            Caption = 'GE/From Belonging to Comp. 3';
        }
        field(288; "GE/Until Belonging to Comp. 3"; Decimal)
        {
            Caption = 'GE/Until Belonging to Comp. 3';
        }
        field(289; "GE/Agreed Vacation Comp. 3"; Decimal)
        {
            Caption = 'GE/Agreed Vacation Comp. 3';
        }
        field(290; "GE/From Belonging to Comp. 4"; Decimal)
        {
            Caption = 'GE/From Belonging to Comp. 4';
        }
        field(291; "GE/Until Belonging to Comp. 4"; Decimal)
        {
            Caption = 'GE/Until Belonging to Comp. 4';
        }
        field(292; "GE/Agreed Vacation Comp. 4"; Decimal)
        {
            Caption = 'GE/Agreed Vacation Comp. 4';
        }
        field(293; "GE/From Belonging to Comp. 5"; Decimal)
        {
            Caption = 'GE/From Belonging to Comp. 5';
        }
        field(294; "GE/Until Belonging to Comp. 5"; Decimal)
        {
            Caption = 'GE/Until Belonging to Comp. 5';
        }
        field(295; "GE/Agreed Vacation Comp. 5"; Decimal)
        {
            Caption = 'GE/Agreed Vacation Comp. 5';
        }
        field(296; "GE/From Belonging to Comp. 6"; Decimal)
        {
            Caption = 'GE/From Belonging to Comp. 6';
        }
        field(297; "GE/Until Belonging to Comp. 6"; Decimal)
        {
            Caption = 'GE/Until Belonging to Comp. 6';
        }
        field(298; "GE/Agreed Vacation Comp. 6"; Decimal)
        {
            Caption = 'GE/Agreed Vacation Comp. 6';
        }
        field(299; "GE/Vacation/Weeks"; Decimal)
        {
            Caption = 'GE/Vacation/Weeks';
        }
        field(300; "XU/Parameter SYSTEM 12-50"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-50';
        }
        field(301; "XU/Parameter SYSTEM 12-120"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-120';
        }
        field(302; "XU/Parameter SYSTEM 12-250"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-250';
        }
        field(303; "XU/Parameter SYSTEM 12-500"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-500';
        }
        field(304; "XU/Parameter SYSTEM 12-750"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-750';
        }
        field(305; "XU/Parameter SYSTEM 12-1500"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-1500';
        }
        field(306; "XU/Parameter SYSTEM 12-5000"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-5000';
        }
        field(309; "XU/Parameter SYSTEM 12-LIC"; Integer)
        {
            Caption = 'XU/Parameter SYSTEM 12-LIC';
        }
        field(310; "XU/Parameter SYSTEM 12-Date"; Date)
        {
            Caption = 'XU/Parameter SYSTEM 12-Date';
        }
        field(311; "GE/BLOB DLL-Installation"; BLOB)
        {
            Caption = 'GE/BLOB DLL-Installation';
        }
        field(315; "TP/Default Text Dim.1"; Text[10])
        {
            Caption = 'TP/Default Text Dim.1';
        }
        field(316; "TP/Default Text Dim.2"; Text[10])
        {
            Caption = 'TP/Default Text Dim.2';
        }
        field(317; "TP/Default Text Dim.3"; Text[10])
        {
            Caption = 'TP/Default Text Dim.3';
        }
        field(318; "TP/Default Text Dim.4"; Text[10])
        {
            Caption = 'TP/Default Text Dim.4';
        }
        field(320; "TP/Default Text Com. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Com. Orig';
        }
        field(321; "TP/Default Text Com. Act."; Text[10])
        {
            Caption = 'TP/Default Text Com. Act.';
        }
        field(322; "TP/Default Text Com. Targ."; Text[10])
        {
            Caption = 'TP/Default Text Com. Targ.';
        }
        field(323; "TP/Default Text Leav. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Leav. Orig';
        }
        field(324; "TP/Default Text Leav. Act."; Text[10])
        {
            Caption = 'TP/Default Text Leav. Act.';
        }
        field(325; "TP/Default Text Leav. Targ."; Text[10])
        {
            Caption = 'TP/Default Text Leav. Targ.';
        }
        field(326; "TP/Default Text Err. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Err. Orig';
        }
        field(327; "TP/Default Text Bre. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Bre. Orig';
        }
        field(328; "TP/Default Text Dep. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Dep. Orig';
        }
        field(329; "TP/Default Text Dep. Entry"; Text[10])
        {
            Caption = 'TP/Default Text Dep. Entry';
        }
        field(330; "TP/Default Text Acc. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Acc. Orig';
        }
        field(331; "TP/Default Text Inf. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Inf. Orig';
        }
        field(332; "TP/Default Text Ord. Orig"; Text[10])
        {
            Caption = 'TP/Default Text Ord. Orig';
        }
        field(333; "TP/Default Text Order"; Text[10])
        {
            Caption = 'TP/Default Text Order';
        }
        field(334; "TP/Default Text Task"; Text[10])
        {
            Caption = 'TP/Default Text Task';
        }
        field(335; "TP/Default Text Bre. Act."; Text[10])
        {
            Caption = 'TP/Default Text Bre. Act.';
        }
        field(336; "TP/Default Text Inf. Entry"; Text[10])
        {
            Caption = 'TP/Default Text Inf. Entry';
        }
        field(340; "GE/EmplInfo ComeOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ComeOrig Inactive';
        }
        field(341; "GE/EmplInfo ComeAct Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ComeAct Inactive';
        }
        field(342; "GE/EmplInfo ComeRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ComeRef Inactive';
        }
        field(343; "GE/EmplInfo LeaveOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo LeaveOrig Inactive';
        }
        field(344; "GE/EmplInfo LeaveAct Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo LeaveAct Inactive';
        }
        field(345; "GE/EmplInfo LeaveRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo LeaveRef Inactive';
        }
        field(346; "GE/EmplInfo ErrOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ErrOrig Inactive';
        }
        field(347; "GE/EmplInfo ErrRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ErrRef Inactive';
        }
        field(348; "GE/EmplInfo DeptOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo DeptOrig Inactive';
        }
        field(349; "GE/EmplInfo DeptRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo DeptRef Inactive';
        }
        field(350; "GE/EmplInfo DeptEntry Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo DeptEntry Inactive';
        }
        field(351; "GE/EmplInfo BreOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo BreOrig Inactive';
        }
        field(352; "GE/EmplInfo BreRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo BreRef Inactive';
        }
        field(353; "GE/EmplInfo AccOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo AccOrig Inactive';
        }
        field(354; "GE/EmplInfo AccRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo AccRef Inactive';
        }
        field(355; "GE/EmplInfo OBegOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo OBegOrig Inactive';
        }
        field(356; "GE/EmplInfo Parallel Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Parallel Inactive';
        }
        field(357; "GE/EmplInfo OBegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo OBegEnt Inactive';
        }
        field(358; "GE/EmplInfo TaBegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo TaBegEnt Inactive';
        }
        field(359; "GE/EmplInfo D1BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D1BegEnt Inactive';
        }
        field(360; "GE/EmplInfo D2BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D2BegEnt Inactive';
        }
        field(361; "GE/EmplInfo D3BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D3BegEnt Inactive';
        }
        field(362; "GE/EmplInfo D4BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D4BegEnt Inactive';
        }
        field(363; "GE/EmplInfo InfoOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo InfoOrig Inactive';
        }
        field(364; "GE/EmplInfo InfoRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo InfoRef Inactive';
        }
        field(365; "GE/EmplInfo InfoInp Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo InfoInp Inactive';
        }
        field(366; "GE/EmplInfo Quantity Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Quantity Inactive';
        }
        field(367; "GE/EmplInfo Time Acc. Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Time Acc. Inactive';
        }
        field(368; "GE/EmplInfo Serial Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Serial Inactive';
        }
        field(369; "GE/EmplInfo Scrap Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Scrap Inactive';
        }
        field(370; "PE/Reject Order-Matchcode"; Code[20])
        {
            Caption = 'PE/Reject Order-Matchcode';
        }
        field(380; "PE/Reject unprod. Order No."; Boolean)
        {
            Caption = 'PE/Reject unprod. Order No.';
        }
        field(382; "PE/Reject unprod. Task No."; Boolean)
        {
            Caption = 'PE/Reject unprod. Task No.';
        }
        field(384; "PE/Reject unprod. Dimension1"; Boolean)
        {
            Caption = 'PE/Reject unprod. Dimension1';
        }
        field(386; "PE/Reject unprod. Dimension2"; Boolean)
        {
            Caption = 'PE/Reject unprod. Dimension2';
        }
        field(388; "PE/Reject unprod. Dimension3"; Boolean)
        {
            Caption = 'PE/Reject unprod. Dimension3';
        }
        field(390; "PE/Dimension4 unprod.reject"; Boolean)
        {
            Caption = 'PE/Dimension4 unprod.reject';
        }
        field(391; "XU/Parameter SYSTEM 12-40"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-40';
        }
        field(392; "XU/Parameter SYSTEM 12-80"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-80';
        }
        field(393; "XU/Parameter SYSTEM 12-150"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-150';
        }
        field(394; "XU/Parameter SYSTEM 12-300"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-300';
        }
        field(395; "XU/Parameter SYSTEM 12-850"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-850';
        }
        field(396; "XU/Parameter SYSTEM 12-3000"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-3000';
        }
        field(397; "XU/Parameter SYSTEM 12-1200"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-1200';
        }
        field(398; "XU/Parameter SYSTEM variable"; Integer)
        {
            Caption = 'XU/Parameter SYSTEM variable';
        }
        field(399; "XU/Parameter SYSTEM DS"; Code[10])
        {
            Caption = 'XU/Parameter SYSTEM DS';
        }
        field(400; "IE/Def. Terminal No."; Code[10])
        {
            Caption = 'IE/Def. Terminal No.';
        }
        field(401; "IE/Def. Ext. Company Clocking"; Code[10])
        {
            Caption = 'IE/Def. Ext. Company Clocking';
        }
        field(402; "IE/Def. Task Type TP"; Code[20])
        {
            Caption = 'IE/Def. Task Type TP';
        }
        field(412; "IE/Import Time Objects"; Boolean)
        {
            Caption = 'IE/Import Time Objects';
        }
        field(413; "IE/Import No. of Days Clocked"; Integer)
        {
            Caption = 'IE/Import No. of Days Clocked';
        }
        field(414; "IE/Import Balances from Date"; Date)
        {
            Caption = 'IE/Import Balances from Date';
        }
        field(415; "XU/Parameter SYSTEM 12-2000"; Boolean)
        {
            Caption = 'XU/Parameter SYSTEM 12-2000';
        }
        field(420; "GE/TA-Sums 1.Hierarchy"; Option)
        {
            Caption = 'GE/TA-Sums 1.Hierarchy';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(421; "GE/TA-Sums 2.Hierarchy"; Option)
        {
            Caption = 'GE/TA-Sums 2.Hierarchy';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(422; "GE/TA-Sums 3.Hierarchy"; Option)
        {
            Caption = 'GE/TA-Sums 3.Hierarchy';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(431; "DS/Duty Scheduling Design"; Option)
        {
            Caption = 'DS/Duty Scheduling Control';
            OptionCaption = 'Standard,Graphical,Grid';
            OptionMembers = Standard,Graphical,Grid;
        }
        field(438; "DS/Def. Entry Day Objects"; Option)
        {
            Caption = 'DS/Def. Entry Day Objects';
            OptionCaption = 'Number,Description 2,Symbol';
            OptionMembers = Number,"Description 2",Symbol;
        }
        field(439; "DS/Def. Entry Absent Days"; Option)
        {
            Caption = 'DS/Def. Entry Absent Days';
            OptionCaption = 'Number,Description 2,Character';
            OptionMembers = Number,"Description 2",Symbol,Character;
        }
        field(440; "DS/Def. Output Time Range"; Option)
        {
            Caption = 'DS/Def. Output Time Range';
            OptionCaption = 'Date,Time';
            OptionMembers = Date,Time;
        }
        field(441; "DS/Def. Output Day Objects"; Option)
        {
            Caption = 'DS/Def. Output Day Objects';
            OptionCaption = 'Description,Description / Number,Description 2,Description 2 / Number,Symbol,Symbol / Number,Number,Time';
            OptionMembers = Description,"Description / Number","Description 2","Description 2 / Number",Symbol,"Symbol / Number",Number,Time;
        }
        field(442; "DS/Def. Output Defaults"; Option)
        {
            Caption = 'DS/Def. Output Defaults';
            OptionCaption = 'Actual,Actual / Default,Actual / Default / Difference';
            OptionMembers = Actual,"Actual / Default","Actual / Default / Difference";
        }
        field(443; "DS/Def. Org-Value from"; Code[20])
        {
            Caption = 'DS/Def. Org-Value from';
            TableRelation = IF ("DS/Def. Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(444; "DS/Def. Org-Form"; Option)
        {
            Caption = 'DS/Def. Organization Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(445; "DS/Def. Output Font Bold"; Boolean)
        {
            Caption = 'DS/Def. Output Font Bold';
        }
        field(446; "DS/Def. Output Absent Days"; Option)
        {
            Caption = 'DS/Def. Output Absent Days';
            OptionCaption = 'Description,Description / Number,Description 2,Description 2 / Number,Symbol Fullday,Symbol Fullday / Number,Symbol Halfday,Character Fullday,Character Fullday / Number,Character Halfday,Number Fullday,Number Halfday';
            OptionMembers = Description,"Description / Number","Description 2","Description 2 / Number","Symbol Fullday","Symbol Fullday / Number","Symbol Halfday","Character Fullday","Character Fullday / Number","Character Halfday","Number Fullday","Number Halfday";
        }
        field(447; "DS/Def. Output Capacities"; Option)
        {
            Caption = 'DS/Def. Output Capacities';
            OptionCaption = 'Days,Hours';
            OptionMembers = Days,Hours;
        }
        field(448; "DS/Def. Org-Value until"; Code[20])
        {
            Caption = 'DS/Def. Org-Value until';
            TableRelation = IF ("DS/Def. Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(449; "DS/Def. Output TA-Group No."; Code[10])
        {
            Caption = 'DS/Def. Output TA-Group No.';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(450; "DS/Empl. Time Object Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Time Object Inactive';
        }
        field(451; "DS/Empl. Default Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Default Inactive';
        }
        field(452; "DS/Empl. Planned Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Planned Inactive';
        }
        field(453; "DS/Empl. Processed Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Processed Inactive';
        }
        field(454; "DS/Empl. Coming/Leav. Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Coming/Leav. Inactive';
        }
        field(455; "DS/Empl. Time Grid Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Time Grid Inactive';
        }
        field(456; "DS/Empl. Break Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Break Inactive';
        }
        field(457; "DS/Empl. Miss. Day 1 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Miss. Day 1 Inactive';
        }
        field(458; "DS/Empl. Miss. Day 2 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Miss. Day 2 Inactive';
        }
        field(459; "DS/Empl. Net Time Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Net Time Inactive';
        }
        field(460; "DS/Empl. Overtime Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Overtime Inactive';
        }
        field(461; "DS/Empl. Miss. Time Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Miss. Time Inactive';
        }
        field(462; "DS/Empl. Department Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Department Inactive';
        }
        field(463; "DS/Empl. Order Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Order Inactive';
        }
        field(464; "DS/Empl. Task Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Task Inactive';
        }
        field(465; "DS/Empl. Dimension 1 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 1 Inactive';
        }
        field(466; "DS/Empl. Dimension 2 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 2 Inactive';
        }
        field(467; "DS/Empl. Dimension 3 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 3 Inactive';
        }
        field(468; "DS/Empl. Dimension 4 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 4 Inactive';
        }
        field(469; "DS/Num. Total Inactive"; Boolean)
        {
            Caption = 'DS/Num. Total Inactive';
        }
        field(470; "DS/Num. Planned Inactive"; Boolean)
        {
            Caption = 'DS/Num. Planned Inactive';
        }
        field(471; "DS/Num. Absent Inactive"; Boolean)
        {
            Caption = 'DS/Num. Absent Inactive';
        }
        field(472; "DS/Num. Available Inactive"; Boolean)
        {
            Caption = 'DS/Num. Available Inactive';
        }
        field(480; "DS/Num. Qual.Level 1 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 1 Inactive';
        }
        field(481; "DS/Num. Qual.Level 2 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 2 Inactive';
        }
        field(482; "DS/Num. Qual.Level 3 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 3 Inactive';
        }
        field(483; "DS/Num. Qual.Level 4 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 4 Inactive';
        }
        field(484; "DS/Num. Qual.Level 5 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 5 Inactive';
        }
        field(485; "DS/Num. Qual.Level 6 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 6 Inactive';
        }
        field(486; "DS/Num. Qual.Level 7 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 7 Inactive';
        }
        field(487; "DS/Num. Qual.Level 8 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 8 Inactive';
        }
        field(488; "DS/Num. Qual.Level 9 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 9 Inactive';
        }
        field(489; "DS/Num. Qual.Level 10 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 10 Inactive';
        }
        field(490; "DS/Num. Day Object Inactive"; Boolean)
        {
            Caption = 'DS/Num. Day Object Inactive';
        }
        field(491; "DS/Num. Early Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Early Shift Inactive';
        }
        field(492; "DS/Num. Late Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Late Shift Inactive';
        }
        field(493; "DS/Num. Night Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Night Shift Inactive';
        }
        field(494; "DS/Num. Normal Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Normal Shift Inactive';
        }
        field(495; "DS/Num. Special Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Special Shift Inactive';
        }
        field(496; "DS/Num. Department Inactive"; Boolean)
        {
            Caption = 'DS/Num. Department Inactive';
        }
        field(497; "DS/Num. Order Inactive"; Boolean)
        {
            Caption = 'DS/Num. Order Inactive';
        }
        field(498; "DS/Num. Task Inactive"; Boolean)
        {
            Caption = 'DS/Num. Task Inactive';
        }
        field(499; "DS/Num. Dimension 1 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 1 Inactive';
        }
        field(500; "DS/Num. Dimension 2 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 2 Inactive';
        }
        field(501; "DS/Num. Dimension 3 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 3 Inactive';
        }
        field(502; "DS/Num. Dimension 4 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 4 Inactive';
        }
        field(503; "DS/Employee Fields Inactive"; Boolean)
        {
            Caption = 'DS/Employee Fields Inactive';
        }
        field(504; "DS/Empl. TA Target inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Target inactive';
        }
        field(505; "DS/Empl. TA Present inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Present inactive';
        }
        field(506; "DS/Empl. TA Balance inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Balance inactive';
        }
        field(507; "DS/Empl. TA Indiv inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Indiv inactive';
        }
        field(510; "DS/Num. Qual.Level 11 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 11 Inactive';
        }
        field(511; "DS/Num. Qual.Level 12 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 12 Inactive';
        }
        field(512; "DS/Num. Qual.Level 13 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 13 Inactive';
        }
        field(513; "DS/Num. Qual.Level 14 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 14 Inactive';
        }
        field(514; "DS/Num. Qual.Level 15 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 15 Inactive';
        }
        field(515; "DS/Num. Qual.Level 16 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 16 Inactive';
        }
        field(516; "DS/Num. Qual.Level 17 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 17 Inactive';
        }
        field(517; "DS/Num. Qual.Level 18 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 18 Inactive';
        }
        field(518; "DS/Num. Qual.Level 19 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 19 Inactive';
        }
        field(519; "DS/Num. Qual.Level 20 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 20 Inactive';
        }
        field(520; "DS/Empl. Plan B Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Plan B Inactive';
        }
        field(530; "DS/Def. Output only Attendees"; Boolean)
        {
            Caption = 'DS/Def. Output only Attendees';
        }
        field(531; "DS/Def. Output only own Empl."; Boolean)
        {
            Caption = 'DS/Def. Output only own Empl.';
        }
        field(532; "DS/Def. Output  only Time Acc."; Boolean)
        {
            Caption = 'DS/Def. Output  only Time Acc.';
        }
        field(533; "DS/Def. Output  Abs.D.Worktime"; Boolean)
        {
            Caption = 'DS/Def. Output  Abs.D.Worktime';
        }
        field(550; "DS/Output Activity/Percent"; Boolean)
        {
            Caption = 'DS/Output Activity/Percent';
        }
        field(551; "DS/Entry Absent Days half Days"; Boolean)
        {
            Caption = 'DS/Entry Absent Days half Days';
        }
        field(552; "DS/Alternatives not save"; Boolean)
        {
            Caption = 'DS/Alternatives not save';
        }
        field(553; "DS/Entry TObject inactive"; Boolean)
        {
            Caption = 'DS/Entry TObject inactive';
        }
        field(554; "DS/Entry Absent Day inactive"; Boolean)
        {
            Caption = 'DS/Entry Absent Day inactive';
        }
        field(555; "DS/Entry Overtime inactive"; Boolean)
        {
            Caption = 'DS/Entry Overtime inactive';
        }
        field(556; "DS/Entry Absent Time inactive"; Boolean)
        {
            Caption = 'DS/Entry Absent Time inactive';
        }
        field(557; "DS/Entry Department inactive"; Boolean)
        {
            Caption = 'DS/Entry Department inactive';
        }
        field(558; "DS/Entry FDC inactive"; Boolean)
        {
            Caption = 'DS/Entry FDC inactive';
        }
        field(559; "DS/Entry Time Clock. inactive"; Boolean)
        {
            Caption = 'DS/Entry Time Clock. inactive';
        }
        field(560; "DS/Prev. Periods save inactive"; Boolean)
        {
            Caption = 'DS/Prev. Periods save inactive';
        }
        field(561; "DS/Balance calc. when quit"; Boolean)
        {
            Caption = 'DS/Balance calc. when quit';
        }
        field(562; "DS/Default-Daydate Today"; Boolean)
        {
            Caption = 'DS/Default-Daydate Today';
        }
        field(563; "DS/Sorting Output"; Option)
        {
            Caption = 'DS/Sorting Output';
            OptionCaption = ' ,Planning-Programs,Shift-Classification,Employee-No.,Name';
            OptionMembers = " ","Planning-Programs","Shift-Classification","Employee-No.",Name;
        }
        field(685; "MI/Employment Date"; Integer)
        {
            Caption = 'MI/Employment Date';
        }
        field(690; "MI/Leaving Date"; Integer)
        {
            Caption = 'MI/Leaving Date';
        }
        field(700; "MI/Medical Checkup"; Integer)
        {
            Caption = 'MI/Medical Checkup';
        }
        field(705; "MI/Fixed-term Contract until"; Integer)
        {
            Caption = 'MI/Fixed-term Contract until';
        }
        field(710; "MI/End Time of Probation"; Integer)
        {
            Caption = 'MI/End Time of Probation';
        }
        field(715; "MI/End Work Permit"; Integer)
        {
            Caption = 'MI/End Work Permit';
        }
        field(750; "MI/Jubilee Number of Years 1"; Integer)
        {
            Caption = 'MI/Jubilee Number of Years 1';
        }
        field(751; "MI/Jubilee Number of Years 2"; Integer)
        {
            Caption = 'MI/Jubilee Number of Years 2';
        }
        field(752; "MI/Jubilee Number of Years 3"; Integer)
        {
            Caption = 'MI/Jubilee Number of Years 3';
        }
        field(753; "MI/Jubilee Number of Years 4"; Integer)
        {
            Caption = 'MI/Jubilee Number of Years 4';
        }
        field(754; "MI/Jubilee Number of Years 5"; Integer)
        {
            Caption = 'MI/Jubilee Number of Years 5';
        }
        field(755; "MI/Jubilee Time Range Days"; Integer)
        {
            Caption = 'MI/Jubilee Time Range Days';
        }
        field(790; "MI/Other Birthdays inactive"; Boolean)
        {
            Caption = 'MI/Other Birthdays inactive';
        }
        field(800; "CC/FDC-Collect End Allocation"; Boolean)
        {
            Caption = 'CC/FDC-Collect End Allocation';
        }
        field(801; "CC/FDC-Qty Alloc. last Order"; Boolean)
        {
            Caption = 'CC/FDC-Qty Alloc. last Order';
        }
        field(810; "GE/EP/Auto. Preproc. Future"; Boolean)
        {
            Caption = 'GE/EP/Auto. Preproc. Inactive';
        }
        field(811; "GE/ST SaveClocking w.TermServ"; Boolean)
        {
            Caption = 'GE/ST SaveClocking w. TermServ';
        }
        field(812; "GE/Admin. E-Mail Address"; Text[80])
        {
            Caption = 'GE/Admin. E-Mail Address';
        }
        field(813; "GE/Path/File Empl. Import"; Text[120])
        {
            Caption = 'GE/Path/File Empl. Import';
        }
        field(815; "CC/ST Alloc. Line No."; Boolean)
        {
            Caption = 'CC/ST Alloc. Line No.';
        }
        field(820; "CC/ST TC Coming inactive"; Boolean)
        {
            Caption = 'CC/ST TC Coming inactive';
        }
        field(821; "CC/ST TC Leaving inactive"; Boolean)
        {
            Caption = 'CC/ST TC Leaving inactive';
        }
        field(822; "CC/ST TC Break inactive"; Boolean)
        {
            Caption = 'CC/ST TC Break inactive';
        }
        field(823; "CC/ST TC Errand inactive"; Boolean)
        {
            Caption = 'CC/ST TC Errand inactive';
        }
        field(824; "CC/ST TC Info inactive"; Boolean)
        {
            Caption = 'CC/ST TC Info inactive';
        }
        field(825; "CC/ST TC FDC inactive"; Boolean)
        {
            Caption = 'CC/ST TC FDC inactive';
        }
        field(826; "CC/ST LimitedUser w.Message"; Boolean)
        {
            Caption = 'CC/ST LimitedUser w.Message';
        }
        field(827; "CC/ST TC compact Mail"; Boolean)
        {
            Caption = 'CC/ST TC compact Mail';
        }
        field(830; "CC/ST PerformAssess inactive"; Boolean)
        {
            Caption = 'CC/ST PerformAssess inactive';
        }
        field(840; "TP/Previous Year blocked"; Boolean)
        {
            Caption = 'TP/Previous Year blocked';
        }
        field(50000; "GE/Vacation to"; Date)
        {
            Caption = 'GE/Vacation to';
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

