table 5056262 "Employee Field Line/T"
{
    Caption = 'Employee Field Line';
    Description = 'GrEmplFieldLine                                                                                                                                                                                                                           ';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Empl. Field No."; Code[20])
        {
            Caption = 'Empl. Field No.';
            NotBlank = true;
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Time Processing Modify"; Boolean)
        {
            Caption = 'Time Processing Modify';
        }
        field(10; "Stand-In No. 1"; Code[20])
        {
            Caption = 'Stand-In No. 1';
            TableRelation = "Employee/T"."No.";
        }
        field(11; "Stand-In Name 1"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 1")));
            Caption = 'Stand-In Name 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Stand-In No. 1 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 1 mandatory';
        }
        field(13; "Stand-In No. 1 optional"; Boolean)
        {
            Caption = 'Stand-In No. 1 optional';
        }
        field(15; "Superior No. 1"; Code[20])
        {
            Caption = 'Superior No. 1';
            TableRelation = "Employee/T"."No.";
        }
        field(16; "Superior Name 1"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 1")));
            Caption = 'Superior Name 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Superior No. 1 mandatory"; Boolean)
        {
            Caption = 'Superior No. 1 mandatory';
        }
        field(18; "Superior No. 1 optional"; Boolean)
        {
            Caption = 'Superior No. 1 optional';
        }
        field(19; "Soft-Terminal Message"; Text[250])
        {
            Caption = 'Soft-Terminal Message';
        }
        field(20; "Decimal Value (Hrs/Day/Curr)"; Decimal)
        {
            Caption = 'Decimal Value (Hrs/Day/Curr)';
            DecimalPlaces = 2 : 5;
        }
        field(21; "Period Begin"; Date)
        {
            Caption = 'Period Begin';
        }
        field(22; "From Date"; Date)
        {
            Caption = 'From Date';
        }
        field(23; "To Date"; Date)
        {
            Caption = 'To Date';
        }
        field(24; "Period End"; Date)
        {
            Caption = 'Period End';
        }
        field(25; "Terminal No."; Code[10])
        {
            Caption = 'Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(26; "Terminal Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Terminal No."),
                                                                     "Org-Form Type" = CONST (Terminal)));
            Caption = 'Terminal Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Time Profile No."; Text[2])
        {
            Caption = 'Time Profile No.';
        }
        field(28; "Terminal Deletion Status"; Boolean)
        {
            Caption = 'Terminal Deletion Status';
        }
        field(30; "Stand-In No. 2"; Code[20])
        {
            Caption = 'Stand-In No. 2';
            TableRelation = "Employee/T"."No.";
        }
        field(31; "Stand-In Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 2")));
            Caption = 'Stand-In Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Stand-In No. 2 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 2 mandatory';
        }
        field(33; "Stand-In No. 2 optional"; Boolean)
        {
            Caption = 'Stand-In No. 2 optional';
        }
        field(35; "Superior No. 2"; Code[20])
        {
            Caption = 'Superior No. 2';
            TableRelation = "Employee/T"."No.";
        }
        field(36; "Superior Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 2")));
            Caption = 'Superior Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "Superior No. 2 mandatory"; Boolean)
        {
            Caption = 'Superior No. 2 mandatory';
        }
        field(38; "Superior No. 2 optional"; Boolean)
        {
            Caption = 'Superior No. 2 optional';
        }
        field(39; "Workflow-Control"; Option)
        {
            Caption = 'Workflow-Control';
            OptionCaption = 'Absent Time Applications,Time Corrections (only Superiors)';
            OptionMembers = "Absent Time Applications","Time Corrections (only Superiors)";
        }
        field(40; Version; Text[1])
        {
            Caption = 'Version';
            InitValue = '0';
        }
        field(41; "Permission for Errands"; Boolean)
        {
            Caption = 'Permission for Errands';
            InitValue = true;
        }
        field(42; "Permission for Corrections"; Boolean)
        {
            Caption = 'Permission for Corrections';
        }
        field(43; "Lock File Record"; Boolean)
        {
            Caption = 'Lock File Record';
        }
        field(44; "Do not check 1st clocking"; Boolean)
        {
            Caption = 'Do not check 1st clocking';
            InitValue = true;
        }
        field(45; "No clocking check"; Boolean)
        {
            Caption = 'No clocking check';
            InitValue = true;
        }
        field(46; "Pin Code"; Text[4])
        {
            Caption = 'Pin Code';
            InitValue = 'FFFF';
        }
        field(47; "Mailbox Text"; Text[1])
        {
            Caption = 'Mailbox Text';
            InitValue = '0';
        }
        field(48; "Fingerprint and 2. Reader"; Boolean)
        {
            Caption = 'Fingerprint and 2. Reader';
        }
        field(50; "Fingerprint ID No."; Boolean)
        {
            Caption = 'Fingerprint ID No.';
        }
        field(51; "Time Profile No. Day Object"; Code[10])
        {
            Caption = 'Time Profile No. Day Object';
        }
        field(60; Company; Text[30])
        {
            Caption = 'Company';
            TableRelation = Company.Name;
        }
        field(61; "Company Employee No."; Code[20])
        {
            Caption = 'Company Employee No.';
        }
        field(68; "From Org-Form"; Option)
        {
            Caption = 'From Org-Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(69; "From Org-Value"; Code[20])
        {
            Caption = 'From Org-Value';
            TableRelation = IF ("From Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("From Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("From Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("From Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("From Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("From Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("From Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("From Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("From Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(70; "To Org-Form"; Option)
        {
            Caption = 'To Org-Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(71; "To Org-Value"; Code[20])
        {
            Caption = 'To Org-Value';
            TableRelation = IF ("To Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(80; "Activity No."; Code[10])
        {
            Caption = 'Activity No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(81; "Activity Descr."; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Activity No."),
                                                                     "Org-Form Type" = CONST (Activity)));
            Caption = 'Activity Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(82; "Qualification in Percent"; Decimal)
        {
            Caption = 'Qualification in Percent';
        }
        field(83; "Org-Form/Duty Sched."; Option)
        {
            Caption = 'Org-Form/Duty Sched.';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(84; "Org-Value/Duty Sched."; Code[10])
        {
            Caption = 'Org-Value/Duty Sched.';
            TableRelation = IF ("Org-Form/Duty Sched." = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(90; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(91; "Department Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Department No."),
                                                                     "Org-Form Type" = CONST (Department)));
            Caption = 'Department Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(92; "Dept-Splitting in Percent"; Decimal)
        {
            Caption = 'Dept-Splitting in Percent';
        }
        field(93; "Dept. Day Object No. planned"; Code[10])
        {
            Caption = 'Dept. Day Object No. planned';
            TableRelation = "Day Object/T"."No.";
        }
        field(94; "Dept. Alternative No."; Code[10])
        {
            Caption = 'Dept. Alternative No.';
            TableRelation = "Alternative/T"."No.";
        }
        field(95; "Dept. from Date"; Date)
        {
            Caption = 'Dept. from Date';
        }
        field(96; "Dept. to Date"; Date)
        {
            Caption = 'Dept. to Date';
        }
        field(101; "W/Employee No."; Code[20])
        {
            Caption = 'W/Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(102; "W/From Date"; Date)
        {
            Caption = 'W/From Date';
        }
        field(103; "W/To Date"; Date)
        {
            Caption = 'W/To Date';
        }
        field(104; "W/Line No."; Integer)
        {
            Caption = 'W/Line No.';
        }
        field(105; "W/Name"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'W/Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "W/Process No."; Integer)
        {
            Caption = 'W/Process No.';
        }
        field(107; "W/Division No."; Code[10])
        {
            Caption = 'W/Division No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(110; "W/Time Acc. No. - Miss. Day 1"; Code[10])
        {
            Caption = 'W/Time Acc. No. - Miss. Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (Absent Days)" = CONST (Application));
        }
        field(111; "W/Time Acc. Des. - Miss. Day 1"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("W/Time Acc. No. - Miss. Day 1")));
            Caption = 'W/Time Acc. Des. - Miss. Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(112; "W/Time Acc. No. - Miss. Day 2"; Code[10])
        {
            Caption = 'W/Time Acc. No. - Miss. Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (Absent Days)" = CONST (Application));
        }
        field(113; "W/Time Acc. Des. - Miss. Day 2"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("W/Time Acc. No. - Miss. Day 2")));
            Caption = 'W/Time Acc. Des. - Miss. Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "W/Stand-In No. 1"; Code[20])
        {
            Caption = 'W/Stand-In No. 1';
            TableRelation = "Employee/T"."No.";
        }
        field(121; "W/Stand-In Name 1"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Stand-In No. 1")));
            Caption = 'W/Stand-In Name 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(122; "W/Stand-In Confirmation y 1"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation y 1';
        }
        field(123; "W/Stand-In Confirmation n 1"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation n 1';
        }
        field(124; "W/Comment on Stand-In 1"; Text[80])
        {
            Caption = 'W/Comment on Stand-In 1';
        }
        field(125; "W/Stand-In Date 1"; Date)
        {
            Caption = 'W/Stand-In Date 1';
            Editable = false;
        }
        field(126; "W/Stand-In No. 2"; Code[20])
        {
            Caption = 'W/Stand-In No. 2';
            TableRelation = "Employee/T"."No.";
        }
        field(127; "W/Stand-In Name 2"; Text[30])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Stand-In No. 2")));
            Caption = 'W/Stand-In Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(128; "W/Stand-In Confirmation y 2"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation y 2';
        }
        field(129; "W/Stand-In Confirmation n 2"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation n 2';
        }
        field(130; "W/Comment on Stand-In 2"; Text[80])
        {
            Caption = 'W/Comment on Stand-In 2';
        }
        field(131; "W/Stand-In Date 2"; Date)
        {
            Caption = 'W/Stand-In Date 2';
            Editable = false;
        }
        field(132; "W/Superior No. 1"; Code[20])
        {
            Caption = 'W/Superior No. 1';
            TableRelation = "Employee/T"."No.";
        }
        field(133; "W/Superior Name 1"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Superior No. 1")));
            Caption = 'W/Superior Name 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(134; "W/Superior Confirmation y 1"; Boolean)
        {
            Caption = 'W/Superior Confirmation y 1';
        }
        field(135; "W/Superior Confirmation n 1"; Boolean)
        {
            Caption = 'W/Superior Confirmation n 1';
        }
        field(136; "W/Comment on Superior 1"; Text[80])
        {
            Caption = 'W/Comment on Superior 1';
        }
        field(137; "W/Superior Date 1"; Date)
        {
            Caption = 'W/Superior Date 1';
            Editable = false;
        }
        field(138; "W/Superior No. 2"; Code[20])
        {
            Caption = 'W/Superior No. 2';
            TableRelation = "Employee/T"."No.";
        }
        field(139; "W/Superior Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Superior No. 2")));
            Caption = 'W/Superior Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140; "W/Superior Confirmation y 2"; Boolean)
        {
            Caption = 'W/Superior Confirmation y 2';
        }
        field(141; "W/Superior Confirmation n 2"; Boolean)
        {
            Caption = 'W/Superior Confirmation n 2';
        }
        field(142; "W/Comment on Superior 2"; Text[80])
        {
            Caption = 'W/Comment on Superior 2';
        }
        field(143; "W/Superior Date 2"; Date)
        {
            Caption = 'W/Superior Date 2';
            Editable = false;
        }
        field(144; "W/Status Appl. Management"; Option)
        {
            Caption = 'W/Status Appl. Management';
            OptionCaption = ' ,Open,Rejected,Approved,Cancelled,Info';
            OptionMembers = " ",Open,Rejected,Approved,Cancelled,Info;
        }
        field(145; "W/Source Employee Planning"; Option)
        {
            Caption = 'W/Source Employee Planning';
            OptionCaption = ' ,Inserted,Deleted,Modified';
            OptionMembers = " ",Inserted,Deleted,Modified;
        }
        field(146; "W/Entry Date"; Date)
        {
            Caption = 'W/Entry Date';
            Editable = false;
        }
        field(147; "W/Entry Time"; Time)
        {
            Caption = 'W/Entry Time';
            Editable = false;
        }
        field(148; "W/Entered by User No."; Code[50])
        {
            Caption = 'W/Entered by User No.';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(149; "W/Status Processing"; Boolean)
        {
            Caption = 'W/Status Processing';
        }
        field(150; "W/Comment"; Text[80])
        {
            Caption = 'W/Comment';
        }
        field(160; "W/Stand-In No. 1 mandatory"; Boolean)
        {
            Caption = 'W/Stand-In No. 1 mandatory';
        }
        field(161; "W/Stand-In No. 1 optional"; Boolean)
        {
            Caption = 'W/Stand-In No. 1 optional';
        }
        field(162; "W/Stand-In No. 2 mandatory"; Boolean)
        {
            Caption = 'W/Stand-In No. 2 mandatory';
        }
        field(163; "W/Stand-In No. 2 optional"; Boolean)
        {
            Caption = 'W/Stand-In No. 2 optional';
        }
        field(164; "W/Superior No. 1 mandatory"; Boolean)
        {
            Caption = 'W/Superior No. 1 mandatory';
        }
        field(165; "W/Superior No. 1 optional"; Boolean)
        {
            Caption = 'W/Superior No. 1 optional';
        }
        field(166; "W/Superior No. 2 mandatory"; Boolean)
        {
            Caption = 'W/Superior No. 2 mandatory';
        }
        field(167; "W/Superior No. 2 optional"; Boolean)
        {
            Caption = 'W/Superior No. 2 optional';
        }
        field(200; "Org-Form History"; Option)
        {
            Caption = 'Org-Form History';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(201; "Org-Value History"; Code[20])
        {
            Caption = 'Org-Value History';
            TableRelation = IF ("Org-Form History" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form History" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form History" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form History" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form History" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form History" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form History" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form History" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form History" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(202; "Org-Value from Date"; Date)
        {
            Caption = 'Org-Value from Date';
        }
        field(203; "Org-Value to Date"; Date)
        {
            Caption = 'Org-Value to Date';
        }
        field(210; "Vacation Field"; Option)
        {
            Caption = 'Vacation Field';
            OptionCaption = ' ,Agreed,Handicap,Special,Payed,Additive,Carried fwd.,C-Handicap,C-Special,Agreed H,Handicap H,Special H,Carried fwd.H,C-Handicap H,C-Special H';
            OptionMembers = " ",Agreed,Handicap,Special,Payed,Additive,"Carried fwd.","C-Handicap","C-Special","Agreed H","Handicap H","Special H","Carried fwd.H","C-Handicap H","C-Special H";
        }
        field(211; "Vacation Value"; Decimal)
        {
            Caption = 'Vacation Value';
        }
        field(212; "Vacation Value from Date"; Date)
        {
            Caption = 'Vacation Value from Date';
        }
        field(213; "Vacation Value to Date"; Date)
        {
            Caption = 'Vacation Value to Date';
        }
        field(220; "Date of Last Change"; Date)
        {
            Caption = 'Date of Last Change';
        }
        field(221; "Time of Last Change"; Time)
        {
            Caption = 'Time of Last Change';
        }
        field(222; "User No. of Last Change"; Code[50])
        {
            Caption = 'User No. of Last Change';
            TableRelation = "User Line/T"."User No.";
        }
        field(230; "Date Field"; Option)
        {
            Caption = 'Date Field';
            OptionCaption = ' ,Employment Date,Leaving Date,Date of Birth,BeginRetirementExpected,Fixed-term Contract until,Begin Time of Probation,End Time of Probation,Begin Work Permit,End Work Permit,BeginResidencePermit,EndResidencePermit,SeniorityDate,WorkPermitExposed,ResidencePermitExposed';
            OptionMembers = " ","Employment Date","Leaving Date","Date of Birth",BeginRetirementExpected,"Fixed-term Contract until","Begin Time of Probation","End Time of Probation","Begin Work Permit","End Work Permit",BeginResidencePermit,EndResidencePermit,SeniorityDate,WorkPermitExposed,ResidencePermitExposed;
        }
        field(231; "Date Value"; Date)
        {
            Caption = 'Date Value';
        }
        field(232; "Date Value from Date"; Date)
        {
            Caption = 'Date Value from Date';
        }
        field(233; "Date Value to Date"; Date)
        {
            Caption = 'Date Value to Date';
        }
        field(235; "Text Field"; Option)
        {
            Caption = 'Text Field';
            OptionCaption = ' ,Search Item,Name,Last Name,First Name,Street,City,Business Phone No.,Private Phone No.,Fax,E-Mail,Homepage,Employee No. - Payroll,Target Company - Payroll,Destination Company - Sync.,Soft Terminal Password,PrivateMobilePhoneNo,c/o,Profession,Contract Percent,Initials,County,CompanyPhoneNoExtension,CompanyMobilePhoneNo,PrivateEMail,PrivateHomepage,FavoredLocation,SocialSecurityNumber,NameOfBirth,PlaceOfBirth,OfficeRoom';
            OptionMembers = " ","Search Item",Name,"Last Name","First Name",Street,City,"Business Phone No.","Private Phone No.",Fax,"E-Mail",Homepage,"Employee No. - Payroll","Target Company - Payroll","Destination Company - Sync.","Soft Terminal Password",PrivateMobilePhoneNo,"c/o",Profession,"Contract Percent",Initials,County,CompanyPhoneNoExtension,CompanyMobilePhoneNo,PrivateEMail,PrivateHomepage,FavoredLocation,SocialSecurityNumber,NameOfBirth,PlaceOfBirth,OfficeRoom;
        }
        field(236; "Text Value"; Text[80])
        {
            Caption = 'Text Value';
        }
        field(237; "Text Value from Date"; Date)
        {
            Caption = 'Text Value from Date';
        }
        field(238; "Text Value to Date"; Date)
        {
            Caption = 'Text Value to Date';
        }
        field(240; "Decimal Field"; Option)
        {
            Caption = 'Decimal Field';
            OptionCaption = ' ,Working Days / Week,State No.,Vacation/Weeks,Max. Vacation Add. Night Work,FamilyStatus,free 1,RiscOfLoss,ConsequencesOfLoss,FullTimeEmployeeHoursPerWeek,PartTimeEmployeeHoursPerWeek,ProcessingStatus,All Modules Inactive,Payroll Integration Inactive,Absent Integration Inactive,Payroll/Absent Int. Inactive,Integration FDC Inactive,CommitteeElectionAccepted,free 2,ReadyForRelocation,ApplicantDataInvisible,EmployeeStatus,NumberOfContracts,Executive,WorkPermit,ResidencePermit';
            OptionMembers = " ","Working Days / Week","State No.","Vacation/Weeks","Max. Vacation Add. Night Work",FamilyStatus,"free 1",RiscOfLoss,ConsequencesOfLoss,FullTimeEmployeeHoursPerWeek,PartTimeEmployeeHoursPerWeek,ProcessingStatus,"All Modules Inactive","Payroll Integration Inactive","Absent Integration Inactive","Payroll/Absent Int. Inactive","Integration FDC Inactive",CommitteeElectionAccepted,"free 2",ReadyForRelocation,ApplicantDataInvisible,EmployeeStatus,NumberOfContracts,Executive,WorkPermit,ResidencePermit;
        }
        field(241; "Decimal Value"; Decimal)
        {
            Caption = 'Decimal Value';
        }
        field(242; "Decimal Value from Date"; Date)
        {
            Caption = 'Decimal Value from Date';
        }
        field(243; "Decimal Value to Date"; Date)
        {
            Caption = 'Decimal Value to Date';
        }
        field(245; "Code Field"; Option)
        {
            Caption = 'Code Field';
            OptionCaption = ' ,ID No.,Post Code,Destination Journal - Payroll,Employee No. - Resource,Key Reference No.,Employee User ID,Unique-ID Badge,Alternative ID No.,CountryRegionCode,ProcessResponsibleEmplNo,ContactPersEmergeEmplNo1,ContactPersEmergeEmplNo2,DenominationNo,PayScaleAgreement,SalaryGroup,CareerGroup,CountryOfBirthCode,ShortSign,LanguageCode,NationalityCode,EthnicOrigin,VendorReferenceNo,ContactReferenceNo';
            OptionMembers = " ","ID No.","Post Code","Destination Journal - Payroll","Employee No. - Resource","Key Reference No.","Employee User ID","Unique-ID Badge","Alternative ID No.",CountryRegionCode,ProcessResponsibleEmplNo,ContactPersEmergeEmplNo1,ContactPersEmergeEmplNo2,DenominationNo,PayScaleAgreement,SalaryGroup,CareerGroup,CountryOfBirthCode,ShortSign,LanguageCode,NationalityCode,EthnicOrigin,VendorReferenceNo,ContactReferenceNo;
        }
        field(246; "Code Value"; Code[50])
        {
            Caption = 'Code Value';
        }
        field(247; "Code Value from Date"; Date)
        {
            Caption = 'Code Value from Date';
        }
        field(248; "Code Value to Date"; Date)
        {
            Caption = 'Code Value to Date';
        }
        field(251; "Department No. Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Department No." WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Department No. Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(252; "Division No. Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Division No." WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Division No. Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(253; "Activity No. Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Activity No." WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Activity No. Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(254; "Pay Group No. Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Pay Group No." WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Pay Group No. Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(255; "Company No. Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Company No." WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Company No. Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(256; "Group No. 1 Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Group No. 1" WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Group No. 1 Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(257; "Group No. 2 Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Group No. 2" WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Group No. 2 Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(258; "Group No. 3 Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Group No. 3" WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Group No. 3 Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(259; "Time Object No. Reference"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Time Object No." WHERE ("No." = FIELD ("W/Employee No.")));
            Caption = 'Time Object No. Reference';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Stand-In No. 3"; Code[20])
        {
            Caption = 'Stand-In No. 3';
            TableRelation = "Employee/T"."No.";
        }
        field(301; "Stand-In Name 3"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 3")));
            Caption = 'Stand-In Name 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(302; "Stand-In No. 3 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 3 mandatory';
        }
        field(303; "Stand-In No. 3 optional"; Boolean)
        {
            Caption = 'Stand-In No. 3 optional';
        }
        field(304; "Superior No. 3"; Code[20])
        {
            Caption = 'Superior No. 3';
            TableRelation = "Employee/T"."No.";
        }
        field(305; "Superior Name 3"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 3")));
            Caption = 'Superior Name 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(306; "Superior No. 3 mandatory"; Boolean)
        {
            Caption = 'Superior No. 3 mandatory';
        }
        field(307; "Superior No. 3 optional"; Boolean)
        {
            Caption = 'Superior No. 3 optional';
        }
        field(310; "Stand-In No. 4"; Code[20])
        {
            Caption = 'Stand-In No. 4';
            TableRelation = "Employee/T"."No.";
        }
        field(311; "Stand-In Name 4"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 4")));
            Caption = 'Stand-In Name 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(312; "Stand-In No. 4 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 4 mandatory';
        }
        field(313; "Stand-In No. 4 optional"; Boolean)
        {
            Caption = 'Stand-In No. 4 optional';
        }
        field(314; "Superior No. 4"; Code[20])
        {
            Caption = 'Superior No. 4';
            TableRelation = "Employee/T"."No.";
        }
        field(315; "Superior Name 4"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 4")));
            Caption = 'Superior Name 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(316; "Superior No. 4 mandatory"; Boolean)
        {
            Caption = 'Superior No. 4 mandatory';
        }
        field(317; "Superior No. 4 optional"; Boolean)
        {
            Caption = 'Superior No. 4 optional';
        }
        field(320; "Stand-In No. 5"; Code[20])
        {
            Caption = 'Stand-In No. 5';
            TableRelation = "Employee/T"."No.";
        }
        field(321; "Stand-In Name 5"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 5")));
            Caption = 'Stand-In Name 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(322; "Stand-In No. 5 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 5 mandatory';
        }
        field(323; "Stand-In No. 5 optional"; Boolean)
        {
            Caption = 'Stand-In No. 5 optional';
        }
        field(324; "Superior No. 5"; Code[20])
        {
            Caption = 'Superior No. 5';
            TableRelation = "Employee/T"."No.";
        }
        field(325; "Superior Name 5"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 5")));
            Caption = 'Superior Name 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(326; "Superior No. 5 mandatory"; Boolean)
        {
            Caption = 'Superior No. 5 mandatory';
        }
        field(327; "Superior No. 5 optional"; Boolean)
        {
            Caption = 'Superior No. 5 optional';
        }
        field(330; "Stand-In No. 6"; Code[20])
        {
            Caption = 'Stand-In No. 6';
            TableRelation = "Employee/T"."No.";
        }
        field(331; "Stand-In Name 6"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 6")));
            Caption = 'Stand-In Name 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(332; "Stand-In No. 6 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 6 mandatory';
        }
        field(333; "Stand-In No. 6 optional"; Boolean)
        {
            Caption = 'Stand-In No. 6 optional';
        }
        field(334; "Superior No. 6"; Code[20])
        {
            Caption = 'Superior No. 6';
            TableRelation = "Employee/T"."No.";
        }
        field(335; "Superior Name 6"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 6")));
            Caption = 'Superior Name 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(336; "Superior No. 6 mandatory"; Boolean)
        {
            Caption = 'Superior No. 6 mandatory';
        }
        field(337; "Superior No. 6 optional"; Boolean)
        {
            Caption = 'Superior No. 6 optional';
        }
        field(400; "W/Stand-In No. 3"; Code[20])
        {
            Caption = 'W/Stand-In No. 3';
            TableRelation = "Employee/T"."No.";
        }
        field(401; "W/Stand-In Name 3"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Stand-In No. 3")));
            Caption = 'W/Stand-In Name 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(402; "W/Stand-In Confirmation y 3"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation y 3';
        }
        field(403; "W/Stand-In Confirmation n 3"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation n 3';
        }
        field(404; "W/Comment on Stand-In 3"; Text[80])
        {
            Caption = 'W/Comment on Stand-In 3';
        }
        field(405; "W/Stand-In Date 3"; Date)
        {
            Caption = 'W/Stand-In Date 3';
            Editable = false;
        }
        field(410; "W/Superior No. 3"; Code[20])
        {
            Caption = 'W/Superior No. 3';
            TableRelation = "Employee/T"."No.";
        }
        field(411; "W/Superior Name 3"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Superior No. 3")));
            Caption = 'W/Superior Name 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(412; "W/Superior Confirmation y 3"; Boolean)
        {
            Caption = 'W/Superior Confirmation y 3';
        }
        field(413; "W/Superior Confirmation n 3"; Boolean)
        {
            Caption = 'W/Superior Confirmation n 3';
        }
        field(414; "W/Comment on Superior 3"; Text[80])
        {
            Caption = 'W/Comment on Superior 3';
        }
        field(415; "W/Superior Date 3"; Date)
        {
            Caption = 'W/Superior Date 3';
            Editable = false;
        }
        field(420; "W/Stand-In No. 4"; Code[20])
        {
            Caption = 'W/Stand-In No. 4';
            TableRelation = "Employee/T"."No.";
        }
        field(421; "W/Stand-In Name 4"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Stand-In No. 4")));
            Caption = 'W/Stand-In Name 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(422; "W/Stand-In Confirmation y 4"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation y 4';
        }
        field(423; "W/Stand-In Confirmation n 4"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation n 4';
        }
        field(424; "W/Comment on Stand-In 4"; Text[80])
        {
            Caption = 'W/Comment on Stand-In 4';
        }
        field(425; "W/Stand-In Date 4"; Date)
        {
            Caption = 'W/Stand-In Date 4';
            Editable = false;
        }
        field(430; "W/Superior No. 4"; Code[20])
        {
            Caption = 'W/Superior No. 4';
            TableRelation = "Employee/T"."No.";
        }
        field(431; "W/Superior Name 4"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Superior No. 4")));
            Caption = 'W/Superior Name 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(432; "W/Superior Confirmation y 4"; Boolean)
        {
            Caption = 'W/Superior Confirmation y 4';
        }
        field(433; "W/Superior Confirmation n 4"; Boolean)
        {
            Caption = 'W/Superior Confirmation n 4';
        }
        field(434; "W/Comment on Superior 4"; Text[80])
        {
            Caption = 'W/Comment on Superior 4';
        }
        field(435; "W/Superior Date 4"; Date)
        {
            Caption = 'W/Superior Date 4';
            Editable = false;
        }
        field(440; "W/Stand-In No. 5"; Code[20])
        {
            Caption = 'W/Stand-In No. 5';
            TableRelation = "Employee/T"."No.";
        }
        field(441; "W/Stand-In Name 5"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Stand-In No. 5")));
            Caption = 'W/Stand-In Name 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(442; "W/Stand-In Confirmation y 5"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation y 5';
        }
        field(443; "W/Stand-In Confirmation n 5"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation n 5';
        }
        field(444; "W/Comment on Stand-In 5"; Text[80])
        {
            Caption = 'W/Comment on Stand-In 5';
        }
        field(445; "W/Stand-In Date 5"; Date)
        {
            Caption = 'W/Stand-In Date 5';
            Editable = false;
        }
        field(450; "W/Superior No. 5"; Code[20])
        {
            Caption = 'W/Superior No. 5';
            TableRelation = "Employee/T"."No.";
        }
        field(451; "W/Superior Name 5"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Superior No. 5")));
            Caption = 'W/Superior Name 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(452; "W/Superior Confirmation y 5"; Boolean)
        {
            Caption = 'W/Superior Confirmation y 5';
        }
        field(453; "W/Superior Confirmation n 5"; Boolean)
        {
            Caption = 'W/Superior Confirmation n 5';
        }
        field(454; "W/Comment on Superior 5"; Text[80])
        {
            Caption = 'W/Comment on Superior 5';
        }
        field(455; "W/Superior Date 5"; Date)
        {
            Caption = 'W/Superior Date 5';
            Editable = false;
        }
        field(460; "W/Stand-In No. 6"; Code[20])
        {
            Caption = 'W/Stand-In No. 6';
            TableRelation = "Employee/T"."No.";
        }
        field(461; "W/Stand-In Name 6"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Stand-In No. 6")));
            Caption = 'W/Stand-In Name 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(462; "W/Stand-In Confirmation y 6"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation y 6';
        }
        field(463; "W/Stand-In Confirmation n 6"; Boolean)
        {
            Caption = 'W/Stand-In Confirmation n 6';
        }
        field(464; "W/Comment on Stand-In 6"; Text[80])
        {
            Caption = 'W/Comment on Stand-In 6';
        }
        field(465; "W/Stand-In Date 6"; Date)
        {
            Caption = 'W/Stand-In Date 6';
            Editable = false;
        }
        field(470; "W/Superior No. 6"; Code[20])
        {
            Caption = 'W/Superior No. 6';
            TableRelation = "Employee/T"."No.";
        }
        field(471; "W/Superior Name 6"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("W/Superior No. 6")));
            Caption = 'W/Superior Name 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(472; "W/Superior Confirmation y 6"; Boolean)
        {
            Caption = 'W/Superior Confirmation y 6';
        }
        field(473; "W/Superior Confirmation n 6"; Boolean)
        {
            Caption = 'W/Superior Confirmation n 6';
        }
        field(474; "W/Comment on Superior 6"; Text[80])
        {
            Caption = 'W/Comment on Superior 6';
        }
        field(475; "W/Superior Date 6"; Date)
        {
            Caption = 'W/Superior Date 6';
            Editable = false;
        }
        field(500; "W/Stand-In No. 3 mandatory"; Boolean)
        {
            Caption = 'W/Stand-In No. 3 mandatory';
        }
        field(501; "W/Stand-In No. 3 optional"; Boolean)
        {
            Caption = 'W/Stand-In No. 3 optional';
        }
        field(502; "W/Stand-In No. 4 mandatory"; Boolean)
        {
            Caption = 'W/Stand-In No. 4 mandatory';
        }
        field(503; "W/Stand-In No. 4 optional"; Boolean)
        {
            Caption = 'W/Stand-In No. 4 optional';
        }
        field(504; "W/Stand-In No. 5 mandatory"; Boolean)
        {
            Caption = 'W/Stand-In No. 5 mandatory';
        }
        field(505; "W/Stand-In No. 5 optional"; Boolean)
        {
            Caption = 'W/Stand-In No. 5 optional';
        }
        field(506; "W/Stand-In No. 6 mandatory"; Boolean)
        {
            Caption = 'W/Stand-In No. 6 mandatory';
        }
        field(507; "W/Stand-In No. 6 optional"; Boolean)
        {
            Caption = 'W/Stand-In No. 6 optional';
        }
        field(510; "W/Superior No. 3 mandatory"; Boolean)
        {
            Caption = 'W/Superior No. 3 mandatory';
        }
        field(511; "W/Superior No. 3 optional"; Boolean)
        {
            Caption = 'W/Superior No. 3 optional';
        }
        field(512; "W/Superior No. 4 mandatory"; Boolean)
        {
            Caption = 'W/Superior No. 4 mandatory';
        }
        field(513; "W/Superior No. 4 optional"; Boolean)
        {
            Caption = 'W/Superior No. 4 optional';
        }
        field(514; "W/Superior No. 5 mandatory"; Boolean)
        {
            Caption = 'W/Superior No. 5 mandatory';
        }
        field(515; "W/Superior No. 5 optional"; Boolean)
        {
            Caption = 'W/Superior No. 5 optional';
        }
        field(516; "W/Superior No. 6 mandatory"; Boolean)
        {
            Caption = 'W/Superior No. 6 mandatory';
        }
        field(517; "W/Superior No. 6 optional"; Boolean)
        {
            Caption = 'W/Superior No. 6 optional';
        }
        field(520; "W/Old Clocking"; Time)
        {
            Caption = 'Old Clocking';
        }
        field(521; "W/Old Clocking Ref."; Code[1])
        {
            Caption = 'Old Clocking Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(522; "W/New Clocking"; Time)
        {
            Caption = 'New Clocking';
        }
        field(523; "W/New Clocking Ref."; Code[1])
        {
            Caption = 'New Clocking Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(524; "W/Clocking Type"; Option)
        {
            Caption = 'Clocking Type';
            OptionCaption = ' ,Coming,Leaving,Errand,Department,Break,Access,Inquiry,Info,Order Begin Serial';
            OptionMembers = ,Coming,Leaving,Errand,Department,"Break",Access,Inquiry,Info,"Order Begin Serial";
        }
        field(525; "W/Clocking Function"; Option)
        {
            Caption = 'Clocking Function';
            OptionCaption = ' ,Insert,Change,Delete';
            OptionMembers = " ",Insert,Change,Delete;
        }
        field(526; "W/Old Input"; Code[20])
        {
            Caption = 'Old Input';
        }
        field(527; "W/New Input"; Code[20])
        {
            Caption = 'New Input';
        }
        field(530; "W/Old Order No."; Code[20])
        {
            Caption = 'Old Order No.';
        }
        field(531; "W/Old Task No."; Code[20])
        {
            Caption = 'Old Task No.';
        }
        field(532; "W/Old Dim.1"; Code[20])
        {
            Caption = 'Old Dim.1';
        }
        field(533; "W/Old Dim.2"; Code[20])
        {
            Caption = 'Old Dim.2';
        }
        field(534; "W/Old Dim.3"; Code[20])
        {
            Caption = 'Old Dim.3';
        }
        field(535; "W/Old Dim.4"; Code[20])
        {
            Caption = 'Old Dim.4';
        }
        field(540; "W/New Order No."; Code[20])
        {
            Caption = 'New Order No.';
        }
        field(541; "W/New Task No."; Code[20])
        {
            Caption = 'New Task No.';
        }
        field(542; "W/New Dim.1"; Code[20])
        {
            Caption = 'New Dim.1';
        }
        field(543; "W/New Dim.2"; Code[20])
        {
            Caption = 'New Dim.2';
        }
        field(544; "W/New Dim.3"; Code[20])
        {
            Caption = 'New Dim.3';
        }
        field(545; "W/New Dim.4"; Code[20])
        {
            Caption = 'New Dim.4';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Empl. Field No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "W/From Date")
        {
        }
    }

    fieldgroups
    {
    }
}

