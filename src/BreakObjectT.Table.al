table 5056306 "Break Object/T"
{
    Caption = 'Break Object';
    DataCaptionFields = "No.", Description;
    Description = 'GrBreakObj';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(10; "Break Begin Clocking"; Time)
        {
            Caption = 'Break Begin Clocking';
        }
        field(11; "Break Begin Reference"; Code[1])
        {
            Caption = 'Break Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(12; "Break End Clocking"; Time)
        {
            Caption = 'Break End Clocking';
        }
        field(13; "Break End Reference"; Code[1])
        {
            Caption = 'Break End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(14; "Break Hours"; Decimal)
        {
            Caption = 'Break Hours';
        }
        field(15; "Break Minutes"; Integer)
        {
            Caption = 'Break Minutes';
        }
        field(16; "Begin Bandwidth Clocking"; Time)
        {
            Caption = 'Begin Bandwidth Clocking';
        }
        field(17; "Begin Bandwidth Reference"; Code[1])
        {
            Caption = 'Begin Bandwidth Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(18; "End Bandwidth Clocking"; Time)
        {
            Caption = 'End Bandwidth Clocking';
        }
        field(19; "End Bandwidth Reference"; Code[1])
        {
            Caption = 'End Bandwidth Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(20; "Target Times Break TA No."; Code[10])
        {
            Caption = 'Target Times Break TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Break));
        }
        field(22; "Actual Times Break TA No."; Code[10])
        {
            Caption = 'Actual Times Break TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Break));
        }
        field(24; "Presence Times Break TA No."; Code[10])
        {
            Caption = 'Presence Times Break TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Break));
        }
        field(26; "Pres. Times Bre. Time Grid No."; Code[10])
        {
            Caption = 'Pres. Times Bre. Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Presence Time Object 1000-1999"));
        }
        field(27; "Time Grid No. Valid when Pres."; Code[10])
        {
            Caption = 'Time Grid No. Valid when Pres.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Presence Time Object 1000-1999"));
        }
        field(28; "Relative Position Clocking"; Time)
        {
            Caption = 'Relative Position Clocking';
        }
        field(29; "Relative Position Reference"; Code[1])
        {
            Caption = 'Relative Position Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(30; "No Target Extension"; Boolean)
        {
            Caption = 'No Target Extension';
        }
        field(31; "In Middle of Actual/not Target"; Boolean)
        {
            Caption = 'In Middle of Actual/not Target';
        }
        field(32; "Dyn. Presence Minimum"; Integer)
        {
            Caption = 'Dyn. Presence Minimum';
        }
        field(33; "Dyn. Presence Maximum"; Integer)
        {
            Caption = 'Dyn. Presence Maximum';
        }
        field(34; "Bandw./Clocking Pair No."; Integer)
        {
            Caption = 'Bandw./Clocking Pair No.';
        }
        field(35; "Break Target equal Present"; Boolean)
        {
            Caption = 'Break Target equal Present';
        }
        field(36; "IE/Break Automatic Off"; Boolean)
        {
            Caption = 'IE/Break Automatic Off';
        }
        field(37; "In Middle of Actual/and Target"; Boolean)
        {
            Caption = 'In Middle of Actual/and Target';
        }
        field(50; "Present from (Minutes) 1"; Integer)
        {
            Caption = 'Present from (Minutes) 1';
        }
        field(51; "Present to (Minutes) 1"; Integer)
        {
            Caption = 'Present to (Minutes) 1';
        }
        field(52; "Break Target Value (Minutes)1"; Integer)
        {
            Caption = 'Break Target Value (Minutes)1';
        }
        field(53; "Present from (Minutes) 2"; Integer)
        {
            Caption = 'Present from (Minutes) 2';
        }
        field(54; "Present to (Minutes) 2"; Integer)
        {
            Caption = 'Present to (Minutes) 2';
        }
        field(55; "Break Target Value (Minutes)2"; Integer)
        {
            Caption = 'Break Target Value (Minutes)2';
        }
        field(56; "Present from (Minutes) 3"; Integer)
        {
            Caption = 'Present from (Minutes) 3';
        }
        field(57; "Present to (Minutes) 3"; Integer)
        {
            Caption = 'Present to (Minutes) 3';
        }
        field(58; "Break Target Value (Minutes)3"; Integer)
        {
            Caption = 'Break Target Value (Minutes)3';
        }
        field(59; "Present from (Minutes) 4"; Integer)
        {
            Caption = 'Present from (Minutes) 4';
        }
        field(60; "Present to (Minutes) 4"; Integer)
        {
            Caption = 'Present to (Minutes) 4';
        }
        field(61; "Break Target Value (Minutes)4"; Integer)
        {
            Caption = 'Break Target Value (Minutes)4';
        }
        field(62; "Present from (Minutes) 5"; Integer)
        {
            Caption = 'Present from (Minutes) 5';
        }
        field(63; "Present to (Minutes) 5"; Integer)
        {
            Caption = 'Present to (Minutes) 5';
        }
        field(64; "Break Target Value (Minutes)5"; Integer)
        {
            Caption = 'Break Target Value (Minutes)5';
        }
        field(65; "Present from (Minutes) 6"; Integer)
        {
            Caption = 'Present from (Minutes) 6';
        }
        field(66; "Present to (Minutes) 6"; Integer)
        {
            Caption = 'Present to (Minutes) 6';
        }
        field(67; "Break Target Value (Minutes)6"; Integer)
        {
            Caption = 'Break Target Value (Minutes)6';
        }
        field(68; "Present from (Minutes) 7"; Integer)
        {
            Caption = 'Present from (Minutes) 7';
        }
        field(69; "Present to (Minutes) 7"; Integer)
        {
            Caption = 'Present to (Minutes) 7';
        }
        field(70; "Break Target Value (Minutes)7"; Integer)
        {
            Caption = 'Break Target Value (Minutes)7';
        }
        field(71; "Present from (Minutes) 8"; Integer)
        {
            Caption = 'Present from (Minutes) 8';
        }
        field(72; "Present to (Minutes) 8"; Integer)
        {
            Caption = 'Present to (Minutes) 8';
        }
        field(73; "Break Target Value (Minutes)8"; Integer)
        {
            Caption = 'Break Target Value (Minutes)8';
        }
        field(74; "Present from (Minutes) 9"; Integer)
        {
            Caption = 'Present from (Minutes) 9';
        }
        field(75; "Present to (Minutes) 9"; Integer)
        {
            Caption = 'Present to (Minutes) 9';
        }
        field(76; "Break Target Value (Minutes)9"; Integer)
        {
            Caption = 'Break Target Value (Minutes)9';
        }
        field(77; "Present from (Minutes) 10"; Integer)
        {
            Caption = 'Present from (Minutes) 10';
        }
        field(78; "Present to (Minutes) 10"; Integer)
        {
            Caption = 'Present to (Minutes) 10';
        }
        field(79; "Break Target Value (Minutes)10"; Integer)
        {
            Caption = 'Break Target Value (Minutes)10';
        }
        field(80; "Positioning Break Target"; Boolean)
        {
            Caption = 'Positioning Break Target';
        }
        field(81; "Positioning Break Actual"; Boolean)
        {
            Caption = 'Positioning Break Actual';
        }
        field(100; "Check Interval Begin Clocking"; Time)
        {
            Caption = 'Check Interval Begin Clocking';
        }
        field(101; "Check Interval Begin Ref."; Code[1])
        {
            Caption = 'Check Interval Begin Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(102; "Check Interval End Clocking"; Time)
        {
            Caption = 'Check Interval End Clocking';
        }
        field(103; "Check Interval End Reference"; Code[1])
        {
            Caption = 'Check Interval End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(104; "Present Minutes included from"; Integer)
        {
            Caption = 'Present Minutes included from';
        }
        field(105; "Present Minutes included to"; Integer)
        {
            Caption = 'Present Minutes included to';
        }
        field(110; "Cond. Break Begin Clocking"; Time)
        {
            Caption = 'Cond. Break Begin Clocking';
        }
        field(111; "Cond. Break Begin Reference"; Code[1])
        {
            Caption = 'Cond. Break Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(112; "Cond. Break End Clocking"; Time)
        {
            Caption = 'Cond. Break End Clocking';
        }
        field(113; "Cond. Break End Reference"; Code[1])
        {
            Caption = 'Cond. Break End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(114; "Cond. Break Hours"; Decimal)
        {
            Caption = 'Cond. Break Hours';
        }
        field(115; "Cond. Break Minutes"; Integer)
        {
            Caption = 'Cond. Break Minutes';
        }
        field(120; "Smokers Break Begin Clocking"; Time)
        {
            Caption = 'Smokers Break Begin Clocking';
        }
        field(121; "Cigarette Break Beg. Reference"; Code[1])
        {
            Caption = 'Cigarette Break Beg. Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(122; "Smokers Break End Clocking"; Time)
        {
            Caption = 'Smokers Break End Clocking';
        }
        field(123; "Cigarette Break End Reference"; Code[1])
        {
            Caption = 'Cigarette Break End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(124; "Cigarette Break from (Minutes)"; Integer)
        {
            Caption = 'Cigarette Break from (Minutes)';
        }
        field(125; "Cigarette Break to (Minutes)"; Integer)
        {
            Caption = 'Cigarette Break to (Minutes)';
        }
        field(126; "Time Acc. No. Cigarette Break"; Code[10])
        {
            Caption = 'Time Acc. No. Cigarette Break';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Break));
        }
        field(130; "Pres.Ranges on Cigarette Break"; Boolean)
        {
            Caption = 'Pres.Ranges on Cigarette Break';
        }
        field(131; "TA No. Pre-within-Bre Range 1"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(132; "TA No. Pre-within-Bre Range 2"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(133; "TA No. Pre-within-Bre Range 3"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 3';
            TableRelation = "Time Account/T"."No.";
        }
        field(134; "TA No. Pre-within-Bre Range 4"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 4';
            TableRelation = "Time Account/T"."No.";
        }
        field(135; "TA No. Pre-within-Bre Range 5"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 5';
            TableRelation = "Time Account/T"."No.";
        }
        field(136; "TA No. Pre-within-Bre Range 6"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 6';
            TableRelation = "Time Account/T"."No.";
        }
        field(137; "TA No. Pre-within-Bre Range 7"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 7';
            TableRelation = "Time Account/T"."No.";
        }
        field(138; "TA No. Pre-within-Bre Range 8"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 8';
            TableRelation = "Time Account/T"."No.";
        }
        field(139; "TA No. Pre-within-Bre Range 9"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 9';
            TableRelation = "Time Account/T"."No.";
        }
        field(140; "TA No. Pre-within-Bre Range 10"; Code[10])
        {
            Caption = 'TA No. Pre-within-Bre Range 10';
            TableRelation = "Time Account/T"."No.";
        }
        field(151; "Time Acc. No. Break-Range 1"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(152; "Time Acc. No. Break-Range 2"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(153; "Time Acc. No. Break-Range 3"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 3';
            TableRelation = "Time Account/T"."No.";
        }
        field(154; "Time Acc. No. Break-Range 4"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 4';
            TableRelation = "Time Account/T"."No.";
        }
        field(155; "Time Acc. No. Break-Range 5"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 5';
            TableRelation = "Time Account/T"."No.";
        }
        field(156; "Time Acc. No. Break-Range 6"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 6';
            TableRelation = "Time Account/T"."No.";
        }
        field(157; "Time Acc. No. Break-Range 7"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 7';
            TableRelation = "Time Account/T"."No.";
        }
        field(158; "Time Acc. No. Break-Range 8"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 8';
            TableRelation = "Time Account/T"."No.";
        }
        field(159; "Time Acc. No. Break-Range 9"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 9';
            TableRelation = "Time Account/T"."No.";
        }
        field(160; "Time Acc. No. Break-Range 10"; Code[10])
        {
            Caption = 'Time Acc. No. Break-Range 10';
            TableRelation = "Time Account/T"."No.";
        }
        field(161; "TA No. Range bef. 1.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range bef. 1.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(162; "TA No. Range in 1.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range in 1.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(163; "TA No. Range aft. 1.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range aft. 1.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(164; "TA No. Range bef. 2.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range bef. 2.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(165; "TA No. Range in 2.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range in 2.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(166; "TA No. Range aft. 2.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range aft. 2.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(167; "TA No. Range bef. 3.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range bef. 3.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(168; "TA No. Range in 3.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range in 3.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(169; "TA No. Range aft. 3.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range aft. 3.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(170; "TA No. Range bef. 4.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range bef. 4.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(171; "TA No. Range in 4.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range in 4.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(172; "TA No. Range aft. 4.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Range aft. 4.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(181; "TA No. Act. bef. 1.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. bef. 1.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(182; "TA No. Act. in 1.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. in 1.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(183; "TA No. Act. aft. 1.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. aft. 1.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(184; "TA No. Act. bef. 2.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. bef. 2.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(185; "TA No. Act. in 2.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. in 2.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(186; "TA No. Act. aft. 2.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. aft. 2.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(187; "TA No. Act. bef. 3.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. bef. 3.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(188; "TA No. Act. in 3.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. in 3.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(189; "TA No. Act. aft. 3.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. aft. 3.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(190; "TA No. Act. bef. 4.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. bef. 4.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(191; "TA No. Act. in 4.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. in 4.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(192; "TA No. Act. aft. 4.Dyn.Target"; Code[10])
        {
            Caption = 'TA No. Act. aft. 4.Dyn.Target';
            TableRelation = "Time Account/T"."No.";
        }
        field(200; "Begin cond. Bw. Clocking"; Time)
        {
            Caption = 'Begin cond. Bw. Clocking';
        }
        field(201; "Begin cond. Bw. Reference"; Code[1])
        {
            Caption = 'Begin cond. Bw. Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(202; "End cond. Bw. Clocking"; Time)
        {
            Caption = 'End cond. Bw. Clocking';
        }
        field(203; "End cond. Bw. Reference"; Code[1])
        {
            Caption = 'End cond. Bw. Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(204; "Time Acc. No. Break cond."; Code[10])
        {
            Caption = 'Time Acc. No. Break cond.';
            TableRelation = "Time Account/T"."No.";
        }
        field(210; "If Present 1 Begin Clocking"; Time)
        {
            Caption = 'If Present 1 Begin Clocking';
        }
        field(211; "If Present 1 Begin Reference"; Code[1])
        {
            Caption = 'If Present 1 Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(212; "If Present 1 End Clocking"; Time)
        {
            Caption = 'If Present 1 End Clocking';
        }
        field(213; "If Present 1 End Reference"; Code[1])
        {
            Caption = 'If Present 1 End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(214; "If Present 1 Calculation"; Option)
        {
            Caption = 'If Present 1 Calculation';
            OptionCaption = ' ,complete included,partly included';
            OptionMembers = " ","complete included","partly included";
        }
        field(215; "and/or"; Option)
        {
            Caption = 'and/or';
            OptionCaption = ' ,and,or';
            OptionMembers = " ","and","or";
        }
        field(220; "If Present 2 Begin Clocking"; Time)
        {
            Caption = 'If Present 2 Begin Clocking';
        }
        field(221; "If Present 2 Begin Reference"; Code[1])
        {
            Caption = 'If Present 2 Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(222; "If Present 2 End Clocking"; Time)
        {
            Caption = 'If Present 2 End Clocking';
        }
        field(223; "If Present 2 End Reference"; Code[1])
        {
            Caption = 'If Present 2 End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(224; "If Present 2 Calculation"; Option)
        {
            Caption = 'If Present 2 Calculation';
            OptionCaption = ' ,complete included,partly included';
            OptionMembers = " ","complete included","partly included";
        }
        field(230; "TA No. Source Sum to Line"; Code[10])
        {
            Caption = 'TA No. Source Sum to Line';
            TableRelation = "Time Account/T"."No.";
        }
        field(231; "TA No. Destination Sum to Line"; Code[10])
        {
            Caption = 'TA No. Destination Sum to Line';
            TableRelation = "Time Account/T"."No.";
        }
        field(232; "Begin cond. Target Clocking"; Time)
        {
            Caption = 'Begin cond. Target Clocking';
        }
        field(233; "Begin cond. Target Reference"; Code[1])
        {
            Caption = 'Begin cond. Target Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(234; "End cond. Target Clocking"; Time)
        {
            Caption = 'End cond. Target Clocking';
        }
        field(235; "End cond. Target Reference"; Code[1])
        {
            Caption = 'End cond. Target Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(236; "Time Acc. No. Target cond."; Code[10])
        {
            Caption = 'Time Acc. No. Target cond.';
            TableRelation = "Time Account/T"."No.";
        }
        field(237; "Processing Variation"; Option)
        {
            Caption = 'Processing Variation';
            OptionCaption = ' ,Processing conditioned Target Clocking,Processing Break Deduction,Actual Break fills Target Break,Actual Break cancels Target Break';
            OptionMembers = " ","Processing conditioned Target Clocking","Processing Break Deduction","Actual Break fills Target Break","Actual Break cancels Target Break";
        }
        field(238; "Processing Break Deduction"; Option)
        {
            Caption = 'Processing Break Deduction';
            OptionCaption = ' ,Deduction longest Presence Range forward,Deduction longest Presence Range back,Deduction last Presence Range back';
            OptionMembers = " ","Deduction longest Presence Range forward","Deduction longest Presence Range back","Deduction last Presence Range back";
        }
        field(239; "Time Acc. No. Alt.Target Break"; Code[10])
        {
            Caption = 'Time Acc. No. Alt.Target Break';
            TableRelation = "Time Account/T"."No.";
        }
        field(240; "Break Target fill up Minutes"; Integer)
        {
            Caption = 'Break Target fill up Minutes';
        }
        field(241; "TA No. Info-Clk. deleted Break"; Code[10])
        {
            Caption = 'TA No. Info-Clk. deleted Break';
            TableRelation = "Time Account/T"."No.";
        }
        field(242; "TA No. Dyn. Break Pres."; Code[10])
        {
            Caption = 'TA No. Dyn. Break Pres.';
            TableRelation = "Time Account/T"."No.";
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

