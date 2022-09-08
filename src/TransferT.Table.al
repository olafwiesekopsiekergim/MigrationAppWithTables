table 5056330 "Transfer/T"
{
    Caption = 'Transfer';
    Description = 'GrTransfer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
            NotBlank = true;
        }
        field(2; "Processing Type"; Option)
        {
            Caption = 'Processing Type';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
            OptionCaption = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP,Time Correction Approve';
            OptionMembers = "Time Clockings","Absent Times-Workflow","Time Correction-Workflow","Time Processing",amProject,ExternalTP,"Time Correction Approve";
        }
        field(5; Processed; Boolean)
        {
            Caption = 'Processed';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
        }
        field(6; "Date of Last Change"; Date)
        {
            Caption = 'Date of Last Change';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
            Editable = false;
        }
        field(7; "Time of Last Change"; Time)
        {
            Caption = 'Time of Last Change';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
            Editable = false;
        }
        field(8; "User No. of Last Change"; Code[50])
        {
            Caption = 'User No. of Last Change';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(10; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            Description = 'Time Clockings,Absent Times-Workflow,Time Correction-Workflow,Time Processing,amProject,ExternalTP';
        }
        field(20; "Current Date"; Date)
        {
            Caption = 'Current Date';
            Description = 'Time Clockings,Time Processing,amProject,ExternalTP';
        }
        field(21; "Record Type"; Option)
        {
            Caption = 'Record Type';
            Description = 'Time Clockings,ExternalTP';
            OptionCaption = ' ,Coming,Leaving,Errand,Department,Break,Access,Inquiry,Info,Order Begin Serial,Order Begin Parallel,Order End Parallel,Order Begin Collect,Order End Collect,Order startet,Order finished,Quantity,Scrap,Scrap Code,Serial No.,Lot No.,Presence Time';
            OptionMembers = " ",Coming,Leaving,Errand,Department,"Break",Access,Inquiry,Info,"Order Begin Serial","Order Begin Parallel","Order End Parallel","Order Begin Collect","Order End Collect","Order startet","Order finished",Quantity,Scrap,"Scrap Code","Serial No.","Lot No.","Presence Time";
        }
        field(25; "From Clocking"; Time)
        {
            Caption = 'From Clocking';
            Description = 'Time Clockings';
        }
        field(26; "From Reference"; Code[1])
        {
            Caption = 'From Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Clockings';
        }
        field(27; "To Clocking"; Time)
        {
            Caption = 'To Clocking';
            Description = 'Time Clockings';
        }
        field(28; "To Reference"; Code[1])
        {
            Caption = 'To Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Clockings';
        }
        field(29; "Terminal Key"; Text[30])
        {
            Caption = 'Terminal Key';
            Description = 'Time Clockings,ExternalTP';
        }
        field(30; Entry; Code[10])
        {
            Caption = 'Entry';
            Description = 'Time Clockings';
        }
        field(31; Department; Code[10])
        {
            Caption = 'Department';
            Description = 'Time Clockings';
        }
        field(35; "Order"; Code[20])
        {
            Caption = 'Order';
            Description = 'Time Clockings';
        }
        field(36; Task; Code[20])
        {
            Caption = 'Task';
            Description = 'Time Clockings';
        }
        field(37; "Dimension 1"; Code[20])
        {
            Caption = 'Dimension 1';
            Description = 'Time Clockings';
        }
        field(38; "Dimension 2"; Code[20])
        {
            Caption = 'Dimension 2';
            Description = 'Time Clockings';
        }
        field(39; "Dimension 3"; Code[20])
        {
            Caption = 'Dimension 3';
            Description = 'Time Clockings';
        }
        field(40; "Dimension 4"; Code[20])
        {
            Caption = 'Dimension 4';
            Description = 'Time Clockings';
        }
        field(50; Quantity; Decimal)
        {
            Caption = 'Quantity';
            Description = 'Time Clockings';
        }
        field(51; Scrap; Decimal)
        {
            Caption = 'Scrap';
            Description = 'Time Clockings';
        }
        field(52; "Scrap Code"; Code[20])
        {
            Caption = 'Scrap Code';
            Description = 'Time Clockings';
        }
        field(53; Finished; Boolean)
        {
            Caption = 'Finished';
            Description = 'Time Clockings';
        }
        field(54; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            Description = 'Time Clockings';
        }
        field(55; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Description = 'Time Clockings';
        }
        field(70; "From Date"; Date)
        {
            Caption = 'From Date';
            Description = 'Time Clockings,Absent Times-Workflow';
        }
        field(71; "To Date"; Date)
        {
            Caption = 'To Date';
            Description = 'Time Clockings,Absent Times-Workflow';
        }
        field(72; "TA No. Absent Day 1"; Code[10])
        {
            Caption = 'TA No. Absent Day 1';
            Description = 'Time Clockings';
        }
        field(73; "TA No. Absent Day 2"; Code[10])
        {
            Caption = 'TA No. Absent Day 2';
            Description = 'Time Clockings';
        }
        field(74; "Function Selection"; Option)
        {
            Caption = 'Function Selection';
            Description = 'Time Clockings';
            OptionCaption = 'Insert,Delete';
            OptionMembers = Insert,Delete;
        }
        field(80; "M/TA No. Absent Day 1"; Code[10])
        {
            Caption = 'M/TA No. Absent Day 1';
            Description = 'Absent Times-Workflow make';
        }
        field(81; "M/TA No. Absent Day 2"; Code[10])
        {
            Caption = 'M/TA No. Absent Day 2';
            Description = 'Absent Times-Workflow make';
        }
        field(82; "M/Stand-In 1"; Code[20])
        {
            Caption = 'M/Stand-In 1';
            Description = 'Absent Times-Workflow make';
        }
        field(83; "M/Stand-In No. 1 mandatory"; Boolean)
        {
            Caption = 'M/Stand-In No. 1 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(84; "M/Stand-In No. 1 optional"; Boolean)
        {
            Caption = 'M/Stand-In No. 1 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(85; "M/Superior 1"; Code[20])
        {
            Caption = 'M/Superior 1';
            Description = 'Absent Times-Workflow make';
        }
        field(86; "M/Superior No. 1 mandatory"; Boolean)
        {
            Caption = 'M/Superior No. 1 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(87; "M/Superior No. 1 optional"; Boolean)
        {
            Caption = 'M/Superior No. 1 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(88; "M/Stand-In 2"; Code[20])
        {
            Caption = 'M/Stand-In 2';
            Description = 'Absent Times-Workflow make';
        }
        field(89; "M/Stand-In No. 2 mandatory"; Boolean)
        {
            Caption = 'M/Stand-In No. 2 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(90; "M/Stand-In No. 2 optional"; Boolean)
        {
            Caption = 'M/Stand-In No. 2 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(91; "M/Superior 2"; Code[20])
        {
            Caption = 'M/Superior 2';
            Description = 'Absent Times-Workflow make';
        }
        field(92; "M/Superior No. 2 mandatory"; Boolean)
        {
            Caption = 'M/Superior No. 2 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(93; "M/Superior No. 2 optional"; Boolean)
        {
            Caption = 'M/Superior No. 2 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(94; "M/Stand-In 3"; Code[20])
        {
            Caption = 'M/Stand-In 3';
            Description = 'Absent Times-Workflow make';
        }
        field(95; "M/Stand-In No. 3 mandatory"; Boolean)
        {
            Caption = 'M/Stand-In No. 3 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(96; "M/Stand-In No. 3 optional"; Boolean)
        {
            Caption = 'M/Stand-In No. 3 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(97; "M/Superior 3"; Code[20])
        {
            Caption = 'M/Superior 3';
            Description = 'Absent Times-Workflow make';
        }
        field(98; "M/Superior No. 3 mandatory"; Boolean)
        {
            Caption = 'M/Superior No. 3 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(99; "M/Superior No. 3 optional"; Boolean)
        {
            Caption = 'M/Superior No. 3 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(100; "M/Stand-In 4"; Code[20])
        {
            Caption = 'M/Stand-In 4';
            Description = 'Absent Times-Workflow make';
        }
        field(101; "M/Stand-In No. 4 mandatory"; Boolean)
        {
            Caption = 'M/Stand-In No. 4 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(102; "M/Stand-In No. 4 optional"; Boolean)
        {
            Caption = 'M/Stand-In No. 4 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(103; "M/Superior 4"; Code[20])
        {
            Caption = 'M/Superior 4';
            Description = 'Absent Times-Workflow make';
        }
        field(104; "M/Superior No. 4 mandatory"; Boolean)
        {
            Caption = 'M/Superior No. 4 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(105; "M/Superior No. 4 optional"; Boolean)
        {
            Caption = 'M/Superior No. 4 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(106; "M/Stand-In 5"; Code[20])
        {
            Caption = 'M/Stand-In 5';
            Description = 'Absent Times-Workflow make';
        }
        field(107; "M/Stand-In No. 5 mandatory"; Boolean)
        {
            Caption = 'M/Stand-In No. 5 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(108; "M/Stand-In No. 5 optional"; Boolean)
        {
            Caption = 'M/Stand-In No. 5 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(109; "M/Superior 5"; Code[20])
        {
            Caption = 'M/Superior 5';
            Description = 'Absent Times-Workflow make';
        }
        field(110; "M/Superior No. 5 mandatory"; Boolean)
        {
            Caption = 'M/Superior No. 5 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(111; "M/Superior No. 5 optional"; Boolean)
        {
            Caption = 'M/Superior No. 5 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(112; "M/Stand-In 6"; Code[20])
        {
            Caption = 'M/Stand-In 6';
            Description = 'Absent Times-Workflow make';
        }
        field(113; "M/Stand-In No. 6 mandatory"; Boolean)
        {
            Caption = 'M/Stand-In No. 6 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(114; "M/Stand-In No. 6 optional"; Boolean)
        {
            Caption = 'M/Stand-In No. 6 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(115; "M/Superior 6"; Code[20])
        {
            Caption = 'M/Superior 6';
            Description = 'Absent Times-Workflow make';
        }
        field(116; "M/Superior No. 6 mandatory"; Boolean)
        {
            Caption = 'M/Superior No. 6 mandatory';
            Description = 'Absent Times-Workflow make';
        }
        field(117; "M/Superior No. 6 optional"; Boolean)
        {
            Caption = 'M/Superior No. 6 optional';
            Description = 'Absent Times-Workflow make';
        }
        field(118; "M/Cancel"; Boolean)
        {
            Caption = 'M/Cancel';
            Description = 'Absent Times-Workflow make';
        }
        field(119; "M/Comment"; Text[80])
        {
            Caption = 'M/Comment';
            Description = 'Absent Times-Workflow make';
        }
        field(120; "M/Process No."; Integer)
        {
            Caption = 'M/Process No.';
            Description = 'Absent Times-Workflow make';
        }
        field(150; "A/TA No. Absent Day 1"; Code[10])
        {
            Caption = 'A/TA No. Absent Day 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(151; "A/TA No. Absent Day 2"; Code[10])
        {
            Caption = 'A/TA No. Absent Day 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(152; "A/Stand-In 1"; Code[20])
        {
            Caption = 'A/Stand-In 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(153; "A/Stand-In Confirmation y 1"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation y 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(154; "A/Stand-In Confirmation n 1"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation n 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(155; "A/Comment on Stand-In 1"; Text[80])
        {
            Caption = 'A/Comment on Stand-In 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(156; "A/Stand-In Date 1"; Date)
        {
            Caption = 'A/Stand-In Date 1';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(157; "A/Superior 1"; Code[20])
        {
            Caption = 'A/Superior 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(158; "A/Superior Confirmation y 1"; Boolean)
        {
            Caption = 'A/Superior Confirmation y 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(159; "A/Superior Confirmation n 1"; Boolean)
        {
            Caption = 'A/Superior Confirmation n 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(160; "A/Comment on Superior 1"; Text[80])
        {
            Caption = 'A/Comment on Superior 1';
            Description = 'Absent Times-Workflow approve';
        }
        field(161; "A/Superior Date 1"; Date)
        {
            Caption = 'A/Superior Date 1';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(162; "A/Stand-In 2"; Code[20])
        {
            Caption = 'A/Stand-In 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(163; "A/Stand-In Confirmation y 2"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation y 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(164; "A/Stand-In Confirmation n 2"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation n 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(165; "A/Comment on Stand-In 2"; Text[80])
        {
            Caption = 'A/Comment on Stand-In 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(166; "A/Stand-In Date 2"; Date)
        {
            Caption = 'A/Stand-In Date 2';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(167; "A/Superior 2"; Code[20])
        {
            Caption = 'A/Superior 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(168; "A/Superior Confirmation y 2"; Boolean)
        {
            Caption = 'A/Superior Confirmation y 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(169; "A/Superior Confirmation n 2"; Boolean)
        {
            Caption = 'A/Superior Confirmation n 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(170; "A/Comment on Superior 2"; Text[80])
        {
            Caption = 'A/Comment on Superior 2';
            Description = 'Absent Times-Workflow approve';
        }
        field(171; "A/Superior Date 2"; Date)
        {
            Caption = 'A/Superior Date 2';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(172; "A/Stand-In 3"; Code[20])
        {
            Caption = 'A/Stand-In 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(173; "A/Stand-In Confirmation y 3"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation y 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(174; "A/Stand-In Confirmation n 3"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation n 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(175; "A/Comment on Stand-In 3"; Text[80])
        {
            Caption = 'A/Comment on Stand-In 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(176; "A/Stand-In Date 3"; Date)
        {
            Caption = 'A/Stand-In Date 3';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(177; "A/Superior 3"; Code[20])
        {
            Caption = 'A/Superior 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(178; "A/Superior Confirmation y 3"; Boolean)
        {
            Caption = 'A/Superior Confirmation y 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(179; "A/Superior Confirmation n 3"; Boolean)
        {
            Caption = 'A/Superior Confirmation n 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(180; "A/Comment on Superior 3"; Text[80])
        {
            Caption = 'A/Comment on Superior 3';
            Description = 'Absent Times-Workflow approve';
        }
        field(181; "A/Superior Date 3"; Date)
        {
            Caption = 'A/Superior Date 3';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(182; "A/Stand-In 4"; Code[20])
        {
            Caption = 'A/Stand-In 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(183; "A/Stand-In Confirmation y 4"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation y 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(184; "A/Stand-In Confirmation n 4"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation n 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(185; "A/Comment on Stand-In 4"; Text[80])
        {
            Caption = 'A/Comment on Stand-In 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(186; "A/Stand-In Date 4"; Date)
        {
            Caption = 'A/Stand-In Date 4';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(187; "A/Superior 4"; Code[20])
        {
            Caption = 'A/Superior 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(188; "A/Superior Confirmation y 4"; Boolean)
        {
            Caption = 'A/Superior Confirmation y 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(189; "A/Superior Confirmation n 4"; Boolean)
        {
            Caption = 'A/Superior Confirmation n 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(190; "A/Comment on Superior 4"; Text[80])
        {
            Caption = 'A/Comment on Superior 4';
            Description = 'Absent Times-Workflow approve';
        }
        field(191; "A/Superior Date 4"; Date)
        {
            Caption = 'A/Superior Date 4';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(192; "A/Stand-In 5"; Code[20])
        {
            Caption = 'A/Stand-In 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(193; "A/Stand-In Confirmation y 5"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation y 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(194; "A/Stand-In Confirmation n 5"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation n 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(195; "A/Comment on Stand-In 5"; Text[80])
        {
            Caption = 'A/Comment on Stand-In 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(196; "A/Stand-In Date 5"; Date)
        {
            Caption = 'A/Stand-In Date 5';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(197; "A/Superior 5"; Code[20])
        {
            Caption = 'A/Superior 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(198; "A/Superior Confirmation y 5"; Boolean)
        {
            Caption = 'A/Superior Confirmation y 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(199; "A/Superior Confirmation n 5"; Boolean)
        {
            Caption = 'A/Superior Confirmation n 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(200; "A/Comment on Superior 5"; Text[80])
        {
            Caption = 'A/Comment on Superior 5';
            Description = 'Absent Times-Workflow approve';
        }
        field(201; "A/Superior Date 5"; Date)
        {
            Caption = 'A/Superior Date 5';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(202; "A/Stand-In 6"; Code[20])
        {
            Caption = 'A/Stand-In 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(203; "A/Stand-In Confirmation y 6"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation y 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(204; "A/Stand-In Confirmation n 6"; Boolean)
        {
            Caption = 'A/Stand-In Confirmation n 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(205; "A/Comment on Stand-In 6"; Text[80])
        {
            Caption = 'A/Comment on Stand-In 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(206; "A/Stand-In Date 6"; Date)
        {
            Caption = 'A/Stand-In Date 6';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(207; "A/Superior 6"; Code[20])
        {
            Caption = 'A/Superior 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(208; "A/Superior Confirmation y 6"; Boolean)
        {
            Caption = 'A/Superior Confirmation y 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(209; "A/Superior Confirmation n 6"; Boolean)
        {
            Caption = 'A/Superior Confirmation n 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(210; "A/Comment on Superior 6"; Text[80])
        {
            Caption = 'A/Comment on Superior 6';
            Description = 'Absent Times-Workflow approve';
        }
        field(211; "A/Superior Date 6"; Date)
        {
            Caption = 'A/Superior Date 6';
            Description = 'Absent Times-Workflow approve';
            Editable = false;
        }
        field(212; "A/Process No."; Integer)
        {
            Caption = 'A/Process No.';
            Description = 'Absent Times-Workflow approve';
        }
        field(300; "TP/Coming Clocking"; Time)
        {
            Caption = 'TP/Coming Clocking';
            Description = 'Time Processing / Prod. Begin,amProject,ExternalTP';
        }
        field(301; "TP/Coming Reference"; Code[1])
        {
            Caption = 'TP/Coming Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Prod. Begin,amProject,ExternalTP';
        }
        field(302; "TP/Leaving Clocking"; Time)
        {
            Caption = 'TP/Leaving Clocking';
            Description = 'Time Processing / Prod. End,amProject,ExternalTP';
        }
        field(303; "TP/Leaving Reference"; Code[1])
        {
            Caption = 'TP/Leaving Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Prod. End,amProject,ExternalTP';
        }
        field(310; "TP/Break Begin Clocking 1"; Time)
        {
            Caption = 'TP/Break Begin Clocking 1';
            Description = 'Time Processing / Break 1 Begin,ExternalTP';
        }
        field(311; "TP/Break Begin Reference 1"; Code[1])
        {
            Caption = 'TP/Break Begin Reference 1';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Break 1 Begin,ExternalTP';
        }
        field(312; "TP/Break End Clocking 1"; Time)
        {
            Caption = 'TP/Break End Clocking 1';
            Description = 'Time Processing / Break 1 End,ExternalTP';
        }
        field(313; "TP/Break End Reference 1"; Code[1])
        {
            Caption = 'TP/Break End Reference 1';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Break 1 End,ExternalTP';
        }
        field(315; "TP/Break Begin Clocking 2"; Time)
        {
            Caption = 'TP/Break Begin Clocking 2';
            Description = 'Time Processing / Break 2 Begin,ExternalTP';
        }
        field(316; "TP/Break Begin Reference 2"; Code[1])
        {
            Caption = 'TP/Break Begin Reference 2';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Break 2 Begin,ExternalTP';
        }
        field(317; "TP/Break End Clocking 2"; Time)
        {
            Caption = 'TP/Break End Clocking 2';
            Description = 'Time Processing / Break 2 End,ExternalTP';
        }
        field(318; "TP/Break End Reference 2"; Code[1])
        {
            Caption = 'TP/Break End Reference 2';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Break 2 End,ExternalTP';
        }
        field(320; "TP/Department Clocking"; Time)
        {
            Caption = 'TP/Department Clocking';
            Description = 'Time Processing,ExternalTP';
        }
        field(321; "TP/Department Reference"; Code[1])
        {
            Caption = 'TP/Department Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing,ExternalTP';
        }
        field(322; "TP/Dept. Entry"; Code[10])
        {
            Caption = 'TP/Dept. Entry';
            Description = 'Time Processing,ExternalTP';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(330; "TP/Errand Begin Clocking"; Time)
        {
            Caption = 'TP/Errand Begin Clocking';
            Description = 'Time Processing,ExternalTP';
        }
        field(331; "TP/Errand Begin Reference"; Code[1])
        {
            Caption = 'TP/Errand Begin Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing,ExternalTP';
        }
        field(332; "TP/Errand End Clocking"; Time)
        {
            Caption = 'TP/Errand End Clocking';
            Description = 'Time Processing,ExternalTP';
        }
        field(333; "TP/Errand End Reference"; Code[1])
        {
            Caption = 'TP/Errand End Reference';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing,ExternalTP';
        }
        field(340; "TP/Info Begin Clocking 1"; Time)
        {
            Caption = 'TP/Info Begin Clocking 1';
            Description = 'Time Processing / Travel Hours Start Begin';
        }
        field(341; "TP/Info Begin Reference 1"; Code[1])
        {
            Caption = 'TP/Info Begin Reference 1';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Travel Hours Start Begin';
        }
        field(342; "TP/Info End Clocking 1"; Time)
        {
            Caption = 'TP/Info End Clocking 1';
            Description = 'Time Processing / Travel Hours Start End';
        }
        field(343; "TP/Info End Reference 1"; Code[1])
        {
            Caption = 'TP/Info End Reference 1';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Travel Hours Start End';
        }
        field(344; "TP/Info Entry 1"; Code[10])
        {
            Caption = 'TP/Info Entry 1';
            Description = 'Time Processing / Travel Hours Start';
            TableRelation = "Time Account/T"."No.";
        }
        field(345; "TP/Info Begin Clocking 2"; Time)
        {
            Caption = 'TP/Info Begin Clocking 2';
            Description = 'Time Processing / Travel Hours Finished Begin';
        }
        field(346; "TP/Info Begin Reference 2"; Code[1])
        {
            Caption = 'TP/Info Begin Reference 2';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Travel Hours Finished Begin';
        }
        field(347; "TP/Info End Clocking 2"; Time)
        {
            Caption = 'TP/Info End Clocking 2';
            Description = 'Time Processing / Travel Hours Finished End';
        }
        field(348; "TP/Info End Reference 2"; Code[1])
        {
            Caption = 'TP/Info End Reference 2';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing / Travel Hours Finished End';
        }
        field(349; "TP/Info Entry 2"; Code[10])
        {
            Caption = 'TP/Info Entry 2';
            Description = 'Time Processing / Travel Hours Finished';
            TableRelation = "Time Account/T"."No.";
        }
        field(350; "TP/Order Begin Clock. Orig."; Time)
        {
            Caption = 'TP/Order Begin Clock. Orig.';
            Description = 'Time Processing';
        }
        field(351; "TP/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'TP/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Processing';
        }
        field(352; "TP/Order Begin Entry"; Code[20])
        {
            Caption = 'TP/Order Begin Entry';
            Description = 'Time Processing / Job No. / Projektnr.,amProject';
        }
        field(353; "TP/Task Begin Entry"; Code[20])
        {
            Caption = 'TP/Task Begin Entry';
            Description = 'Time Processing / Job Structure Line / Projektstrukturzeile (PSP-Code),amProject';
        }
        field(354; "TP/Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'TP/Dimension 1 Begin Entry';
            Description = 'Time Processing / Work Package Code / Arbeitspaketcode,amProject';
        }
        field(355; "TP/Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'TP/Dimension 2 Begin Entry';
            Description = 'Time Processing / Phase Code / Hauptaktivitätscode';
        }
        field(356; "TP/Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'TP/Dimension 3 Begin Entry';
            Description = 'Time Processing / Task Code / Unteraktivitätscode';
        }
        field(357; "TP/Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'TP/Dimension 4 Begin Entry';
            Description = 'Time Processing / Step Code / Teilaktivitätscode';
        }
        field(370; "TP/Individual 1"; Decimal)
        {
            Caption = 'TP/Individual 1';
            Description = 'Time Processing / Daily Allowance';
        }
        field(371; "TP/Individual 2"; Decimal)
        {
            Caption = 'TP/Individual 2';
            Description = 'Time Processing / Hotel Costs';
        }
        field(372; "TP/Individual 3"; Decimal)
        {
            Caption = 'TP/Individual 3';
            Description = 'Time Processing,amProject';
        }
        field(373; "TP/Individual 4"; Decimal)
        {
            Caption = 'TP/Individual 4';
            Description = 'Time Processing';
        }
        field(374; "TP/Individual 5"; Decimal)
        {
            Caption = 'TP/Individual 5';
            Description = 'Time Processing';
        }
        field(375; "TP/Individual 6"; Decimal)
        {
            Caption = 'TP/Individual 6';
            Description = 'Time Processing';
        }
        field(376; "TP/Individual 7"; Decimal)
        {
            Caption = 'TP/Individual 7';
            Description = 'Time Processing';
        }
        field(377; "TP/Individual 8"; Decimal)
        {
            Caption = 'TP/Individual 8';
            Description = 'Time Processing';
        }
        field(378; "TP/Individual 9"; Decimal)
        {
            Caption = 'TP/Individual 9';
            Description = 'Time Processing';
        }
        field(379; "TP/Individual 10"; Decimal)
        {
            Caption = 'TP/Individual 10';
            Description = 'Time Processing';
        }
        field(390; "TP/TA No. Absent Day 1"; Code[10])
        {
            Caption = 'TP/TA No. Absent Day 1';
            Description = 'Time Processing / Absent Day 1,ExternalTP';
        }
        field(391; "TP/TA No. Absent Day 2"; Code[10])
        {
            Caption = 'TP/TA No. Absent Day 2';
            Description = 'Time Processing / Absent Day 2,ExternalTP';
        }
        field(392; "TP/Present Time"; Decimal)
        {
            Caption = 'TP/Present Time';
            Description = 'Time Processing / Productive Time,amProject';
        }
        field(400; "TC/Preprocessing"; Boolean)
        {
            Caption = 'TC/Preprocessing';
            Description = 'Time Correction-Workflow';
        }
        field(401; "TP/Released"; Boolean)
        {
            Caption = 'TP/Released';
            Description = 'Time Processing / Released for processing,amProject';
        }
        field(402; "TP/Job Description"; Text[50])
        {
            Caption = 'TP/Job Description';
            Description = 'Time Processing / amProject';
        }
        field(410; "M/Old Clocking"; Time)
        {
            Caption = 'Old Clocking';
            Description = 'Time Correction-Workflow make';
        }
        field(411; "M/Old Clocking Ref."; Code[1])
        {
            Caption = 'Old Clocking Ref.';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Correction-Workflow make';
        }
        field(412; "M/New Clocking"; Time)
        {
            Caption = 'New Clocking';
            Description = 'Time Correction-Workflow make';
        }
        field(413; "M/New Clocking Ref."; Code[1])
        {
            Caption = 'New Clocking Ref.';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Correction-Workflow make';
        }
        field(414; "M/Clocking Type"; Option)
        {
            Caption = 'Clocking Type';
            Description = 'Time Correction-Workflow make';
            OptionCaption = ' ,Coming,Leaving,Errand,Department,Break,Access,Inquiry,Info,Order Begin Serial';
            OptionMembers = " ",Coming,Leaving,Errand,Department,"Break",Access,Inquiry,Info,"Order Begin Serial";
        }
        field(415; "M/Clocking Function"; Option)
        {
            Caption = 'Clocking Function';
            Description = 'Time Correction-Workflow make';
            OptionCaption = ' ,Insert,Change,Delete';
            OptionMembers = " ",Insert,Change,Delete;
        }
        field(420; "A/Old Clocking"; Time)
        {
            Caption = 'Old Clocking';
            Description = 'Time Correction-Workflow approve';
        }
        field(421; "A/Old Clocking Ref."; Code[1])
        {
            Caption = 'Old Clocking Ref.';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Correction-Workflow approve';
        }
        field(422; "A/New Clocking"; Time)
        {
            Caption = 'New Clocking';
            Description = 'Time Correction-Workflow approve';
        }
        field(423; "A/New Clocking Ref."; Code[1])
        {
            Caption = 'New Clocking Ref.';
            CharAllowed = 'VVFFvvff';
            Description = 'Time Correction-Workflow approve';
        }
        field(424; "A/Clocking Type"; Option)
        {
            Caption = 'Clocking Type';
            Description = 'Time Correction-Workflow approve';
            OptionCaption = ' ,Coming,Leaving,Errand,Department,Break,Access,Inquiry,Info,Order Begin Serial';
            OptionMembers = " ",Coming,Leaving,Errand,Department,"Break",Access,Inquiry,Info,"Order Begin Serial";
        }
        field(425; "A/Clocking Function"; Option)
        {
            Caption = 'Clocking Function';
            Description = 'Time Correction-Workflow approve';
            OptionCaption = ' ,Insert,Change,Delete';
            OptionMembers = " ",Insert,Change,Delete;
        }
        field(430; "M/Old Input"; Code[20])
        {
            Caption = 'Old Input';
            Description = 'Time Correction-Workflow make';
        }
        field(431; "M/New Input"; Code[20])
        {
            Caption = 'New Input';
            Description = 'Time Correction-Workflow make';
        }
        field(432; "M/Old Order No."; Code[20])
        {
            Caption = 'Old Order No.';
            Description = 'Time Correction-Workflow make';
        }
        field(433; "M/Old Task No."; Code[20])
        {
            Caption = 'Old Task No.';
            Description = 'Time Correction-Workflow make';
        }
        field(434; "M/Old Dim.1"; Code[20])
        {
            Caption = 'Old Dim.1';
            Description = 'Time Correction-Workflow make';
        }
        field(435; "M/Old Dim.2"; Code[20])
        {
            Caption = 'Old Dim.2';
            Description = 'Time Correction-Workflow make';
        }
        field(436; "M/Old Dim.3"; Code[20])
        {
            Caption = 'Old Dim.3';
            Description = 'Time Correction-Workflow make';
        }
        field(437; "M/Old Dim.4"; Code[20])
        {
            Caption = 'Old Dim.4';
            Description = 'Time Correction-Workflow make';
        }
        field(438; "M/New Order No."; Code[20])
        {
            Caption = 'New Order No.';
            Description = 'Time Correction-Workflow make';
        }
        field(439; "M/New Task No."; Code[20])
        {
            Caption = 'New Task No.';
            Description = 'Time Correction-Workflow make';
        }
        field(440; "M/New Dim.1"; Code[20])
        {
            Caption = 'New Dim.1';
            Description = 'Time Correction-Workflow make';
        }
        field(441; "M/New Dim.2"; Code[20])
        {
            Caption = 'New Dim.2';
            Description = 'Time Correction-Workflow make';
        }
        field(442; "M/New Dim.3"; Code[20])
        {
            Caption = 'New Dim.3';
            Description = 'Time Correction-Workflow make';
        }
        field(443; "M/New Dim.4"; Code[20])
        {
            Caption = 'New Dim.4';
            Description = 'Time Correction-Workflow make';
        }
    }

    keys
    {
        key(Key1; "Line No.", "Employee No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

