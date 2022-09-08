table 5056290 "Time Account/T"
{
    Caption = 'Time Account';
    DataCaptionFields = "No.", Description;
    Description = 'GrTimeAcc';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
            SQLDataType = Integer;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(4; Symbol; Text[3])
        {
            Caption = 'Symbol';
        }
        field(5; Character; Text[1])
        {
            Caption = 'Character';
        }
        field(6; "Pay Type 1"; Code[10])
        {
            Caption = 'Pay Type 1';
        }
        field(7; "Pay Type 2"; Code[10])
        {
            Caption = 'Pay Type 2';
        }
        field(8; "Pay Type/Absent Day"; Code[10])
        {
            Caption = 'Pay Type/Absent Day';
        }
        field(9; "Pay Integration Zero Values"; Boolean)
        {
            Caption = 'Pay Integration Zero Values';
        }
        field(10; Formatting; Option)
        {
            Caption = 'Formatting';
            OptionCaption = 'Hours,Minutes,Hours/Minutes,Days,Currency,Unit';
            OptionMembers = Hours,Minutes,"Hours/Minutes",Days,Currency,Unit;
        }
        field(11; "Class (General)"; Option)
        {
            Caption = 'Class (General)';
            OptionCaption = ' ,Target Time,Actual Time,Presence Time,Total Time,Overtime,Absent Time,Supplement,Absent Day,Public Holiday,Special Day,Holiday,Info Day,Balance Period,Balance Total,Value Car. Fwd.,Break,Errand,Core Time,Bandwidth,Internal';
            OptionMembers = " ","Target Time","Actual Time","Presence Time","Total Time",Overtime,"Absent Time",Supplement,"Absent Day","Public Holiday","Special Day",Holiday,"Info Day","Balance Period","Balance Total","Value Car. Fwd.","Break",Errand,"Core Time",Bandwidth,Internal;
        }
        field(12; "Class (Statistics)"; Option)
        {
            Caption = 'Class (Statistics)';
            OptionCaption = ' ,Target Times,Total Times,Presence Times,app.Overtime,unapp.Overtime,app.Absences,unapp.Absences,Medical Appointm.,Vacation Days,Sick Leave,Values Car. Fwd.,Balances Period,Balances Total,Errands,Break Exceedings,Core Time Deviations';
            OptionMembers = " ","Target Times","Total Times","Presence Times","app.Overtime","unapp.Overtime","app.Absences","unapp.Absences","Medical Appointm.","Vacation Days","Sick Leave","Values Car. Fwd.","Balances Period","Balances Total",Errands,"Break Exceedings","Core Time Deviations";
        }
        field(13; "Class (Absent Days)"; Option)
        {
            Caption = 'Class (Absent Days)';
            OptionCaption = ' ,Vacation,Sick,Pub. Holiday,Leisure Time,Training,Business Trip,On-Call Duty,w/o continued Pay,Application';
            OptionMembers = " ",Vacation,Sick,"Pub. Holiday","Leisure Time",Training,"Business Trip","On-Call Duty","w/o continued Pay",Application;
        }
        field(14; "Class (Account Default)"; Option)
        {
            Caption = 'Class (Account Default)';
            OptionCaption = ' ,Target,Actual,Presence,Total,Overtime,Absent Time,Public Holiday,Holiday,Balance Period,Balance Total,Value Car. Fwd.,Break Target,Break Actual,Break Presence,Break Over,Break Miss,Break Band Violation,Break Balance,Errand,Core Time,Core Time Violation,Bandwidth,Bandwidth Violation,Balance Today';
            OptionMembers = " ",Target,Actual,Presence,Total,Overtime,"Absent Time","Public Holiday",Holiday,"Balance Period","Balance Total","Value Car. Fwd.","Break Target","Break Actual","Break Presence","Break Over","Break Miss","Break Band Violation","Break Balance",Errand,"Core Time","Core Time Violation",Bandwidth,"Bandwidth Violation","Balance Today";
        }
        field(15; "Class (Time Processing)"; Option)
        {
            Caption = 'Class (Time Processing)';
            OptionCaption = ' ,Target Time,Presence,Break,Value Car. Fwd.,Balance,Absent Time,Overtime,Supplement,Others,Internal';
            OptionMembers = " ","Target Time",Presence,"Break","Value Car. Fwd.",Balance,"Absent Time",Overtime,Supplement,Others,Internal;
        }
        field(16; "Class (Individual)"; Option)
        {
            Caption = 'Class (Individual)';
            OptionCaption = ' ,Time Account 1,Time Account 2,Time Account 3,Time Account 4,Time Account 5,Time Account 6,Time Account 7,Time Account 8,Time Account 9,Time Account 10';
            OptionMembers = " ","Time Account 1","Time Account 2","Time Account 3","Time Account 4","Time Account 5","Time Account 6","Time Account 7","Time Account 8","Time Account 9","Time Account 10";
        }
        field(17; "Class (Employee Info)"; Option)
        {
            Caption = 'Class (Employee Info)';
            OptionCaption = ' ,Target Time,Presence,Overtime,Absent Time,Value Car. Fwd.,Balance,Missing Day';
            OptionMembers = " ","Target Time",Presence,Overtime,"Absent Time","Value Car. Fwd.",Balance,"Missing Day";
        }
        field(18; "Class (Vacation Reduction)"; Option)
        {
            Caption = 'Class (Vacation Reduction)';
            OptionCaption = ' ,Reduction Agreed Vacation,Reduction Special Vacation 1,Reduction Special Vacation 2,Reduction Special Vacation 3,Reduction Vacation in Hours,Adaptation Vacation in Hours,Adaptation Vacation in Days';
            OptionMembers = " ","Reduction Agreed Vacation","Reduction Special Vacation 1","Reduction Special Vacation 2","Reduction Special Vacation 3","Reduction Vacation in Hours","Adaptation Vacation in Hours","Adaptation Vacation in Days";
        }
        field(19; "Class (Matrix Layout)"; Option)
        {
            Caption = 'Class (Matrix Layout)';
            OptionCaption = ' ,Time Account Matrix';
            OptionMembers = " ","Time Account Matrix";
        }
        field(20; "TA No. Value Car. Fwd."; Code[10])
        {
            Caption = 'TA No. Value Car. Fwd.';
            TableRelation = "Time Account/T"."No.";
        }
        field(21; "TA No. Added Value"; Code[10])
        {
            Caption = 'TA No. Added Value';
            TableRelation = "Time Account/T"."No.";
        }
        field(22; "Time Acc. No. - Absent Day/H"; Code[10])
        {
            Caption = 'Time Acc. No. - Absent Day/H';
            TableRelation = "Time Account/T"."No.";
        }
        field(23; "Accounts Heading"; Boolean)
        {
            Caption = 'Accounts Heading';
        }
        field(24; "Time Account No. - Copy 1"; Code[10])
        {
            Caption = 'Time Account No. - Copy 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(25; "TA No. Reference Sum-Values"; Code[10])
        {
            Caption = 'TA No. Reference Sum-Values';
            TableRelation = "Time Account/T"."No.";
        }
        field(26; "Time Account No. - Copy 2"; Code[10])
        {
            Caption = 'Time Account No. - Copy 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(27; "Sum-Values"; Option)
        {
            Caption = 'Sum-Values';
            OptionCaption = ' ,Based on current period,Based on current week';
            OptionMembers = " ","Based on current period","Based on current week";
        }
        field(28; "TA Gr. No. Pub. Holiday Filter"; Code[10])
        {
            Caption = 'TA Gr. No. Pub. Holiday Filter';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(29; "Pay Type/Absent Day half Day"; Code[10])
        {
            Caption = 'Pay Type/Absent Day half Day';
        }
        field(30; "Target Time/Pub. Holiday ina."; Boolean)
        {
            Caption = 'Target Time/Pub. Holiday ina.';
        }
        field(31; "Overwrite Planning (Prio.1)"; Boolean)
        {
            Caption = 'Overwrite Planning (Prio.1)';
        }
        field(32; "Do not Overwrite Planning"; Boolean)
        {
            Caption = 'Do not Overwrite Planning';
        }
        field(33; "Check 42-Day Period"; Boolean)
        {
            Caption = 'Check 42-Day Period';
        }
        field(34; "Sorting (Matrix Layout)"; Integer)
        {
            Caption = 'Sorting (Matrix Layout)';
        }
        field(35; "TP/Half miss.Day not processed"; Boolean)
        {
            Caption = 'TP/Half miss.Day not processed';
        }
        field(36; "Pay Type/Check miss.Day in Pay"; Boolean)
        {
            Caption = 'Pay Type/Check miss.Day in Pay';
        }
        field(37; "Terminal-Access Inactive"; Boolean)
        {
            Caption = 'Terminal-Access Inactive';
        }
        field(38; "Add Agreed Vacation Entitle."; Boolean)
        {
            Caption = 'Add Agreed Vacation Entitle.';
        }
        field(39; "Access Time per Terminal No."; Code[10])
        {
            Caption = 'Access Time per Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(40; "Absent Day - Monday"; Boolean)
        {
            Caption = 'Absent Day - Monday';
        }
        field(41; "Absent Day - Tuesday"; Boolean)
        {
            Caption = 'Absent Day - Tuesday';
        }
        field(42; "Absent Day - Wednesday"; Boolean)
        {
            Caption = 'Absent Day - Wednesday';
        }
        field(43; "Absent Day - Thursday"; Boolean)
        {
            Caption = 'Absent Day - Thursday';
        }
        field(44; "Absent Day - Friday"; Boolean)
        {
            Caption = 'Absent Day - Friday';
        }
        field(45; "Absent Day - Saturday"; Boolean)
        {
            Caption = 'Absent Day - Saturday';
        }
        field(46; "Absent Day - Sunday"; Boolean)
        {
            Caption = 'Absent Day - Sunday';
        }
        field(47; "Absent Day at Target Time"; Boolean)
        {
            Caption = 'Absent Day at Target Time';
        }
        field(48; "Pay Type Individual"; Code[10])
        {
            Caption = 'Pay Type Individual';
        }
        field(49; "Break Time per Terminal No."; Code[10])
        {
            Caption = 'Break Time per Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(50; "Processing - Monday"; Boolean)
        {
            Caption = 'Processing - Monday';
        }
        field(51; "Processing - Tuesday"; Boolean)
        {
            Caption = 'Processing - Tuesday';
        }
        field(52; "Processing - Wednesday"; Boolean)
        {
            Caption = 'Processing - Wednesday';
        }
        field(53; "Processing - Thursday"; Boolean)
        {
            Caption = 'Processing - Thursday';
        }
        field(54; "Processing - Friday"; Boolean)
        {
            Caption = 'Processing - Friday';
        }
        field(55; "Processing - Saturday"; Boolean)
        {
            Caption = 'Processing - Saturday';
        }
        field(56; "Processing - Sunday"; Boolean)
        {
            Caption = 'Processing - Sunday';
        }
        field(57; "Processing on Target Time"; Boolean)
        {
            Caption = 'Processing on Target Time';
        }
        field(60; "Special Day - Monday"; Boolean)
        {
            Caption = 'Special Day - Monday';
        }
        field(61; "Special Day - Tuesday"; Boolean)
        {
            Caption = 'Special Day - Tuesday';
        }
        field(62; "Special Day - Wednesday"; Boolean)
        {
            Caption = 'Special Day - Wednesday';
        }
        field(63; "Special Day - Thursday"; Boolean)
        {
            Caption = 'Special Day - Thursday';
        }
        field(64; "Special Day - Friday"; Boolean)
        {
            Caption = 'Special Day - Friday';
        }
        field(65; "Special Day - Saturday"; Boolean)
        {
            Caption = 'Special Day - Saturday';
        }
        field(66; "Special Day - Sunday"; Boolean)
        {
            Caption = 'Special Day - Sunday';
        }
        field(68; "Presence max. Interrupt (Min)"; Integer)
        {
            Caption = 'Presence max. Interrupt (Min)';
        }
        field(69; "Extended Account Defaults"; Option)
        {
            Caption = 'Extended Account Defaults';
            OptionCaption = ' ,Processing Coming/Leaving Original,Processing Coming Original,Processing Leaving Original,Interrupt Time Original,Interrupt Time Actual,Presence max. Interrupt (Min),Target Time inverted,Max. Time Interval';
            OptionMembers = " ","Processing Coming/Leaving Original","Processing Coming Original","Processing Leaving Original","Interrupt Time Original","Interrupt Time Actual","Presence max. Interrupt (Min)","Target Time inverted","Max. Time Interval";
        }
        field(70; "TA No. Absenc./Empl./Target"; Code[10])
        {
            Caption = 'TA No. Absenc./Empl./Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(71; "Sorting Statistics 1-9999"; Integer)
        {
            Caption = 'Sorting Statistics 1-9999';
        }
        field(72; "Ref. E-Field Day Targ.AbsDay/H"; Code[20])
        {
            Caption = 'Ref. E-Field Day Targ.AbsDay/H';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(73; "TA No. Dest/AT Appl. Cancel"; Code[10])
        {
            Caption = 'TA No. Dest/AT Appl. Cancel';
            TableRelation = "Time Account/T"."No.";
        }
        field(74; "TA No. Ref/from Special Day"; Code[10])
        {
            Caption = 'TA No. Ref/from Special Day';
            TableRelation = "Time Account/T"."No.";
        }
        field(75; "DS/Day Object at Absent Day"; Code[10])
        {
            Caption = 'DS/Day Object at Absent Day';
            TableRelation = "Day Object/T"."No.";
        }
        field(76; "TA No. Ref/until Special Day"; Code[10])
        {
            Caption = 'TA No. Ref/until Special Day';
            TableRelation = "Time Account/T"."No.";
        }
        field(77; "TA No. Dest/Absent Time Appl."; Code[10])
        {
            Caption = 'TA No. Dest/Absent Time Appl.';
            TableRelation = "Time Account/T"."No.";
        }
        field(78; "Time Card Column Type 2"; Integer)
        {
            Caption = 'Time Card Column Type 2';
        }
        field(79; "Time Card Column Landsc.Format"; Integer)
        {
            Caption = 'Time Card Column Landsc.Format';
        }
        field(80; "Time Card Column Type 1"; Integer)
        {
            Caption = 'Time Card Column Type 1';
        }
        field(81; "Shift Scheduling Category"; Option)
        {
            Caption = 'Shift Scheduling Category';
            OptionCaption = ' ,Vacation,Sick,Others';
            OptionMembers = " ",Vacation,Sick,Others;
        }
        field(82; "Shift Scheduling Miss.Day Post"; Boolean)
        {
            Caption = 'Shift Scheduling Miss.Day Post';
        }
        field(83; "Sorting Footer 1-9999 right"; Integer)
        {
            Caption = 'Sorting Footer 1-9999 right';
        }
        field(84; "Time Manager: insert allowed"; Boolean)
        {
            Caption = 'Time Manager: insert allowed';
        }
        field(85; "Color Employee Planning"; Option)
        {
            Caption = 'Color Employee Planning';
            OptionCaption = ' ,red,darkred,blue,darkblue,green,darkgreen,yellow,turquoise,violet,lilac,grey';
            OptionMembers = " ",red,darkred,blue,darkblue,green,darkgreen,yellow,turquoise,violet,lilac,grey;
        }
        field(86; "Color Value Employee Planning"; Integer)
        {
            Caption = 'Color Value Employee Planning';
            Editable = false;
        }
        field(87; "Shift Scheduling Absent D. Hrs"; Decimal)
        {
            Caption = 'Shift Scheduling Absent D. Hrs';
        }
        field(88; "Sorting Total 1-9999 left"; Integer)
        {
            Caption = 'Sorting Total 1-9999 left';
        }
        field(89; "Import-Code Absent Day"; Code[10])
        {
            Caption = 'Import-Code Absent Day';
        }
        field(90; "Deviation Monday 1"; Boolean)
        {
            Caption = 'Deviation Monday 1';
        }
        field(91; "Deviation Tuesday 1"; Boolean)
        {
            Caption = 'Deviation Tuesday 1';
        }
        field(92; "Deviation Wednesday 1"; Boolean)
        {
            Caption = 'Deviation Wednesday 1';
        }
        field(93; "Deviation Thursday 1"; Boolean)
        {
            Caption = 'Deviation Thursday 1';
        }
        field(94; "Deviation Friday 1"; Boolean)
        {
            Caption = 'Deviation Friday 1';
        }
        field(95; "Deviation Saturday 1"; Boolean)
        {
            Caption = 'Deviation Saturday 1';
        }
        field(96; "Deviation Sunday 1"; Boolean)
        {
            Caption = 'Deviation Sunday 1';
        }
        field(97; "Deviation Threshold Minutes 1"; Integer)
        {
            Caption = 'Deviation Threshold Minutes 1';
        }
        field(98; "Color Duty Scheduling"; Option)
        {
            Caption = 'Color Duty Scheduling';
            OptionCaption = ' ,red,darkred,blue,darkblue,green,darkgreen,yellow,turquoise,violet,lilac,grey';
            OptionMembers = " ",red,darkred,blue,darkblue,green,darkgreen,yellow,turquoise,violet,lilac,grey;
        }
        field(99; "Color Value Duty Scheduling"; Integer)
        {
            Caption = 'Color Value Duty Scheduling';
            Editable = false;
        }
        field(100; "Deviation Monday 2"; Boolean)
        {
            Caption = 'Deviation Monday 2';
        }
        field(101; "Deviation Tuesday 2"; Boolean)
        {
            Caption = 'Deviation Tuesday 2';
        }
        field(102; "Deviation Wednesday 2"; Boolean)
        {
            Caption = 'Deviation Wednesday 2';
        }
        field(103; "Deviation Thursday 2"; Boolean)
        {
            Caption = 'Deviation Thursday 2';
        }
        field(104; "Deviation Friday 2"; Boolean)
        {
            Caption = 'Deviation Friday 2';
        }
        field(105; "Deviation Saturday 2"; Boolean)
        {
            Caption = 'Deviation Saturday 2';
        }
        field(106; "Deviation Sunday 2"; Boolean)
        {
            Caption = 'Deviation Sunday 2';
        }
        field(107; "Deviation Threshold Minutes 2"; Integer)
        {
            Caption = 'Deviation Threshold Minutes 2';
        }
        field(108; "FDC-Int. / Cancel inactive"; Boolean)
        {
            Caption = 'FDC-Int. / Cancel inactive';
        }
        field(109; "Pay Int. / Posting Type"; Option)
        {
            Caption = 'Pay Int. / Posting Type';
            OptionCaption = 'Periodic,Daily,Summary Begin of Period,Summary End of Period';
            OptionMembers = Periodic,Daily,"Summary Begin of Period","Summary End of Period";
        }
        field(110; "ineffective for TA No. 1"; Code[10])
        {
            Caption = 'ineffective for TA No. 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(111; "Pre-Pub. Holiday no Output EP"; Boolean)
        {
            Caption = 'Pre-Pub. Holiday no Output EP';
        }
        field(112; "ineffective for TA No. 2"; Code[10])
        {
            Caption = 'ineffective for TA No. 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(113; "TA No. Present Range"; Option)
        {
            Caption = 'TA No. Present Range';
            OptionCaption = ' ,Pre-Range 1,Pre-Range 2,Pre-Range 3,Pre-Range 4,Pre-Range 5,Pre-Range 6,Pre-Range 7,Pre-Range 8,Pre-Range 9,Pre-Range 10';
            OptionMembers = " ","Pre-Range 1","Pre-Range 2","Pre-Range 3","Pre-Range 4","Pre-Range 5","Pre-Range 6","Pre-Range 7","Pre-Range 8","Pre-Range 9","Pre-Range 10";
        }
        field(114; "ineffective for TA No. 3"; Code[10])
        {
            Caption = 'ineffective for TA No. 3';
            TableRelation = "Time Account/T"."No.";
        }
        field(115; "Pay Int. / Cancel Absent Day"; Boolean)
        {
            Caption = 'Pay Int. / Cancel Absent Day';
        }
        field(116; "ineffective for TA No. 4"; Code[10])
        {
            Caption = 'ineffective for TA No. 4';
            TableRelation = "Time Account/T"."No.";
        }
        field(117; "TA No. Ref/perc. Order-Split."; Code[10])
        {
            Caption = 'TA No. Ref/perc. Order-Split.';
            TableRelation = "Time Account/T"."No.";
        }
        field(118; "ineffective for TA No. 5"; Code[10])
        {
            Caption = 'ineffective for TA No. 5';
            TableRelation = "Time Account/T"."No.";
        }
        field(119; "Pay Int. / without Until-Date"; Boolean)
        {
            Caption = 'Pay Int. / without Until-Date';
        }
        field(120; "ineffective for TA No. 6"; Code[10])
        {
            Caption = 'ineffective for TA No. 6';
            TableRelation = "Time Account/T"."No.";
        }
        field(121; "TA No. Dest/perc. Splitting"; Code[10])
        {
            Caption = 'TA No. Dest/perc. Splitting';
            TableRelation = "Time Account/T"."No.";
        }
        field(122; "ineffective for TA No. 7"; Code[10])
        {
            Caption = 'ineffective for TA No. 7';
            TableRelation = "Time Account/T"."No.";
        }
        field(123; "TA No. Ref/perc. Splitting"; Code[10])
        {
            Caption = 'TA No. Ref/perc. Splitting';
            TableRelation = "Time Account/T"."No.";
        }
        field(124; "ineffective for TA No. 8"; Code[10])
        {
            Caption = 'ineffective for TA No. 8';
            TableRelation = "Time Account/T"."No.";
        }
        field(125; "FDC-Int. / Dest. Department"; Code[10])
        {
            Caption = 'FDC-Int. / Dest. Department';
        }
        field(126; "ineffective for TA No. 9"; Code[10])
        {
            Caption = 'ineffective for TA No. 9';
            TableRelation = "Time Account/T"."No.";
        }
        field(127; "ineffective for Class (Stat.)3"; Option)
        {
            Caption = 'ineffective for Class (Stat.)3';
            OptionCaption = ' ,Target Times,Total Times,Presence Times,app.Overtime,unapp.Overtime,app.Absences,unapp.Absences,Medical Appointm.,Vacation Days,Sick Leave,Values Car. Fwd.,Balances Period,Total Balances,Errands,Break Exceedings,Core Time Deviations';
            OptionMembers = " ","Target Times","Total Times","Presence Times","app.Overtime","unapp.Overtime","app.Absences","unapp.Absences","Medical Appointm.","Vacation Days","Sick Leave","Values Car. Fwd.","Balances Period","Total Balances",Errands,"Break Exceedings","Core Time Deviations";
        }
        field(128; "ineffective for TA No. 10"; Code[10])
        {
            Caption = 'ineffective for TA No. 10';
            TableRelation = "Time Account/T"."No.";
        }
        field(129; "ineffective for Class (Stat.)2"; Option)
        {
            Caption = 'ineffective for Class (Stat.)2';
            OptionCaption = ' ,Target Times,Total Times,Presence Times,app.Overtime,unapp.Overtime,app.Absences,unapp.Absences,Medical Appointm.,Vacation Days,Sick Leave,Values Car. Fwd.,Balances Period,Total Balances,Errands,Break Exceedings,Core Time Deviations';
            OptionMembers = " ","Target Times","Total Times","Presence Times","app.Overtime","unapp.Overtime","app.Absences","unapp.Absences","Medical Appointm.","Vacation Days","Sick Leave","Values Car. Fwd.","Balances Period","Total Balances",Errands,"Break Exceedings","Core Time Deviations";
        }
        field(130; "ineffective for Class (Stat.)1"; Option)
        {
            Caption = 'ineffective for Class (Stat.)1';
            OptionCaption = ' ,Target Times,Total Times,Presence Times,app.Overtime,unapp.Overtime,app.Absences,unapp.Absences,Medical Appointm.,Vacation Days,Sick Leave,Values Car. Fwd.,Balances Period,Total Balances,Errands,Break Exceedings,Core Time Deviations';
            OptionMembers = " ","Target Times","Total Times","Presence Times","app.Overtime","unapp.Overtime","app.Absences","unapp.Absences","Medical Appointm.","Vacation Days","Sick Leave","Values Car. Fwd.","Balances Period","Total Balances",Errands,"Break Exceedings","Core Time Deviations";
        }
        field(131; "ineff.TAGrp/Absenc./Empl./Hrs."; Code[10])
        {
            Caption = 'ineff.TAGrp/Absenc./Empl./Hrs.';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(132; "Pay Int. / Sum Dept. Splitting"; Boolean)
        {
            Caption = 'Pay Int. / Sum Dept. Splitting';
        }
        field(133; "ineff. TAGrp/F_DOUBLE"; Code[10])
        {
            Caption = 'ineff. TAGrp/F_DOUBLE';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(134; "FDC Posting Sum/Day"; Option)
        {
            Caption = 'FDC Posting Sum/Day';
            OptionCaption = ' ,first Order,last Order,longest Order,Orders splitted';
            OptionMembers = " ","first Order","last Order","longest Order","Orders splitted";
        }
        field(135; "ineff. TAGrp/Abs./Empl./D/Hrs."; Code[10])
        {
            Caption = 'ineff. TAGrp/Abs./Empl./D/Hrs.';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(136; "Pay Sum Inactive"; Boolean)
        {
            Caption = 'Pay Sum Inactive';
        }
        field(137; "FDC Sum Inactive"; Boolean)
        {
            Caption = 'FDC Sum Inactive';
        }
        field(138; "Pay Int. / Dept. Splitting"; Boolean)
        {
            Caption = 'Pay Int. / Dept. Splitting';
        }
        field(139; "FDC Int. / Target Task"; Code[20])
        {
            Caption = 'FDC Int. / Target Task';
        }
        field(140; "FDC Integration Active"; Boolean)
        {
            Caption = 'FDC Integration Active';
        }
        field(141; "FDC-Overh. CC Inactive if Mov."; Boolean)
        {
            Caption = 'FDC-Overh. CC Inactive if Mov.';
        }
        field(142; "TA No. Ref. Hrs.->Record"; Code[10])
        {
            Caption = 'TA No. Ref. Hrs.->Record';
            TableRelation = "Time Account/T"."No.";
        }
        field(143; "Part-time Business College"; Boolean)
        {
            Caption = 'Part-time Business College';
        }
        field(144; "For Pub.Holidays Break+Round."; Boolean)
        {
            Caption = 'For Pub.Holidays Break+Round.';
        }
        field(145; "TP/Absent Time in Core Time"; Boolean)
        {
            Caption = 'TP/Absent Time in Core Time';
        }
        field(146; "TA No. Ref. Record>Hrs."; Code[10])
        {
            Caption = 'TA No. Ref. Record>Hrs.';
            TableRelation = "Time Account/T"."No.";
        }
        field(147; "Department Splitting"; Boolean)
        {
            Caption = 'Department Splitting';
        }
        field(148; "FDC Splitting"; Boolean)
        {
            Caption = 'FDC Splitting';
        }
        field(149; "Exclusive Processing Serial"; Boolean)
        {
            Caption = 'Excl. Proc. Serial';
        }
        field(161; "FDC/Dept. Progwork protected"; Boolean)
        {
            Caption = 'FDC/Dept. Progwork protected';
        }
        field(162; "Datev/AK"; Code[10])
        {
            Caption = 'Datev/AK';
        }
        field(163; "Datev/AK without Pay Type"; Boolean)
        {
            Caption = 'Datev/AK without Pay Type';
        }
        field(164; "Absent Day creates Presence"; Boolean)
        {
            Caption = 'Absent Day creates Presence';
        }
        field(165; "Integration Resources"; Boolean)
        {
            Caption = 'Integration Resources';
        }
        field(166; "MaxValue AbsDay/Year Warning"; Decimal)
        {
            Caption = 'MaxValue AbsDay/Year Warning';
        }
        field(167; "MaxValue AbsDay/Year Rejection"; Decimal)
        {
            Caption = 'MaxValue AbsDay/Year Rejection';
        }
        field(168; "Import-Code IE Time Planning"; Code[10])
        {
            Caption = 'Import-Code IE Time Planning';
        }
        field(169; "Import-Code IE Time Entry"; Code[10])
        {
            Caption = 'Import-Code IE Time Entry';
        }
        field(170; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(171; Protected; Boolean)
        {
            Caption = 'Protected';
        }
        field(172; "External Access permitted"; Boolean)
        {
            Caption = 'External Access permitted';
        }
        field(173; "Import-Code IE Activity"; Code[10])
        {
            Caption = 'Import-Code IE Activity';
        }
        field(174; "Import-Code IE TP half Day"; Code[10])
        {
            Caption = 'Import-Code IE TP half Day';
        }
        field(175; "Loss of Pay Principle Miss.Day"; Boolean)
        {
            Caption = 'Loss of Pay Principle Miss.Day';
        }
        field(176; "Protect. Loss of Pay Principle"; Boolean)
        {
            Caption = 'Protect. Loss of Pay Principle';
        }
        field(177; "Message rem. Vac. Check"; Option)
        {
            Caption = 'Message rem. Vac. Check';
            OptionCaption = ' ,Warning,Rejection';
            OptionMembers = " ",Warning,Rejection;
        }
        field(178; "Absent Day Evaluation 0.5"; Boolean)
        {
            Caption = 'Absent Day Evaluation 0.5';
        }
        field(179; "Pay Int. / FDC Splitting"; Boolean)
        {
            Caption = 'Pay Int. / FDC Splitting';
        }
        field(180; "Total Value"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee Filter"),
                                                                         "Time Account No." = FIELD ("No."),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Total Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(181; "Employee Filter"; Code[20])
        {
            Caption = 'Employee Filter';
            FieldClass = FlowFilter;
        }
        field(182; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(183; "Provision Payroll Int.Journal"; Code[10])
        {
            Caption = 'Provision Payroll Int.Journal';
        }
        field(184; "Paying out Payroll Int.Journal"; Code[10])
        {
            Caption = 'Paying out Payroll Int.Journal';
        }
        field(185; "No Vac. Entitlem. Aliquot."; Boolean)
        {
            Caption = 'No Vac. Entitlem. Aliquot.';
        }
        field(186; "Ref. Empl-Field Abs/Empl/Targ."; Code[20])
        {
            Caption = 'Ref. Empl-Field Abs/Empl/Targ.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(187; "Aliquotation Source"; Option)
        {
            Caption = 'Aliquotation Source';
            OptionCaption = ' ,Employment Date/Leaving Date/Absent Days,Time Object Modification';
            OptionMembers = " ","Employment Date/Leaving Date/Absent Days","Time Object Modification";
        }
        field(188; "Enter Period Date Payroll + 1"; Boolean)
        {
            Caption = 'Enter Period Date Payroll + 1';
        }
        field(189; "For Plannig Stuff only"; Boolean)
        {
            Caption = 'For Plannig Stuff only';
        }
        field(190; "Info Clocking Entry"; Code[10])
        {
            Caption = 'Info Clocking Entry';
        }
        field(191; "Type Info Clocking"; Option)
        {
            Caption = 'Type Info Clocking';
            OptionCaption = ' ,Absent Day only Today,Absent Day starting Today,Absent Day only following day,Absent Day starting following day,Overtime,Absent Time,Time Account with Value,To post as Time Account';
            OptionMembers = " ","Absent Day only Today","Absent Day starting Today","Absent Day only following day","Absent Day starting following day",Overtime,"Absent Time","Time Account with Value","To post as Time Account";
        }
        field(192; "Gen.TA No. Value Info Clocking"; Decimal)
        {
            Caption = 'Gen.TA No. Value Info Clocking';
        }
        field(193; "TP/Remark Info-Clocking"; Text[80])
        {
            Caption = 'TP/Remark Info-Clocking';
        }
        field(194; "FDC-Reference Scrap Code"; Code[10])
        {
            Caption = 'FDC-Reference Scrap Code';
            TableRelation = Scrap;
        }
        field(195; "FDC/Dept. Time Acc. inactive"; Boolean)
        {
            Caption = 'FDC/Dept. Time Acc. inactive';
        }
        field(196; "Pay Type/FDC"; Code[10])
        {
            Caption = 'Pay Type/FDC';
        }
        field(197; "Pay-Int. / Cancel inactive"; Boolean)
        {
            Caption = 'Pay-Int. / Cancel inactive';
        }
        field(198; "FDC-Cancel TA-No. 1.Day Next P"; Code[10])
        {
            Caption = 'FDC-Cancel TA-No. 1.Day Next P';
            TableRelation = "Time Account/T"."No.";
        }
        field(199; "Empl-Data Send Limit Total"; Boolean)
        {
            Caption = 'Empl-Data Send Limit Total';
        }
        field(200; Remark; Boolean)
        {
            CalcFormula = Exist ("TempVision Remark Line/T" WHERE ("Table Name" = CONST ("Time Account/T"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Remark';
            Editable = false;
            FieldClass = FlowField;
        }
        field(201; "Calculation Factor/FDC"; Decimal)
        {
            Caption = 'Calculation Factor/FDC';
        }
        field(202; "Time Grid No. AbsTime Transfer"; Code[10])
        {
            Caption = 'Time Grid No. AbsTime Transfer';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Absent Time Object 3000-3999"));
        }
        field(203; "Vacation Add. Night Work"; Boolean)
        {
            Caption = 'Vacation Add. Night Work';
        }
        field(204; "TA-No. Dest. smaller Split-Val"; Code[10])
        {
            Caption = 'TA-No. Dest. smaller Split-Val';
            TableRelation = "Time Account/T"."No.";
        }
        field(205; "TA-No. Dest. greater Split-Val"; Code[10])
        {
            Caption = 'TA-No. Dest. greater Split-Val';
            TableRelation = "Time Account/T"."No.";
        }
        field(206; "Info-Clocking Split-Value Min."; Integer)
        {
            Caption = 'Info-Clocking Split-Value Min.';
        }
        field(207; "Split-Value based on Target T."; Boolean)
        {
            Caption = 'Split-Value based on Target T.';
        }
        field(208; "Dyn. Over-Grid ineffect. Info"; Boolean)
        {
            Caption = 'Dyn. Over-Grid ineffect. Info';
        }
        field(209; "Coming to 1.Dept.->Time Acc."; Boolean)
        {
            Caption = 'Coming to 1.Dept.->Time Acc.';
        }
        field(210; "Department->Time Account"; Code[10])
        {
            Caption = 'Department->Time Account';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(211; "Order->Time Account"; Code[20])
        {
            Caption = 'Order->Time Account';
        }
        field(212; "Task->Time Account"; Code[20])
        {
            Caption = 'Task->Time Account';
        }
        field(213; "Dimension1->Time Account"; Code[20])
        {
            Caption = 'Dimension1->Time Account';
        }
        field(214; "Dimension2->Time Account"; Code[20])
        {
            Caption = 'Dimension2->Time Account';
        }
        field(215; "Dimension3->Time Account"; Code[20])
        {
            Caption = 'Dimension3->Time Account';
        }
        field(216; "Dimension4->Time Account"; Code[20])
        {
            Caption = 'Dimension4->Time Account';
        }
        field(217; "Job No.->Time Account"; Code[20])
        {
            Caption = 'Job No.->Time Account';
        }
        field(218; "Work Package->Time Account"; Code[20])
        {
            Caption = 'Work Package->Time Account';
        }
        field(219; "Dest. Dept. PayInt./DeptSplit."; Code[10])
        {
            Caption = 'Dest. Dept. PayInt./DeptSplit.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(220; "Org-Group Order No. Unprod"; Code[20])
        {
            Caption = 'Org-Group Order No. Unprod';
            TableRelation = "Organization Group/T"."No.";
        }
        field(221; "Org-Group Task No. Unprod"; Code[20])
        {
            Caption = 'Org-Group Task No. Unprod';
            TableRelation = "Organization Group/T"."No.";
        }
        field(222; "Org-Group Dimension 1 Unprod"; Code[20])
        {
            Caption = 'Org-Group Dimension 1 Unprod';
            TableRelation = "Organization Group/T"."No.";
        }
        field(223; "Org-Group Dimension 2 Unprod"; Code[20])
        {
            Caption = 'Org-Group Dimension 2 Unprod';
            TableRelation = "Organization Group/T"."No.";
        }
        field(224; "Org-Group Dimension 3 Unprod"; Code[20])
        {
            Caption = 'Org-Group Dimension 3 Unprod';
            TableRelation = "Organization Group/T"."No.";
        }
        field(225; "Org-Group Dimension 4 Unprod"; Code[20])
        {
            Caption = 'Org-Group Dimension 4 Unprod';
            TableRelation = "Organization Group/T"."No.";
        }
        field(226; "Org-Group Job No.->TA"; Code[20])
        {
            Caption = 'Org-Group Job No.->TA';
            TableRelation = "Organization Group/T"."No.";
        }
        field(227; "Org-Group Work Package->TA"; Code[20])
        {
            Caption = 'Org-Group Work Package->TA';
            TableRelation = "Organization Group/T"."No.";
        }
        field(228; "Round Constant DeptSplit."; Decimal)
        {
            Caption = 'Round Constant DeptSplit.';
        }
        field(229; "Difference-Values FDC-Parallel"; Option)
        {
            Caption = 'Difference-Values FDC-Parallel';
            OptionCaption = ' ,Coming->Parallel Begin,Parallel End->Parallel Begin,Parallel End->Leaving';
            OptionMembers = " ","Coming->Parallel Begin","Parallel End->Parallel Begin","Parallel End->Leaving";
        }
        field(230; "TP/Status Info Clocking"; Boolean)
        {
            Caption = 'TP/Status Info Clocking';
        }
        field(231; "Exclusive Processing Parallel"; Boolean)
        {
            Caption = 'Excl. Proc. Parallel';
        }
        field(232; "Exclusive Processing Collect"; Boolean)
        {
            Caption = 'Excl. Proc. Collect';
        }
        field(233; "TP/Evaluation active"; Boolean)
        {
            Caption = 'TP/Evaluation active';
        }
        field(240; "Algo-Nr. Report Percent Source"; Code[10])
        {
            Caption = 'Algo-Nr. Report Percent Source';
            TableRelation = "Algorithm/T"."No.";
        }
        field(241; "TA No. Report Percent Dest."; Code[10])
        {
            Caption = 'TA No. Report Percent Dest.';
            TableRelation = "Time Account/T"."No.";
        }
        field(242; "Time Account No. - Copy 3"; Code[10])
        {
            Caption = 'Time Account No. - Copy 3';
            TableRelation = "Time Account/T"."No.";
        }
        field(243; "Time Account No. - Copy 4"; Code[10])
        {
            Caption = 'Time Account No. - Copy 4';
            TableRelation = "Time Account/T"."No.";
        }
        field(244; "Time Account No. - Copy 5"; Code[10])
        {
            Caption = 'Time Account No. - Copy 5';
            TableRelation = "Time Account/T"."No.";
        }
        field(245; "Time Account No. - Copy 6"; Code[10])
        {
            Caption = 'Time Account No. - Copy 6';
            TableRelation = "Time Account/T"."No.";
        }
        field(246; "Ref. TA-No. Abs.Day Plan Cont."; Code[10])
        {
            Caption = 'Ref. TA-No. Abs.Day Plan Cont.';
            TableRelation = "Time Account/T"."No.";
        }
        field(247; "Ref. TA-No. Business Trip End"; Code[10])
        {
            Caption = 'Ref. TA-No. Business Trip End';
            TableRelation = "Time Account/T"."No.";
        }
        field(248; "Pay Int. / Sum Other-Dept."; Boolean)
        {
            Caption = 'Pay Int. / Sum Other-Dept.';
        }
        field(249; "Pay Int. / Only Other-Dept."; Boolean)
        {
            Caption = 'Pay Int. / Only Other-Dept.';
        }
        field(250; "Sort IE Absent Times"; Integer)
        {
            Caption = 'Sort IE Absent Times';
        }
        field(251; "Sort IE Timeacc./ML"; Integer)
        {
            Caption = 'Sort IE Timeacc./ML';
        }
        field(252; "Transfer Capacities Inactive"; Boolean)
        {
            Caption = 'Transfer Capacities Inactive';
        }
        field(253; "DS/Balance/Plan/Target Month"; Option)
        {
            Caption = 'DS/Balance/Plan/Target Month';
            OptionCaption = ' ,Balance calculated,Planned Time per Month,Target Time per Month';
            OptionMembers = " ","Balance calculated","Planned Time per Month","Target Time per Month";
        }
        field(254; "Absent Day anonymous Active"; Boolean)
        {
            Caption = 'Absent Day anonymous Active';
        }
        field(255; "TP/ProgSave Inactive"; Boolean)
        {
            Caption = 'TP/ProgSave Inactive';
        }
        field(256; "EP/Alternative Balance Output"; Boolean)
        {
            Caption = 'EP/Alternative Balance Output';
        }
        field(257; "TP/Balances +/- Back Calc."; Option)
        {
            Caption = 'TP/Balances +/- Back Calc.';
            OptionCaption = ' ,Plus,Minus,Equal';
            OptionMembers = " ",Plus,Minus,Equal;
        }
        field(258; "Time Manager: delete allowed"; Boolean)
        {
            Caption = 'Time Manager: delete allowed';
        }
        field(259; "Pub. Holiday w/o Processing"; Boolean)
        {
            Caption = 'Pub. Holiday w/o Processing';
        }
        field(260; "Absent Day-Int. ext. inactive"; Boolean)
        {
            Caption = 'Absent Day-Int. ext. inactive';
        }
        field(261; "Journal - Copy 1.Day"; Boolean)
        {
            Caption = 'Journal - Copy 1.Day';
        }
        field(262; "Absent Day <as worked>"; Boolean)
        {
            Caption = 'Absent Day <as worked>';
        }
        field(265; "TA No. Dest/AT-Workflow Cancel"; Code[10])
        {
            Caption = 'TA No. Dest/AT-Workflow Cancel';
            TableRelation = "Time Account/T"."No.";
        }
        field(266; "AT-Workflow Cancel"; Boolean)
        {
            Caption = 'AT-Workflow Cancel';
        }
        field(267; "Lookup-Release for Journal"; Option)
        {
            Caption = 'Lookup-Release for Journal';
            OptionCaption = ' ,Order Journal,Job Journal,Time Journal';
            OptionMembers = " ","Order Journal","Job Journal","Time Journal";
        }
        field(268; "TP/Complete Inactive"; Boolean)
        {
            Caption = 'TP/Complete Inactive';
        }
        field(269; "Algo-No. Report Sum"; Code[10])
        {
            Caption = 'Algo-No. Report Sum';
            TableRelation = "Algorithm/T"."No.";
        }
        field(270; "Ref. Employee Table"; Integer)
        {
            Caption = 'Ref. Employee Table';
            TableRelation = Field."No." WHERE (TableNo = CONST (5056260),
                                               Type = FILTER (<> BLOB),
                                               Enabled = CONST (true));
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Character)
        {
        }
        key(Key3; "Sorting (Matrix Layout)")
        {
        }
        key(Key4; "Sorting Footer 1-9999 right")
        {
        }
        key(Key5; "Sorting Total 1-9999 left")
        {
        }
        key(Key6; "Sorting Statistics 1-9999")
        {
        }
        key(Key7; Description)
        {
        }
    }

    fieldgroups
    {
    }
}

