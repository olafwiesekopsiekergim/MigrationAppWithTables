table 5056293 "CASE/T"
{
    Caption = 'CASE';
    DataCaptionFields = "No.", Description;
    Description = 'GrCASE';

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
        field(10; "Time Processing Inactive"; Boolean)
        {
            Caption = 'Time Processing Inactive';
        }
        field(11; "Period Evaluation Inactive"; Boolean)
        {
            Caption = 'Period Evaluation Inactive';
        }
        field(12; "Back Calculation Inactive"; Boolean)
        {
            Caption = 'Back Calculation Inactive';
        }
        field(13; "Temporarily Inactive"; Boolean)
        {
            Caption = 'Temporarily Inactive';
        }
        field(14; "Temporarily active"; Boolean)
        {
            Caption = 'Temporarily active';
        }
        field(15; "Inactivation-Line"; Integer)
        {
            Caption = 'Inactivation-Line';
        }
        field(16; "Processing Splitting-TA"; Option)
        {
            Caption = 'Processing Splitting-TA';
            OptionCaption = ' ,Department-Splitting,FDC-Splitting';
            OptionMembers = " ","Department-Splitting","FDC-Splitting";
        }
        field(17; "Auto. End of Period Inactive"; Boolean)
        {
            Caption = 'Auto. End of Period Inactive';
        }
        field(20; "Org-Form 1"; Option)
        {
            Caption = 'Org-Form 1';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(21; "Org-Value from 1"; Code[20])
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
        field(22; "Org-Value to 1"; Code[20])
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
        field(23; "Org-Group No. 1"; Code[20])
        {
            Caption = 'Org-Group No. 1';
            TableRelation = "Organization Group/T"."No.";
        }
        field(24; "Processing E-Fieldline Dept."; Boolean)
        {
            Caption = 'Processing E-Fieldline Dept.';
        }
        field(25; "Org-Form NOT 1"; Boolean)
        {
            Caption = 'Org-Form NOT 1';
        }
        field(26; "Processing/1.cutted week"; Boolean)
        {
            Caption = 'Processing/1.cutted week';
        }
        field(27; "Processing/last cutted week"; Boolean)
        {
            Caption = 'Processing/last cutted week';
        }
        field(28; "Processing/1.Day of Period"; Boolean)
        {
            Caption = 'Processing/1.Day of Period';
        }
        field(29; "Processing/last Day of Period"; Boolean)
        {
            Caption = 'Processing/last Day of Period';
        }
        field(30; "All Days"; Boolean)
        {
            Caption = 'All Days';
        }
        field(31; "From Date"; Date)
        {
            Caption = 'From Date';
        }
        field(32; "To Date"; Date)
        {
            Caption = 'To Date';
        }
        field(33; Monday; Boolean)
        {
            Caption = 'Monday';
        }
        field(34; Tuesday; Boolean)
        {
            Caption = 'Tuesday';
        }
        field(35; Wednesday; Boolean)
        {
            Caption = 'Wednesday';
        }
        field(36; Thursday; Boolean)
        {
            Caption = 'Thursday';
        }
        field(37; Friday; Boolean)
        {
            Caption = 'Friday';
        }
        field(38; Saturday; Boolean)
        {
            Caption = 'Saturday';
        }
        field(39; Sunday; Boolean)
        {
            Caption = 'Sunday';
        }
        field(40; "TA Group No. Pub. Holiday"; Code[10])
        {
            Caption = 'TA Group No. Public Holiday';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(41; "Summer Time (Ref. Sunday)"; Boolean)
        {
            Caption = 'Summer Time (Ref. Sunday)';
        }
        field(42; "TA Group No. Pub. Holiday NOT"; Boolean)
        {
            Caption = 'TA Group No. Public Holiday NOT';
        }
        field(43; "TA Group No. Special Day"; Code[10])
        {
            Caption = 'TA Group No. Special Day';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(44; "Winter Time (Ref. Sunday)"; Boolean)
        {
            Caption = 'Winter Time (Ref. Sunday)';
        }
        field(45; "TA Group No. Special Day NOT"; Boolean)
        {
            Caption = 'TA Group No. Special Day NOT';
        }
        field(46; "If Target Object No. 1"; Code[10])
        {
            Caption = 'If Target Object No. 1';
            TableRelation = "Target Object/T"."No.";
        }
        field(47; "If Target Object No. 2"; Code[10])
        {
            Caption = 'If Target Object No. 2';
            TableRelation = "Target Object/T"."No.";
        }
        field(48; "Period Data from Empl.-Fields"; Boolean)
        {
            Caption = 'Period Data from Empl.-Fields';
        }
        field(49; Period; Option)
        {
            Caption = 'Period';
            OptionCaption = ' ,January,February,March,April,May,June,July,August,September,October,November,December';
            OptionMembers = " ",January,February,March,April,May,June,July,August,September,October,November,December;
        }
        field(50; "Offset Date"; Date)
        {
            Caption = 'Offset Date';
        }
        field(51; "Time Cycle"; Integer)
        {
            Caption = 'Time Cycle';
        }
        field(52; "Period Evaluation"; Boolean)
        {
            Caption = 'Period Evaluation';
        }
        field(53; "Back Calculation"; Boolean)
        {
            Caption = 'Back Calculation';
        }
        field(54; "Back Calc.TA Grp.No.Sce./Dest."; Code[10])
        {
            Caption = 'Back Calc.TA Grp.No.Sce./Dest.';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(55; "Back Calc. Analysis last Event"; Boolean)
        {
            Caption = 'Back Calc. Analysis last Event';
        }
        field(56; "Back Calculation No. of Days"; Integer)
        {
            Caption = 'Back Calculation No. of Days';
        }
        field(57; "Back Calc. 1.Day of Period"; Boolean)
        {
            Caption = 'Back Calc. 1.Day of Period';
        }
        field(58; "If first Clocking of the day"; Boolean)
        {
            Caption = 'If first Clocking of the day';
        }
        field(59; "If last Clocking of the day"; Boolean)
        {
            Caption = 'If last Clocking of the day';
        }
        field(60; "Processing/Future"; Boolean)
        {
            Caption = 'Processing/Future';
        }
        field(61; "Processing/1.Day of Week/Per."; Boolean)
        {
            Caption = 'Processing/1.Day of Week/Per.';
        }
        field(62; "Summer Time (Ref. Saturday)"; Boolean)
        {
            Caption = 'Summer Time (Ref. Saturday)';
        }
        field(63; "Winter Time (Ref. Saturday)"; Boolean)
        {
            Caption = 'Winter Time (Ref. Saturday)';
        }
        field(65; "If Clocking Entry 1"; Code[10])
        {
            Caption = 'If Clocking Entry 1';
        }
        field(66; "If Clocking Entry 2"; Code[10])
        {
            Caption = 'If Clocking Entry 2';
        }
        field(67; "If last Terminal Key"; Boolean)
        {
            Caption = 'If last Terminal Key';
        }
        field(68; "If Day-Obj.Planned"; Code[10])
        {
            Caption = 'If Day-Obj.Planned';
            TableRelation = "Day Object/T"."No.";
        }
        field(69; "and/or Day-Obj.Proc."; Code[10])
        {
            Caption = 'and/or Day-Obj.Proc.';
            TableRelation = "Day Object/T"."No.";
        }
        field(70; "No Condition"; Boolean)
        {
            Caption = 'No Condition';
        }
        field(71; "If Day Object No."; Code[10])
        {
            Caption = 'If Day Object No.';
            TableRelation = "Day Object/T"."No.";
        }
        field(72; "If Clocking Type"; Option)
        {
            Caption = 'If Clocking Type';
            OptionCaption = ' ,Original Clocking,Actual Clocking,Target Begin,Target End';
            OptionMembers = " ","Original Clocking","Actual Clocking","Target Begin","Target End";
        }
        field(73; "If Terminal Key"; Option)
        {
            Caption = 'If Terminal Key';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)";
        }
        field(74; "If Terminal Key Entry No."; Integer)
        {
            Caption = 'If Terminal Key Entry No.';
        }
        field(75; "If from Clocking"; Time)
        {
            Caption = 'If from Clocking';
        }
        field(76; "If from Reference"; Code[1])
        {
            Caption = 'If from Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(77; "If to Clocking"; Time)
        {
            Caption = 'If to Clocking';
        }
        field(78; "If to Reference"; Code[1])
        {
            Caption = 'If to Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(79; "If Terminal Key NOT"; Boolean)
        {
            Caption = 'If Terminal Key NOT';
        }
        field(80; "If No. of Term. Key Strokes 1"; Option)
        {
            Caption = 'If No. of Term. Key Strokes 1';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)";
        }
        field(81; "If No. Compare Operator 1"; Option)
        {
            Caption = 'If No. Compare Operator 1';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(82; "If No. Constant 1"; Decimal)
        {
            Caption = 'If No. Constant 1';
        }
        field(83; "If automatic Clockings"; Option)
        {
            Caption = 'If automatic Clockings';
            OptionCaption = ' ,Coming,Leaving,Coming/Leaving';
            OptionMembers = " ",Coming,Leaving,"Coming/Leaving";
        }
        field(84; "If external Event"; Option)
        {
            Caption = 'If external Event';
            OptionCaption = ' ,unapproved Task';
            OptionMembers = " ","unapproved Task";
        }
        field(85; "If Clocking Entry"; Code[10])
        {
            Caption = 'If Clocking Entry';
        }
        field(86; "If No. of Term. Key Strokes 2"; Option)
        {
            Caption = 'If No. of Term. Key Strokes 2';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)";
        }
        field(87; "If No. Compare Operator 2"; Option)
        {
            Caption = 'If No. Compare Operator 2';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(88; "If No. Constant 2"; Decimal)
        {
            Caption = 'If No. Constant 2';
        }
        field(89; "If FDC-Check"; Boolean)
        {
            Caption = 'If FDC-Check';
        }
        field(90; "If Time Account No. (1)"; Code[10])
        {
            Caption = 'If Time Account No. (1)';
            TableRelation = "Time Account/T"."No.";
        }
        field(92; "If Empl. Field/Individual (1)"; Code[20])
        {
            Caption = 'If Empl. Field/Individual (1)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(93; "Comp. Operator (1)"; Option)
        {
            Caption = 'Comp. Operator (1)';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(94; "Time Account No. (1)"; Code[10])
        {
            Caption = 'Time Account No. (1)';
            TableRelation = "Time Account/T"."No.";
        }
        field(96; "Empl. Field/Individual (1)"; Code[20])
        {
            Caption = 'Empl. Field/Individual (1)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(97; "Constant (Min/Day) (1)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (1)';
        }
        field(98; "and/or (1)"; Option)
        {
            Caption = 'and/or (1)';
            OptionCaption = ' ,and,or';
            OptionMembers = " ","and","or";
        }
        field(99; "If Time Account No. (2)"; Code[10])
        {
            Caption = 'If Time Account No. (2)';
            TableRelation = "Time Account/T"."No.";
        }
        field(101; "If Empl. Field/Individual (2)"; Code[20])
        {
            Caption = 'If Empl. Field/Individual (2)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(102; "Comp. Operator (2)"; Option)
        {
            Caption = 'Comp. Operator (2)';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(103; "Time Account No. (2)"; Code[10])
        {
            Caption = 'Time Account No. (2)';
            TableRelation = "Time Account/T"."No.";
        }
        field(105; "Empl. Field/Individual (2)"; Code[20])
        {
            Caption = 'Empl. Field/Individual (2)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(106; "Constant (Min/Day) (2)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (2)';
        }
        field(107; "and/or (2)"; Option)
        {
            Caption = 'and/or (2)';
            OptionCaption = ' ,and,or';
            OptionMembers = " ","and","or";
        }
        field(108; "If Time Account No. (3)"; Code[10])
        {
            Caption = 'If Time Account No. (3)';
            TableRelation = "Time Account/T"."No.";
        }
        field(110; "If Empl. Field/Individual (3)"; Code[20])
        {
            Caption = 'If Empl. Field/Individual (3)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(111; "Comp. Operator (3)"; Option)
        {
            Caption = 'Comp. Operator (3)';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(112; "Time Account No. (3)"; Code[10])
        {
            Caption = 'Time Account No. (3)';
            TableRelation = "Time Account/T"."No.";
        }
        field(114; "Empl. Field/Individual (3)"; Code[20])
        {
            Caption = 'Empl. Field/Individual (3)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(115; "Constant (Min/Day) (3)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (3)';
        }
        field(116; "and/or (3)"; Option)
        {
            Caption = 'and/or (3)';
            OptionCaption = ' ,and,or';
            OptionMembers = " ","and","or";
        }
        field(120; "Then Time Account No. (5)"; Code[10])
        {
            Caption = 'Then Time Account No. (5)';
            TableRelation = "Time Account/T"."No.";
        }
        field(122; "Then Empl.Field/Individual (5)"; Code[20])
        {
            Caption = 'Then Empl.Field/Individual (5)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(123; "Allocation (5)"; Option)
        {
            Caption = 'Allocation (5)';
            OptionCaption = ' ,equal,plus,minus,round 1/0.5/0.25/0.24,Sum,Plan/Wk,RV.d,RV.Yr.bef.d,RV.h,RV.Yr.bef.h,Relax O,Relax A,V.total,HV,HRV.d,Num.DO.No.,Num.DO.Type,I1,I2,I3,AV,round 0.1,Old-V.del,TObj-h,Num.WD,Split';
            OptionMembers = " ",equal,plus,minus,"round 1/0.5/0.25/0.24","Sum","Plan/Wk","RV.d","RV.Yr.bef.d","RV.h","RV.Yr.bef.h","Relax O","Relax A","V.total",HV,"HRV.d","Num.DO.No.","Num.DO.Type",I1,I2,I3,AV,"round 0.1","Old-V.del","TObj-h","Num.WD",Split;
        }
        field(124; "Time Account No. (5)"; Code[10])
        {
            Caption = 'Time Account No. (5)';
            TableRelation = "Time Account/T"."No.";
        }
        field(126; "Algorithm No. (5)"; Code[20])
        {
            Caption = 'Algorithm No. (5)';
            TableRelation = "Algorithm/T"."No.";
        }
        field(128; "Constant (Min/Day) (5)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (5)';
        }
        field(129; "Then Time Account No. (6)"; Code[10])
        {
            Caption = 'Then Time Account No. (6)';
            TableRelation = "Time Account/T"."No.";
        }
        field(131; "Then Empl.Field/Individual (6)"; Code[20])
        {
            Caption = 'Then Empl.Field/Individual (6)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(132; "Allocation (6)"; Option)
        {
            Caption = 'Allocation (6)';
            OptionCaption = ' ,equal,plus,minus,round 1/0.5/0.25/0.24,Sum,Plan/Wk,RV.d,RV.Yr.bef.d,RV.h,RV.Yr.bef.h,Relax O,Relax A,V.total,HV,HRV.d,Num.DO.No.,Num.DO.Type,I1,I2,I3,AV,round 0.1,Old-V.del,TObj-h,Num.WD,Split';
            OptionMembers = " ",equal,plus,minus,"round 1/0.5/0.25/0.24","Sum","Plan/Wk","RV.d","RV.Yr.bef.d","RV.h","RV.Yr.bef.h","Relax O","Relax A","V.total",HV,"HRV.d","Num.DO.No.","Num.DO.Type",I1,I2,I3,AV,"round 0.1","Old-V.del","TObj-h","Num.WD",Split;
        }
        field(133; "Time Account No. (6)"; Code[10])
        {
            Caption = 'Time Account No. (6)';
            TableRelation = "Time Account/T"."No.";
        }
        field(135; "Algorithm No. (6)"; Code[20])
        {
            Caption = 'Algorithm No. (6)';
            TableRelation = "Algorithm/T"."No.";
        }
        field(137; "Constant (Min/Day) (6)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (6)';
        }
        field(138; "Then Time Account No. (7)"; Code[10])
        {
            Caption = 'Then Time Account No. (7)';
            TableRelation = "Time Account/T"."No.";
        }
        field(140; "Then TA Group No. (7)"; Code[10])
        {
            Caption = 'Then TA Group No. (7)';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(142; "Allocation (7)"; Option)
        {
            Caption = 'Allocation (7)';
            OptionCaption = ' ,equal,plus,minus,round 1/0.5/0.25/0.24,Sum,Plan/Wk,RV.d,RV.Yr.bef.d,RV.h,RV.Yr.bef.h,Relax O,Relax A,V.total,HV,HRV.d,Num.DO.No.,Num.DO.Type,I1,I2,I3,AV,round 0.1,Old-V.del,TObj-h,Num.WD,Split';
            OptionMembers = " ",equal,plus,minus,"round 1/0.5/0.25/0.24","Sum","Plan/Wk","RV.d","RV.Yr.bef.d","RV.h","RV.Yr.bef.h","Relax O","Relax A","V.total",HV,"HRV.d","Num.DO.No.","Num.DO.Type",I1,I2,I3,AV,"round 0.1","Old-V.del","TObj-h","Num.WD",Split;
        }
        field(143; "Time Account No. (7)"; Code[10])
        {
            Caption = 'Time Account No. (7)';
            TableRelation = "Time Account/T"."No.";
        }
        field(145; "Algorithm No. (7)"; Code[20])
        {
            Caption = 'Algorithm No. (7)';
            TableRelation = "Algorithm/T"."No.";
        }
        field(147; "Constant (Min/Day) (7)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (7)';
        }
        field(150; "If Time Account No. (4)"; Code[10])
        {
            Caption = 'If Time Account No. (4)';
            TableRelation = "Time Account/T"."No.";
        }
        field(151; "If Empl. Field/Individual (4)"; Code[20])
        {
            Caption = 'If Empl. Field/Individual (4)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(152; "Comp. Operator (4)"; Option)
        {
            Caption = 'Comp. Operator (4)';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(153; "Time Account No. (4)"; Code[10])
        {
            Caption = 'Time Account No. (4)';
            TableRelation = "Time Account/T"."No.";
        }
        field(154; "Empl. Field/Individual (4)"; Code[20])
        {
            Caption = 'Empl. Field/Individual (4)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(155; "Constant (Min/Day) (4)"; Decimal)
        {
            Caption = 'Constant (Min/Day) (4)';
        }
        field(159; "Then D-Object No. proc."; Code[10])
        {
            Caption = 'Then D-Object No. proc.';
            TableRelation = "Day Object/T"."No.";
        }
        field(160; "Then D-Object No. plan.+proc."; Code[10])
        {
            Caption = 'Then D-Object No. plan.+proc.';
            TableRelation = "Day Object/T"."No.";
        }
        field(161; "Then TA No. Absent Day 1"; Code[10])
        {
            Caption = 'Then TA No. Absent Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(162; "Then TA No. Absent Day 2"; Code[10])
        {
            Caption = 'Then TA No. Absent Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(163; "Then Absent Day overwrite"; Boolean)
        {
            Caption = 'Then Absent Day overwrite';
        }
        field(164; "Then Time Grid No./Overtime"; Code[10])
        {
            Caption = 'Then Time Grid No./Overtime';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Overtime Object 2000-2999"));
        }
        field(166; "Then Time Grid No./Absent"; Code[10])
        {
            Caption = 'Then Time Grid No./Absent';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Absent Time Object 3000-3999"));
        }
        field(167; "Then Time Grid/Addit. Abs. T."; Boolean)
        {
            Caption = 'Then Time Grid/Addit. Abs. T.';
        }
        field(168; "Then Time Grid No./Supplement"; Code[10])
        {
            Caption = 'Then Time Grid No./Supplement';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Supplement Object 4000-4999"));
        }
        field(169; "Then No. of Days Continuation"; Integer)
        {
            Caption = 'Then No. of Days Continuation';
        }
        field(170; "Then Time Grid No./Target"; Code[10])
        {
            Caption = 'Then Time Grid No./Target';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Target Time Object 5000-5999"));
        }
        field(171; "Then R-Group Overwrite"; Boolean)
        {
            Caption = 'Then R-Group Overwrite';
        }
        field(172; "Then Time Grid No./Special"; Code[10])
        {
            Caption = 'Then Time Grid No./Special';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Special Object 6000-6999"));
        }
        field(173; "Then Function Sum-Values TA"; Boolean)
        {
            Caption = 'Then Function Sum-Values TA';
        }
        field(174; "Then Rounding Group No."; Code[20])
        {
            Caption = 'Then Rounding Group No.';
            TableRelation = "Rounding Group/T"."No.";
        }
        field(175; "Then Calendar Inactive"; Boolean)
        {
            Caption = 'Then Calendar Inactive';
        }
        field(176; "Then Clocking Status"; Option)
        {
            Caption = 'Then Clocking Status';
            OptionCaption = ' ,Unfinished,Deviating,OK,Processed,Manual';
            OptionMembers = " ",Unfinished,Deviating,OK,Processed,Manual;
        }
        field(177; "Then Time Account No.protected"; Boolean)
        {
            Caption = 'Then Time Account No.protected';
        }
        field(178; "Then Individual Function"; Integer)
        {
            Caption = 'Then Individual Function';
        }
        field(179; "Then Terminal Relation"; Option)
        {
            Caption = 'Then Terminal Relation';
            OptionCaption = ' ,Absolute,Relative after the 2. until last Leaving Clocking,Relative before/after the 2. until the last Clocking Pair,Relative after the 2. until the last Coming Clocking';
            OptionMembers = " ",Absolute,"Relative after the 2. until the last Leaving Clocking","Relative before/after the 2. until the last Clocking Pair","Relative after the 2. until the last Coming Clocking";
        }
        field(180; "Then Terminal Key 1"; Option)
        {
            Caption = 'Then Terminal Key 1';
            OptionCaption = ' ,Coming,Leaving,Errand,Break,Info';
            OptionMembers = " ",Coming,Leaving,Errand,"Break",Info;
        }
        field(181; "Then Terminal Clocking 1"; Time)
        {
            Caption = 'Then Terminal Clocking 1';
        }
        field(182; "Then Terminal Reference 1"; Code[1])
        {
            Caption = 'Then Terminal Reference 1';
            CharAllowed = 'VVFFvvff';
        }
        field(183; "Then Info-Clock.T-Grid/Sup."; Boolean)
        {
            Caption = 'Then Info-Clock.T-Grid/Sup.';
        }
        field(184; "Then TA/Info-Clock.T-Grid/Sup."; Code[10])
        {
            Caption = 'Then TA/Info-Clock.T-Grid/Sup.';
            TableRelation = "Time Account/T"."No.";
        }
        field(185; "Then Terminal Key 2"; Option)
        {
            Caption = 'Then Terminal Key 2';
            OptionCaption = ' ,Coming,Leaving,Errand,Break,Info';
            OptionMembers = " ",Coming,Leaving,Errand,"Break",Info;
        }
        field(186; "Then Terminal Clocking 2"; Time)
        {
            Caption = 'Then Terminal Clocking 2';
        }
        field(187; "Then Terminal Reference 2"; Code[1])
        {
            Caption = 'Then Terminal Reference 2';
            CharAllowed = 'VVFFvvff';
        }
        field(188; "Then Time Account No. Info"; Code[10])
        {
            Caption = 'Then Time Account No. Info';
            TableRelation = "Time Account/T"."No.";
        }
        field(189; "Then Clocking Type"; Option)
        {
            Caption = 'Then Clocking Type';
            OptionCaption = ' ,Original Clocking,Actual Clocking';
            OptionMembers = " ","Original Clocking","Actual Clocking";
        }
        field(190; "Then Clocking Manipulation"; Option)
        {
            Caption = 'Then Clocking Manipulation';
            OptionCaption = ' ,Delete Coming/Leaving within,Delete all Clockings,Coming/Leaving within to Break,Melt Coming/Leaving within,Automatic Leaving Clocking,Automatic Errand Clocking,Automatic Leaving/Errand Clocking';
            OptionMembers = " ","Delete Coming/Leaving within","Delete all Clockings","Coming/Leaving within to Break","Melt Coming/Leaving within","Automatic Leaving Clocking","Automatic Errand Clocking","Automatic Leaving/Errand Clocking";
        }
        field(191; "Then Target-Break activate 1"; Boolean)
        {
            Caption = 'Then Target-Break activate 1';
        }
        field(192; "Then TA-No. Target-Break 1"; Code[10])
        {
            Caption = 'Then TA-No. Target-Break 1';
            TableRelation = "Break Object/T"."No.";
        }
        field(193; "Then Target-Break activate 2"; Boolean)
        {
            Caption = 'Then Target-Break activate 2';
        }
        field(194; "Then TA-No. Target-Break 2"; Code[10])
        {
            Caption = 'Then TA-No. Target-Break 2';
            TableRelation = "Break Object/T"."No.";
        }
        field(195; "Then Target-Break activate 3"; Boolean)
        {
            Caption = 'Then Target-Break activate 3';
        }
        field(196; "Then TA-No. Target-Break 3"; Code[10])
        {
            Caption = 'Then TA-No. Target-Break 3';
            TableRelation = "Break Object/T"."No.";
        }
        field(197; "Then Target-Break activate 4"; Boolean)
        {
            Caption = 'Then Target-Break activate 4';
        }
        field(198; "Then TA-No. Target-Break 4"; Code[10])
        {
            Caption = 'Then TA-No. Target-Break 4';
            TableRelation = "Break Object/T"."No.";
        }
        field(199; "Then No Update Clock-Status"; Boolean)
        {
            Caption = 'Then No Update Clock-Status';
        }
        field(200; Remark; Boolean)
        {
            CalcFormula = Exist ("TempVision Remark Line/T" WHERE ("Table Name" = CONST ("CASE/T"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Remark';
            Editable = false;
            FieldClass = FlowField;
        }
        field(201; "Then Automatic Minutes"; Integer)
        {
            Caption = 'Then Automatic Minutes';
        }
        field(210; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
            ValidateTableRelation = false;
        }
        field(211; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(212; "Task No."; Code[20])
        {
            Caption = 'Task No.';
        }
        field(213; "Dimension 1"; Code[20])
        {
            Caption = 'Dimension 1';
        }
        field(214; "Dimension 2"; Code[20])
        {
            Caption = 'Dimension 2';
        }
        field(215; "Dimension 3"; Code[20])
        {
            Caption = 'Dimension 3';
        }
        field(216; "Dimension 4"; Code[20])
        {
            Caption = 'Dimension 4';
        }
        field(220; "Department No. NOT"; Boolean)
        {
            Caption = 'Department No. NOT';
        }
        field(221; "Order No. NOT"; Boolean)
        {
            Caption = 'Order No. NOT';
        }
        field(222; "Task No. NOT"; Boolean)
        {
            Caption = 'Task No. NOT';
        }
        field(223; "Dimension 1 NOT"; Boolean)
        {
            Caption = 'Dimension 1 NOT';
        }
        field(224; "Dimension 2 NOT"; Boolean)
        {
            Caption = 'Dimension 2 NOT';
        }
        field(225; "Dimension 3 NOT"; Boolean)
        {
            Caption = 'Dimension 3 NOT';
        }
        field(226; "Dimension 4 NOT"; Boolean)
        {
            Caption = 'Dimension 4 NOT';
        }
        field(227; "If Employment Date in Period"; Boolean)
        {
            Caption = 'If Employment Date in Period';
        }
        field(228; "If Leaving Date in Period"; Boolean)
        {
            Caption = 'If Leaving Date in Period';
        }
        field(229; "If Day Object No. NOT"; Boolean)
        {
            Caption = 'If Day Object No. NOT';
        }
        field(230; "Org-Group Department No."; Code[10])
        {
            Caption = 'Org-Group Department No.';
            TableRelation = "Organization Group/T"."No.";
        }
        field(231; "Org-Group Order No."; Code[20])
        {
            Caption = 'Org-Group Order No.';
            TableRelation = "Organization Group/T"."No.";
        }
        field(232; "Org-Group Task No."; Code[20])
        {
            Caption = 'Org-Group Task No.';
            TableRelation = "Organization Group/T"."No.";
        }
        field(233; "Org-Group Dimension 1"; Code[20])
        {
            Caption = 'Org-Group Dimension 1';
            TableRelation = "Organization Group/T"."No.";
        }
        field(234; "Org-Group Dimension 2"; Code[20])
        {
            Caption = 'Org-Group Dimension 2';
            TableRelation = "Organization Group/T"."No.";
        }
        field(235; "Org-Group Dimension 3"; Code[20])
        {
            Caption = 'Org-Group Dimension 3';
            TableRelation = "Organization Group/T"."No.";
        }
        field(236; "Org-Group Dimension 4"; Code[20])
        {
            Caption = 'Org-Group Dimension 4';
            TableRelation = "Organization Group/T"."No.";
        }
        field(240; "Zero-Line Source TA No."; Code[10])
        {
            Caption = 'Zero-Line Source TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(241; "Zero-Line Goal TA No."; Code[10])
        {
            Caption = 'Zero-Line Goal TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(242; "Zero-Line Hours"; Decimal)
        {
            Caption = 'Zero-Line Hours';
        }
        field(250; "Back Calc.Bal. +/- No. of Days"; Integer)
        {
            Caption = 'Back Calc.Bal. +/- No. of Days';
        }
        field(260; "Then Period Working Days"; Option)
        {
            Caption = 'Then Period Working Days';
            OptionCaption = ' ,Current Period,Previous Period,Next Period,Current Year,Previous Year,Next Year';
            OptionMembers = " ","Current Period","Previous Period","Next Period","Current Year","Previous Year","Next Year";
        }
        field(261; "Then only at Target Times"; Boolean)
        {
            Caption = 'Then only at Target Times';
        }
        field(262; "Then inclusive Public Holidays"; Boolean)
        {
            Caption = 'Then inclusive Public Holidays';
        }
        field(263; "Then Calendar Days"; Boolean)
        {
            Caption = 'Then Calendar Days';
        }
        field(270; "If Clocking within Present"; Option)
        {
            Caption = 'If Clocking within Present';
            OptionCaption = ' ,Original Clocking,Actual Clocking';
            OptionMembers = " ","Original Clocking","Actual Clocking";
        }
        field(271; "If Coming/Leaving unpaired"; Boolean)
        {
            Caption = 'If Coming/Leaving unpaired';
        }
        field(272; "If Errand unpaired"; Boolean)
        {
            Caption = 'If Errand unpaired';
        }
        field(273; "If Break unpaired"; Boolean)
        {
            Caption = 'If Break unpaired';
        }
        field(300; "Pre-Public Holiday"; Boolean)
        {
            Caption = 'Pre-Public Holiday';
        }
        field(305; "Post-Public Holiday"; Boolean)
        {
            Caption = 'Post-Public Holiday';
        }
        field(400; "Mininum Relax Time"; Decimal)
        {
            Caption = 'Mininum Relax Time';
        }
        field(401; "Max. Working Time/Day"; Decimal)
        {
            Caption = 'Max. Working Time/Day';
        }
        field(402; "Max. Working Time/D-Week"; Decimal)
        {
            Caption = 'Max. Working Time/D-Week';
        }
        field(403; "Max. Num. Standby/Month"; Integer)
        {
            Caption = 'Max. Num. Standby/Month';
        }
        field(404; "Num. Sundays off/Year"; Integer)
        {
            Caption = 'Num. Sundays off/Year';
        }
        field(405; "Average daily.WT/half Year"; Decimal)
        {
            Caption = 'Average daily.WT/half Year';
        }
        field(406; "Num. Early Shift/Week"; Integer)
        {
            Caption = 'Num. Early Shift/Week';
        }
        field(407; "Num. Late Shift/Week"; Integer)
        {
            Caption = 'Num. Late Shift/Week';
        }
        field(408; "Num. Night Shift/Week"; Integer)
        {
            Caption = 'Num. Night Shift/Week';
        }
        field(409; "Num. Days off sequential"; Integer)
        {
            Caption = 'Num. Days off sequential';
        }
        field(420; "Work Sunday forbid. from C."; Time)
        {
            Caption = 'Work Sunday forbid. from C.';
        }
        field(421; "Work Sunday forbid. from R."; Code[1])
        {
            Caption = 'Work Sunday forbid. from R.';
            CharAllowed = 'VVFFvvff';
        }
        field(422; "Work Sunday forbid. to C."; Time)
        {
            Caption = 'Work Sunday forbid. to C.';
        }
        field(423; "Work Sunday forbid. to  R."; Code[1])
        {
            Caption = 'Work Sunday forbid. to  R.';
            CharAllowed = 'VVFFvvff';
        }
        field(424; "Work Holiday forbid. from C."; Time)
        {
            Caption = 'Work Holiday forbid. from C.';
        }
        field(425; "Work Holiday forbid. from R."; Code[1])
        {
            Caption = 'Work Holiday forbid. from R.';
            CharAllowed = 'VVFFvvff';
        }
        field(426; "Work Holiday forbid. to C."; Time)
        {
            Caption = 'Work Holiday forbid. to C.';
        }
        field(427; "Work Holiday forbid. to R."; Code[1])
        {
            Caption = 'Work Holiday forbid. to R.';
            CharAllowed = 'VVFFvvff';
        }
        field(428; "Work Night forbid. from C."; Time)
        {
            Caption = 'Work Night forbid. from C.';
        }
        field(429; "Work Night forbid. from R."; Code[1])
        {
            Caption = 'Work Night forbid. from R.';
            CharAllowed = 'VVFFvvff';
        }
        field(430; "Work Night forbid. to C."; Time)
        {
            Caption = 'Work Night forbid. to C.';
        }
        field(431; "Work Night forbid. to R."; Code[1])
        {
            Caption = 'Work Night forbid. to R.';
            CharAllowed = 'VVFFvvff';
        }
        field(432; "Working Time Limit/Day Clock."; Time)
        {
            Caption = 'Working Time Limit/Day Clock.';
        }
        field(433; "Working Time Limit/Day Ref."; Code[1])
        {
            Caption = 'Working Time Limit/Day Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(440; "Filter Vacation Reduction"; Option)
        {
            Caption = 'Filter Vacation Reduction';
            OptionCaption = ' ,Days,Hours';
            OptionMembers = " ",Days,Hours;
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

