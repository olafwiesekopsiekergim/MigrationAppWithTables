table 5056296 "Time Type/T"
{
    Caption = 'Time Type';
    DataCaptionFields = "No.";
    Description = 'GrTimeType';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Record Type"; Option)
        {
            Caption = 'Record Type';
            OptionCaption = 'Pay Type,Absent Day,FDC,Duty Scheduling Minimum,Duty Scheduling Maximum,Time Account';
            OptionMembers = "Pay Type","Absent Day",FDC,"Duty Scheduling Minimum","Duty Scheduling Maximum","Time Account";
        }
        field(5; "Org-Form 2"; Option)
        {
            Caption = 'Org-Form 2';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(6; "Org-Value from 2"; Code[20])
        {
            Caption = 'Org-Value from 2';
            TableRelation = IF ("Org-Form 2" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Org-Form 2" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form 2" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form 2" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form 2" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form 2" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form 2" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form 2" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form 2" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form 2" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(7; "Org-Value to 2"; Code[20])
        {
            Caption = 'Org-Value to 2';
            TableRelation = IF ("Org-Form 2" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Org-Form 2" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form 2" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form 2" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form 2" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form 2" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form 2" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form 2" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form 2" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form 2" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(8; "Org-Group No. 2"; Code[20])
        {
            Caption = 'Org-Group No. 2';
            TableRelation = "Organization Group/T"."No.";
        }
        field(9; "Org-Form NOT 2"; Boolean)
        {
            Caption = 'Org-Form NOT 2';
        }
        field(10; "Org-Form 1"; Option)
        {
            Caption = 'Org-Form 1';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(11; "Org-Value from 1"; Code[20])
        {
            Caption = 'Org-Value from 1';
            TableRelation = IF ("Org-Form 1" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Org-Form 1" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form 1" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form 1" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form 1" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form 1" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form 1" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form 1" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form 1" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form 1" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(12; "Org-Value to 1"; Code[20])
        {
            Caption = 'Org-Value to 1';
            TableRelation = IF ("Org-Form 1" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Org-Form 1" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form 1" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form 1" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form 1" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form 1" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form 1" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form 1" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form 1" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form 1" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(13; "Org-Group No. 1"; Code[20])
        {
            Caption = 'Org-Group No. 1';
            TableRelation = "Organization Group/T"."No.";
        }
        field(15; "Org-Form NOT 1"; Boolean)
        {
            Caption = 'Org-Form NOT 1';
        }
        field(16; "If Time Account No."; Code[10])
        {
            Caption = 'If Time Account No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(21; "Then Pay Type"; Code[10])
        {
            Caption = 'Then Pay Type';
        }
        field(22; "Then TA No.Value Car. Fwd."; Code[10])
        {
            Caption = 'Then TA No.Value Car. Fwd.';
            TableRelation = "Time Account/T"."No.";
        }
        field(23; "If Department No."; Code[10])
        {
            Caption = 'If Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(24; "If Order No."; Code[20])
        {
            Caption = 'If Order No.';
        }
        field(25; "If Task No."; Code[20])
        {
            Caption = 'If Task No.';
        }
        field(26; "If Dimension 1"; Code[20])
        {
            Caption = 'If Dimension 1';
        }
        field(27; "If Dimension 2"; Code[20])
        {
            Caption = 'If Dimension 2';
        }
        field(28; "If Dimension 3"; Code[20])
        {
            Caption = 'If Dimension 3';
        }
        field(29; "If Dimension 4"; Code[20])
        {
            Caption = 'If Dimension 4';
        }
        field(30; "Absent Day - Monday"; Boolean)
        {
            Caption = 'Absent Day - Monday';
        }
        field(31; "Absent Day - Tuesday"; Boolean)
        {
            Caption = 'Absent Day - Tuesday';
        }
        field(32; "Absent Day - Wednesday"; Boolean)
        {
            Caption = 'Absent Day - Wednesday';
        }
        field(33; "Absent Day - Thursday"; Boolean)
        {
            Caption = 'Absent Day - Thursday';
        }
        field(34; "Absent Day - Friday"; Boolean)
        {
            Caption = 'Absent Day - Friday';
        }
        field(35; "Absent Day - Saturday"; Boolean)
        {
            Caption = 'Absent Day - Saturday';
        }
        field(36; "Absent Day - Sunday"; Boolean)
        {
            Caption = 'Absent Day - Sunday';
        }
        field(37; "Absent Day at Target Time"; Boolean)
        {
            Caption = 'Absent Day at Target Time';
        }
        field(40; "Processing - Monday"; Boolean)
        {
            Caption = 'Processing - Monday';
        }
        field(41; "Processing - Tuesday"; Boolean)
        {
            Caption = 'Processing - Tuesday';
        }
        field(42; "Processing - Wednesday"; Boolean)
        {
            Caption = 'Processing - Wednesday';
        }
        field(43; "Processing - Thursday"; Boolean)
        {
            Caption = 'Processing - Thursday';
        }
        field(44; "Processing - Friday"; Boolean)
        {
            Caption = 'Processing - Friday';
        }
        field(45; "Processing - Saturday"; Boolean)
        {
            Caption = 'Processing - Saturday';
        }
        field(46; "Processing - Sunday"; Boolean)
        {
            Caption = 'Processing - Sunday';
        }
        field(47; "Processing on Target Time"; Boolean)
        {
            Caption = 'Processing on Target Time';
        }
        field(50; "Special Day - Monday"; Boolean)
        {
            Caption = 'Special Day - Monday';
        }
        field(51; "Special Day - Tuesday"; Boolean)
        {
            Caption = 'Special Day - Tuesday';
        }
        field(52; "Special Day - Wednesday"; Boolean)
        {
            Caption = 'Special Day - Wednesday';
        }
        field(53; "Special Day - Thursday"; Boolean)
        {
            Caption = 'Special Day - Thursday';
        }
        field(54; "Special Day - Friday"; Boolean)
        {
            Caption = 'Special Day - Friday';
        }
        field(55; "Special Day - Saturday"; Boolean)
        {
            Caption = 'Special Day - Saturday';
        }
        field(56; "Special Day - Sunday"; Boolean)
        {
            Caption = 'Special Day - Sunday';
        }
        field(57; "TA Gr. No. Pub. Holiday Filter"; Code[10])
        {
            Caption = 'TA Gr. No. Pub. Holiday Filter';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(60; "Deviation Monday 1"; Boolean)
        {
            Caption = 'Deviation Monday 1';
        }
        field(61; "Deviation Tuesday 1"; Boolean)
        {
            Caption = 'Deviation Tuesday 1';
        }
        field(62; "Deviation Wednesday 1"; Boolean)
        {
            Caption = 'Deviation Wednesday 1';
        }
        field(63; "Deviation Thursday 1"; Boolean)
        {
            Caption = 'Deviation Thursday 1';
        }
        field(64; "Deviation Friday 1"; Boolean)
        {
            Caption = 'Deviation Friday 1';
        }
        field(65; "Deviation Saturday 1"; Boolean)
        {
            Caption = 'Deviation Saturday 1';
        }
        field(66; "Deviation Sunday 1"; Boolean)
        {
            Caption = 'Deviation Sunday 1';
        }
        field(67; "Deviation Threshold Minutes 1"; Integer)
        {
            Caption = 'Deviation Threshold Minutes 1';
        }
        field(70; "Deviation Monday 2"; Boolean)
        {
            Caption = 'Deviation Monday 2';
        }
        field(71; "Deviation Tuesday 2"; Boolean)
        {
            Caption = 'Deviation Tuesday 2';
        }
        field(72; "Deviation Wednesday 2"; Boolean)
        {
            Caption = 'Deviation Wednesday 2';
        }
        field(73; "Deviation Thursday 2"; Boolean)
        {
            Caption = 'Deviation Thursday 2';
        }
        field(74; "Deviation Friday 2"; Boolean)
        {
            Caption = 'Deviation Friday 2';
        }
        field(75; "Deviation Saturday 2"; Boolean)
        {
            Caption = 'Deviation Saturday 2';
        }
        field(76; "Deviation Sunday 2"; Boolean)
        {
            Caption = 'Deviation Sunday 2';
        }
        field(77; "Deviation Threshold Minutes 2"; Integer)
        {
            Caption = 'Deviation Threshold Minutes 2';
        }
        field(100; "Num. Employee Monday"; Decimal)
        {
            Caption = 'Num. Employee Monday';
        }
        field(101; "Num. Qual.Level 1 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Monday';
        }
        field(102; "Num. Qual.Level 2 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Monday';
        }
        field(103; "Num. Qual.Level 3 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Monday';
        }
        field(104; "Num. Qual.Level 4 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Monday';
        }
        field(105; "Num. Qual.Level 5 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Monday';
        }
        field(106; "Num. Qual.Level 6 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Monday';
        }
        field(107; "Num. Qual.Level 7 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Monday';
        }
        field(108; "Num. Qual.Level 8 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Monday';
        }
        field(109; "Num. Qual.Level 9 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Monday';
        }
        field(110; "Num. Qual.Level 10 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Monday';
        }
        field(112; "Num. Early Shift Monday"; Decimal)
        {
            Caption = 'Num. Early Shift Monday';
        }
        field(113; "Num. Late Shift Monday"; Decimal)
        {
            Caption = 'Num. Late Shift Monday';
        }
        field(114; "Num. Night Shift Monday"; Decimal)
        {
            Caption = 'Num. Night Shift Monday';
        }
        field(115; "Num. Normal Shift Monday"; Decimal)
        {
            Caption = 'Num. Normal Shift Monday';
        }
        field(116; "Num. Special Shift Monday"; Decimal)
        {
            Caption = 'Num. Special Shift Monday';
        }
        field(117; "Num. Department Monday"; Decimal)
        {
            Caption = 'Num. Department Monday';
        }
        field(118; "Num. Order Monday"; Decimal)
        {
            Caption = 'Num. Order Monday';
        }
        field(119; "Num. Task Monday"; Decimal)
        {
            Caption = 'Num. Task Monday';
        }
        field(120; "Num. Dimension 1 Monday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Monday';
        }
        field(121; "Num. Dimension 2 Monday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Monday';
        }
        field(122; "Num. Dimension 3 Monday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Monday';
        }
        field(123; "Num. Dimension 4 Monday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Monday';
        }
        field(131; "Num. Qual.Level 11 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Monday';
        }
        field(132; "Num. Qual.Level 12 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Monday';
        }
        field(133; "Num. Qual.Level 13 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Monday';
        }
        field(134; "Num. Qual.Level 14 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Monday';
        }
        field(135; "Num. Qual.Level 15 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Monday';
        }
        field(136; "Num. Qual.Level 16 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Monday';
        }
        field(137; "Num. Qual.Level 17 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Monday';
        }
        field(138; "Num. Qual.Level 18 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Monday';
        }
        field(139; "Num. Qual.Level 19 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Monday';
        }
        field(140; "Num. Qual.Level 20 Monday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Monday';
        }
        field(200; "Num. Employee Tuesday"; Decimal)
        {
            Caption = 'Num. Employee Tuesday';
        }
        field(201; "Num. Qual.Level 1 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Tuesday';
        }
        field(202; "Num. Qual.Level 2 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Tuesday';
        }
        field(203; "Num. Qual.Level 3 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Tuesday';
        }
        field(204; "Num. Qual.Level 4 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Tuesday';
        }
        field(205; "Num. Qual.Level 5 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Tuesday';
        }
        field(206; "Num. Qual.Level 6 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Tuesday';
        }
        field(207; "Num. Qual.Level 7 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Tuesday';
        }
        field(208; "Num. Qual.Level 8 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Tuesday';
        }
        field(209; "Num. Qual.Level 9 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Tuesday';
        }
        field(210; "Num. Qual.Level 10 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Tuesday';
        }
        field(212; "Num. Early Shift Tuesday"; Decimal)
        {
            Caption = 'Num. Early Shift Tuesday';
        }
        field(213; "Num. Late Shift Tuesday"; Decimal)
        {
            Caption = 'Num. Late Shift Tuesday';
        }
        field(214; "Num. Night Shift Tuesday"; Decimal)
        {
            Caption = 'Num. Night Shift Tuesday';
        }
        field(215; "Num. Normal Shift Tuesday"; Decimal)
        {
            Caption = 'Num. Normal Shift Tuesday';
        }
        field(216; "Num. Special Shift Tuesday"; Decimal)
        {
            Caption = 'Num. Special Shift Tuesday';
        }
        field(217; "Num. Department Tuesday"; Decimal)
        {
            Caption = 'Num. Department Tuesday';
        }
        field(218; "Num. Order Tuesday"; Decimal)
        {
            Caption = 'Num. Order Tuesday';
        }
        field(219; "Num. Task Tuesday"; Decimal)
        {
            Caption = 'Num. Task Tuesday';
        }
        field(220; "Num. Dimension 1 Tuesday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Tuesday';
        }
        field(221; "Num. Dimension 2 Tuesday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Tuesday';
        }
        field(222; "Num. Dimension 3 Tuesday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Tuesday';
        }
        field(223; "Num. Dimension 4 Tuesday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Tuesday';
        }
        field(231; "Num. Qual.Level 11 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Tuesday';
        }
        field(232; "Num. Qual.Level 12 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Tuesday';
        }
        field(233; "Num. Qual.Level 13 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Tuesday';
        }
        field(234; "Num. Qual.Level 14 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Tuesday';
        }
        field(235; "Num. Qual.Level 15 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Tuesday';
        }
        field(236; "Num. Qual.Level 16 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Tuesday';
        }
        field(237; "Num. Qual.Level 17 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Tuesday';
        }
        field(238; "Num. Qual.Level 18 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Tuesday';
        }
        field(239; "Num. Qual.Level 19 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Tuesday';
        }
        field(240; "Num. Qual.Level 20 Tuesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Tuesday';
        }
        field(300; "Num. Employee Wednesday"; Decimal)
        {
            Caption = 'Num. Employee Wednesday';
        }
        field(301; "Num. Qual.Level 1 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Wednesday';
        }
        field(302; "Num. Qual.Level 2 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Wednesday';
        }
        field(303; "Num. Qual.Level 3 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Wednesday';
        }
        field(304; "Num. Qual.Level 4 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Wednesday';
        }
        field(305; "Num. Qual.Level 5 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Wednesday';
        }
        field(306; "Num. Qual.Level 6 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Wednesday';
        }
        field(307; "Num. Qual.Level 7 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Wednesday';
        }
        field(308; "Num. Qual.Level 8 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Wednesday';
        }
        field(309; "Num. Qual.Level 9 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Wednesday';
        }
        field(310; "Num. Qual.Level 10 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Wednesday';
        }
        field(312; "Num. Early Shift Wednesday"; Decimal)
        {
            Caption = 'Num. Early Shift Wednesday';
        }
        field(313; "Num. Late Shift Wednesday"; Decimal)
        {
            Caption = 'Num. Late Shift Wednesday';
        }
        field(314; "Num. Night Shift Wednesday"; Decimal)
        {
            Caption = 'Num. Night Shift Wednesday';
        }
        field(315; "Num. Normal Shift Wednesday"; Decimal)
        {
            Caption = 'Num. Normal Shift Wednesday';
        }
        field(316; "Num. Special Shift Wednesday"; Decimal)
        {
            Caption = 'Num. Special Shift Wednesday';
        }
        field(317; "Num. Department Wednesday"; Decimal)
        {
            Caption = 'Num. Department Wednesday';
        }
        field(318; "Num. Order Wednesday"; Decimal)
        {
            Caption = 'Num. Order Wednesday';
        }
        field(319; "Num. Task Wednesday"; Decimal)
        {
            Caption = 'Num. Task Wednesday';
        }
        field(320; "Num. Dimension 1 Wednesday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Wednesday';
        }
        field(321; "Num. Dimension 2 Wednesday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Wednesday';
        }
        field(322; "Num. Dimension 3 Wednesday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Wednesday';
        }
        field(323; "Num. Dimension 4 Wednesday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Wednesday';
        }
        field(331; "Num. Qual.Level 11 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Wednesday';
        }
        field(332; "Num. Qual.Level 12 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Wednesday';
        }
        field(333; "Num. Qual.Level 13 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Wednesday';
        }
        field(334; "Num. Qual.Level 14 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Wednesday';
        }
        field(335; "Num. Qual.Level 15 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Wednesday';
        }
        field(336; "Num. Qual.Level 16 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Wednesday';
        }
        field(337; "Num. Qual.Level 17 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Wednesday';
        }
        field(338; "Num. Qual.Level 18 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Wednesday';
        }
        field(339; "Num. Qual.Level 19 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Wednesday';
        }
        field(340; "Num. Qual.Level 20 Wednesday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Wednesday';
        }
        field(400; "Num. Employee Thursday"; Decimal)
        {
            Caption = 'Num. Employee Thursday';
        }
        field(401; "Num. Qual.Level 1 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Thursday';
        }
        field(402; "Num. Qual.Level 2 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Thursday';
        }
        field(403; "Num. Qual.Level 3 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Thursday';
        }
        field(404; "Num. Qual.Level 4 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Thursday';
        }
        field(405; "Num. Qual.Level 5 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Thursday';
        }
        field(406; "Num. Qual.Level 6 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Thursday';
        }
        field(407; "Num. Qual.Level 7 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Thursday';
        }
        field(408; "Num. Qual.Level 8 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Thursday';
        }
        field(409; "Num. Qual.Level 9 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Thursday';
        }
        field(410; "Num. Qual.Level 10 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Thursday';
        }
        field(412; "Num. Early Shift Thursday"; Decimal)
        {
            Caption = 'Num. Early Shift Thursday';
        }
        field(413; "Num. Late Shift Thursday"; Decimal)
        {
            Caption = 'Num. Late Shift Thursday';
        }
        field(414; "Num. Night Shift Thursday"; Decimal)
        {
            Caption = 'Num. Night Shift Thursday';
        }
        field(415; "Num. Normal Shift Thursday"; Decimal)
        {
            Caption = 'Num. Normal Shift Thursday';
        }
        field(416; "Num. Special Shift Thursday"; Decimal)
        {
            Caption = 'Num. Special Shift Thursday';
        }
        field(417; "Num. Department Thursday"; Decimal)
        {
            Caption = 'Num. Department Thursday';
        }
        field(418; "Num. Order Thursday"; Decimal)
        {
            Caption = 'Num. Order Thursday';
        }
        field(419; "Num. Task Thursday"; Decimal)
        {
            Caption = 'Num. Task Thursday';
        }
        field(420; "Num. Dimension 1 Thursday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Thursday';
        }
        field(421; "Num. Dimension 2 Thursday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Thursday';
        }
        field(422; "Num. Dimension 3 Thursday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Thursday';
        }
        field(423; "Num. Dimension 4 Thursday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Thursday';
        }
        field(431; "Num. Qual.Level 11 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Thursday';
        }
        field(432; "Num. Qual.Level 12 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Thursday';
        }
        field(433; "Num. Qual.Level 13 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Thursday';
        }
        field(434; "Num. Qual.Level 14 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Thursday';
        }
        field(435; "Num. Qual.Level 15 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Thursday';
        }
        field(436; "Num. Qual.Level 16 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Thursday';
        }
        field(437; "Num. Qual.Level 17 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Thursday';
        }
        field(438; "Num. Qual.Level 18 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Thursday';
        }
        field(439; "Num. Qual.Level 19 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Thursday';
        }
        field(440; "Num. Qual.Level 20 Thursday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Thursday';
        }
        field(500; "Num. Employee Friday"; Decimal)
        {
            Caption = 'Num. Employee Friday';
        }
        field(501; "Num. Qual.Level 1 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Friday';
        }
        field(502; "Num. Qual.Level 2 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Friday';
        }
        field(503; "Num. Qual.Level 3 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Friday';
        }
        field(504; "Num. Qual.Level 4 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Friday';
        }
        field(505; "Num. Qual.Level 5 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Friday';
        }
        field(506; "Num. Qual.Level 6 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Friday';
        }
        field(507; "Num. Qual.Level 7 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Friday';
        }
        field(508; "Num. Qual.Level 8 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Friday';
        }
        field(509; "Num. Qual.Level 9 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Friday';
        }
        field(510; "Num. Qual.Level 10 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Friday';
        }
        field(512; "Num. Early Shift Friday"; Decimal)
        {
            Caption = 'Num. Early Shift Friday';
        }
        field(513; "Num. Late Shift Friday"; Decimal)
        {
            Caption = 'Num. Late Shift Friday';
        }
        field(514; "Num. Night Shift Friday"; Decimal)
        {
            Caption = 'Num. Night Shift Friday';
        }
        field(515; "Num. Normal Shift Friday"; Decimal)
        {
            Caption = 'Num. Normal Shift Friday';
        }
        field(516; "Num. Special Shift Friday"; Decimal)
        {
            Caption = 'Num. Special Shift Friday';
        }
        field(517; "Num. Department Friday"; Decimal)
        {
            Caption = 'Num. Department Friday';
        }
        field(518; "Num. Order Friday"; Decimal)
        {
            Caption = 'Num. Order Friday';
        }
        field(519; "Num. Task Friday"; Decimal)
        {
            Caption = 'Num. Task Friday';
        }
        field(520; "Num. Dimension 1 Friday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Friday';
        }
        field(521; "Num. Dimension 2 Friday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Friday';
        }
        field(522; "Num. Dimension 3 Friday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Friday';
        }
        field(523; "Num. Dimension 4 Friday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Friday';
        }
        field(531; "Num. Qual.Level 11 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Friday';
        }
        field(532; "Num. Qual.Level 12 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Friday';
        }
        field(533; "Num. Qual.Level 13 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Friday';
        }
        field(534; "Num. Qual.Level 14 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Friday';
        }
        field(535; "Num. Qual.Level 15 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Friday';
        }
        field(536; "Num. Qual.Level 16 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Friday';
        }
        field(537; "Num. Qual.Level 17 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Friday';
        }
        field(538; "Num. Qual.Level 18 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Friday';
        }
        field(539; "Num. Qual.Level 19 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Friday';
        }
        field(540; "Num. Qual.Level 20 Friday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Friday';
        }
        field(600; "Num. Employee Saturday"; Decimal)
        {
            Caption = 'Num. Employee Saturday';
        }
        field(601; "Num. Qual.Level 1 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Saturday';
        }
        field(602; "Num. Qual.Level 2 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Saturday';
        }
        field(603; "Num. Qual.Level 3 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Saturday';
        }
        field(604; "Num. Qual.Level 4 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Saturday';
        }
        field(605; "Num. Qual.Level 5 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Saturday';
        }
        field(606; "Num. Qual.Level 6 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Saturday';
        }
        field(607; "Num. Qual.Level 7 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Saturday';
        }
        field(608; "Num. Qual.Level 8 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Saturday';
        }
        field(609; "Num. Qual.Level 9 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Saturday';
        }
        field(610; "Num. Qual.Level 10 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Saturday';
        }
        field(612; "Num. Early Shift Saturday"; Decimal)
        {
            Caption = 'Num. Early Shift Saturday';
        }
        field(613; "Num. Late Shift Saturday"; Decimal)
        {
            Caption = 'Num. Late Shift Saturday';
        }
        field(614; "Num. Night Shift Saturday"; Decimal)
        {
            Caption = 'Num. Night Shift Saturday';
        }
        field(615; "Num. Normal Shift Saturday"; Decimal)
        {
            Caption = 'Num. Normal Shift Saturday';
        }
        field(616; "Num. Special Shift Saturday"; Decimal)
        {
            Caption = 'Num. Special Shift Saturday';
        }
        field(617; "Num. Department Saturday"; Decimal)
        {
            Caption = 'Num. Department Saturday';
        }
        field(618; "Num. Order Saturday"; Decimal)
        {
            Caption = 'Num. Order Saturday';
        }
        field(619; "Num. Task Saturday"; Decimal)
        {
            Caption = 'Num. Task Saturday';
        }
        field(620; "Num. Dimension 1 Saturday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Saturday';
        }
        field(621; "Num. Dimension 2 Saturday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Saturday';
        }
        field(622; "Num. Dimension 3 Saturday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Saturday';
        }
        field(623; "Num. Dimension 4 Saturday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Saturday';
        }
        field(631; "Num. Qual.Level 11 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Saturday';
        }
        field(632; "Num. Qual.Level 12 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Saturday';
        }
        field(633; "Num. Qual.Level 13 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Saturday';
        }
        field(634; "Num. Qual.Level 14 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Saturday';
        }
        field(635; "Num. Qual.Level 15 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Saturday';
        }
        field(636; "Num. Qual.Level 16 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Saturday';
        }
        field(637; "Num. Qual.Level 17 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Saturday';
        }
        field(638; "Num. Qual.Level 18 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Saturday';
        }
        field(639; "Num. Qual.Level 19 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Saturday';
        }
        field(640; "Num. Qual.Level 20 Saturday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Saturday';
        }
        field(700; "Num. Employee Sunday"; Decimal)
        {
            Caption = 'Num. Employee Sunday';
        }
        field(701; "Num. Qual.Level 1 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 1 Sunday';
        }
        field(702; "Num. Qual.Level 2 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 2 Sunday';
        }
        field(703; "Num. Qual.Level 3 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 3 Sunday';
        }
        field(704; "Num. Qual.Level 4 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 4 Sunday';
        }
        field(705; "Num. Qual.Level 5 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 5 Sunday';
        }
        field(706; "Num. Qual.Level 6 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 6 Sunday';
        }
        field(707; "Num. Qual.Level 7 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 7 Sunday';
        }
        field(708; "Num. Qual.Level 8 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 8 Sunday';
        }
        field(709; "Num. Qual.Level 9 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 9 Sunday';
        }
        field(710; "Num. Qual.Level 10 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 10 Sunday';
        }
        field(712; "Num. Early Shift Sunday"; Decimal)
        {
            Caption = 'Num. Early Shift Sunday';
        }
        field(713; "Num. Late Shift Sunday"; Decimal)
        {
            Caption = 'Num. Late Shift Sunday';
        }
        field(714; "Num. Night Shift Sunday"; Decimal)
        {
            Caption = 'Num. Night Shift Sunday';
        }
        field(715; "Num. Normal Shift Sunday"; Decimal)
        {
            Caption = 'Num. Normal Shift Sunday';
        }
        field(716; "Num. Special Shift Sunday"; Decimal)
        {
            Caption = 'Num. Special Shift Sunday';
        }
        field(717; "Num. Department Sunday"; Decimal)
        {
            Caption = 'Num. Department Sunday';
        }
        field(718; "Num. Order Sunday"; Decimal)
        {
            Caption = 'Num. Order Sunday';
        }
        field(719; "Num. Task Sunday"; Decimal)
        {
            Caption = 'Num. Task Sunday';
        }
        field(720; "Num. Dimension 1 Sunday"; Decimal)
        {
            Caption = 'Num. Dimension 1 Sunday';
        }
        field(721; "Num. Dimension 2 Sunday"; Decimal)
        {
            Caption = 'Num. Dimension 2 Sunday';
        }
        field(722; "Num. Dimension 3 Sunday"; Decimal)
        {
            Caption = 'Num. Dimension 3 Sunday';
        }
        field(723; "Num. Dimension 4 Sunday"; Decimal)
        {
            Caption = 'Num. Dimension 4 Sunday';
        }
        field(731; "Num. Qual.Level 11 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 11 Sunday';
        }
        field(732; "Num. Qual.Level 12 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 12 Sunday';
        }
        field(733; "Num. Qual.Level 13 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 13 Sunday';
        }
        field(734; "Num. Qual.Level 14 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 14 Sunday';
        }
        field(735; "Num. Qual.Level 15 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 15 Sunday';
        }
        field(736; "Num. Qual.Level 16 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 16 Sunday';
        }
        field(737; "Num. Qual.Level 17 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 17 Sunday';
        }
        field(738; "Num. Qual.Level 18 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 18 Sunday';
        }
        field(739; "Num. Qual.Level 19 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 19 Sunday';
        }
        field(740; "Num. Qual.Level 20 Sunday"; Decimal)
        {
            Caption = 'Num. Qual.Level 20 Sunday';
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

