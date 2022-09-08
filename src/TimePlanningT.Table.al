table 5056320 "Time Planning/T"
{
    Caption = 'Time Planning';
    Description = 'GrTimePlan';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Current Date"; Date)
        {
            Caption = 'Current Date';
            NotBlank = true;
        }
        field(3; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Absent Day"; Text[10])
        {
            Caption = 'Absent Day';
        }
        field(5; "TA No. Absent Day 1"; Code[10])
        {
            Caption = 'TA No. Absent Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(6; "TA Descr. Absent Day 1"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Absent Day 1")));
            Caption = 'TA Descr. Absent Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "TA Char. Absent Day 1"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Absent Day 1")));
            Caption = 'TA Char. Absent Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "TA No. Absent Day 2"; Code[10])
        {
            Caption = 'TA No. Absent Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(9; "TA Descr. Absent Day 2"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Absent Day 2")));
            Caption = 'TA Descr. Absent Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "TA Char. Absent Day 2"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Absent Day 2")));
            Caption = 'TA Char. Absent Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "TA No. Absent Day 3"; Code[10])
        {
            Caption = 'TA No. Absent Day 3';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(12; "TA Descr. Absent Day 3"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Absent Day 3")));
            Caption = 'TA Descr. Absent Day 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "TA Char. Absent Day 3"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Absent Day 3")));
            Caption = 'TA Char. Absent Day 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "TA No. Absent Day 4"; Code[10])
        {
            Caption = 'TA No. Absent Day 4';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(15; "TA Descr. Absent Day 4"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Absent Day 4")));
            Caption = 'TA Descr. Absent Day 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "TA Char. Absent Day 4"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Absent Day 4")));
            Caption = 'TA Char. Absent Day 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "TA No. Special Day"; Code[10])
        {
            Caption = 'TA No. Special Day';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Special Day"));
        }
        field(18; "TA Descr. Special Day"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Special Day")));
            Caption = 'TA Descr. Special Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "TA Char. Special Day"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Special Day")));
            Caption = 'TA Char. Special Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Day Object No. - Time Object"; Code[10])
        {
            Caption = 'Day Object No. - Time Object';
            TableRelation = "Day Object/T"."No.";
        }
        field(21; "Day Object Descr. - Time Obj."; Text[10])
        {
            CalcFormula = Lookup ("Day Object/T"."Description 2" WHERE ("No." = FIELD ("Day Object No. - Time Object")));
            Caption = 'Day Object Descr. - Time Obj.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Day Object No. - Default"; Code[10])
        {
            Caption = 'Day Object No. - Default';
            TableRelation = "Day Object/T"."No.";
        }
        field(23; "Day Object Descr. - Default"; Text[10])
        {
            CalcFormula = Lookup ("Day Object/T"."Description 2" WHERE ("No." = FIELD ("Day Object No. - Default")));
            Caption = 'Day Object Descr. - Default';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Day Object No. - Planned"; Code[10])
        {
            Caption = 'Day Object No. - Planned';
            TableRelation = "Day Object/T"."No.";
        }
        field(25; "Day Object Descr. - Planned"; Text[10])
        {
            CalcFormula = Lookup ("Day Object/T"."Description 2" WHERE ("No." = FIELD ("Day Object No. - Planned")));
            Caption = 'Day Object Descr. - Planned';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Day Object No. - Processed"; Code[10])
        {
            Caption = 'Day Object No. - Processed';
            TableRelation = "Day Object/T"."No.";
        }
        field(27; "Day Object Descr. - Processed"; Text[10])
        {
            CalcFormula = Lookup ("Day Object/T"."Description 2" WHERE ("No." = FIELD ("Day Object No. - Processed")));
            Caption = 'Day Object Descr. - Processed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Alternative No."; Code[10])
        {
            Caption = 'Alternative No.';
            TableRelation = "Alternative/T"."No.";
        }
        field(29; "Alternative Description"; Text[10])
        {
            CalcFormula = Lookup ("Alternative/T"."Description 2" WHERE ("No." = FIELD ("Alternative No.")));
            Caption = 'Alternative Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "TP/Overtime Time Account No."; Code[10])
        {
            Caption = 'TP/Overtime Time Account No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(31; "TP/Overtime Time Acc. Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TP/Overtime Time Account No.")));
            Caption = 'TP/Overtime Time Acc. Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "TP/Absent Times Time Acc. No."; Code[10])
        {
            Caption = 'TP/Absent Times Time Acc. No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(33; "TP/Absent T. Time Acc. Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TP/Absent Times Time Acc. No.")));
            Caption = 'TP/Absent T. Time Acc. Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "TP/Overtime Time Grid No."; Code[10])
        {
            Caption = 'TP/Overtime Time Grid No.';
            TableRelation = "Time Grid/T"."No.";
        }
        field(35; "TP/Overtime Time Grid Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Grid/T"."Description 2" WHERE ("No." = FIELD ("TP/Overtime Time Grid No.")));
            Caption = 'TP/Overtime Time Grid Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(36; "TP/Absent Times Time Grid No."; Code[10])
        {
            Caption = 'TP/Absent Times Time Grid No.';
            TableRelation = "Time Grid/T"."No.";
        }
        field(37; "TP/Absent T. Time Grid Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Grid/T"."Description 2" WHERE ("No." = FIELD ("TP/Absent Times Time Grid No.")));
            Caption = 'TP/Absent T. Time Grid Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "TP/Target Times Time Grid No."; Code[10])
        {
            Caption = 'TP/Target Times Time Grid No.';
            TableRelation = "Time Grid/T"."No.";
        }
        field(39; "TP/Target T.Time Grid Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Grid/T"."Description 2" WHERE ("No." = FIELD ("TP/Target Times Time Grid No.")));
            Caption = 'TP/Target T.Time Grid Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "TP/Special Times Time Grid No."; Code[10])
        {
            Caption = 'TP/Special Times Time Grid No.';
            TableRelation = "Time Grid/T"."No.";
        }
        field(41; "TP/Special T. Time Grid Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Grid/T"."Description 2" WHERE ("No." = FIELD ("TP/Special Times Time Grid No.")));
            Caption = 'TP/Special T. Time Grid Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42; "TP/Worked during Break 1"; Boolean)
        {
            Caption = 'TP/Worked during Break 1';
        }
        field(43; "TP/Worked during Break 2"; Boolean)
        {
            Caption = 'TP/Worked during Break 2';
        }
        field(44; "TP/Worked during Break 3"; Boolean)
        {
            Caption = 'TP/Worked during Break 3';
        }
        field(45; "TP/Worked during Break 4"; Boolean)
        {
            Caption = 'TP/Worked during Break 4';
        }
        field(46; "TP/Rounding Object Inactive 1"; Code[20])
        {
            Caption = 'TP/Rounding Object Inactive 1';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(47; "TP/Rounding Object Inactive 2"; Code[20])
        {
            Caption = 'TP/Rounding Object Inactive 2';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(48; "TP/Rounding Object Inactive 3"; Code[20])
        {
            Caption = 'TP/Rounding Object Inactive 3';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(49; "TP/Rounding Object Inactive 4"; Code[20])
        {
            Caption = 'TP/Rounding Object Inactive 4';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(50; "TP/Clocking Status"; Option)
        {
            Caption = 'TP/Clocking Status';
            OptionCaption = 'Unfinished,Deviating,OK,Processed,Manual';
            OptionMembers = Unfinished,Deviating,OK,Processed,Manual;
        }
        field(51; "TP/Integration Status"; Option)
        {
            Caption = 'TP/Integration Status';
            OptionCaption = 'Not Integrated,Integrated Pay,Integrated FDC,Integrated Pay/FDC';
            OptionMembers = "Not Integrated","Integrated Pay","Integrated FDC","Integrated Pay/FDC";
        }
        field(52; "TP/Date of Last Change"; Date)
        {
            Caption = 'TP/Date of Last Change';
        }
        field(53; "TP/Time of Last Change"; Time)
        {
            Caption = 'TP/Time of Last Change';
        }
        field(54; "TP/User No. of Last Change"; Code[50])
        {
            Caption = 'TP/User No. of Last Change';
            TableRelation = "User Line/T"."User No.";
        }
        field(55; "TP/Date of Back Calculation"; Date)
        {
            Caption = 'TP/Date of Back Calculation';
        }
        field(56; "TP/Cause of Deviation"; Text[80])
        {
            Caption = 'TP/Cause of Deviation';
        }
        field(57; "TP/Remark"; Text[80])
        {
            Caption = 'TP/Remark';
        }
        field(58; "TP/Rounding Group No."; Code[20])
        {
            Caption = 'TP/Rounding Group No.';
            TableRelation = "Rounding Group/T"."No.";
        }
        field(59; "IE/Rounding Object inactiv"; Boolean)
        {
            Caption = 'IE/Rounding Object inactiv';
        }
        field(60; "Attending Physician"; Text[80])
        {
            Caption = 'Attending Physician';
        }
        field(61; Faculty; Text[80])
        {
            Caption = 'Faculty';
        }
        field(62; "Cause of Absence Remark 1"; Text[80])
        {
            Caption = 'Cause of Absence Remark 1';
        }
        field(63; "Cause of Absence Remark 2"; Text[80])
        {
            Caption = 'Cause of Absence Remark 2';
        }
        field(64; "Cause of Absence Remark 3"; Text[80])
        {
            Caption = 'Cause of Absence Remark 3';
        }
        field(65; "TP/CASE Inactive 1"; Code[10])
        {
            Caption = 'TP/CASE Inactive 1';
            TableRelation = "CASE/T"."No.";
        }
        field(66; "TP/CASE Inactive 2"; Code[10])
        {
            Caption = 'TP/CASE Inactive 2';
            TableRelation = "CASE/T"."No.";
        }
        field(67; "TP/CASE Inactive 3"; Code[10])
        {
            Caption = 'TP/CASE Inactive 3';
            TableRelation = "CASE/T"."No.";
        }
        field(68; "TP/CASE Inactive 4"; Code[10])
        {
            Caption = 'TP/CASE Inactive 4';
            TableRelation = "CASE/T"."No.";
        }
        field(69; "TC/Clocking Status finished"; Boolean)
        {
            Caption = 'TC/Clocking Status finished';
        }
        field(70; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(71; "Date of Last Change"; Date)
        {
            Caption = 'Date of Last Change';
        }
        field(72; "Time of Last Change"; Time)
        {
            Caption = 'Time of Last Change';
        }
        field(73; "User No. of Last Change"; Code[50])
        {
            Caption = 'User No. of Last Change';
            TableRelation = "User Line/T"."User No.";
        }
        field(74; "TC/User No. of Last Change"; Code[50])
        {
            Caption = 'TC/User No. of Last Change';
            TableRelation = "User Line/T"."User No.";
        }
        field(75; "TP/Time Grid No. Supplement"; Code[10])
        {
            Caption = 'TP/Time Grid No. Supplement';
            TableRelation = "Time Grid/T"."No.";
        }
        field(76; "TP/Time Grid Descr. Supplement"; Text[10])
        {
            CalcFormula = Lookup ("Time Grid/T"."Description 2" WHERE ("No." = FIELD ("TP/Time Grid No. Supplement")));
            Caption = 'TP/Time Grid Descr. Supplement';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77; "Absent Day anonymous"; Text[10])
        {
            Caption = 'Absent Day anonymous';
        }
        field(78; "Absent Day 2"; Text[10])
        {
            Caption = 'Absent Day 2';
        }
        field(79; "DS/User No. Balance calc."; Code[50])
        {
            Caption = 'DS/User No. Balance calc.';
            TableRelation = "User Line/T"."User No.";
        }
        field(80; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(81; "Task No."; Code[20])
        {
            Caption = 'Task No.';
        }
        field(82; "Reference No. Absence.Appl."; Integer)
        {
            Caption = 'Reference No. Absence.Appl.';
        }
        field(83; "Dimension 1"; Code[20])
        {
            Caption = 'Dimension 1';
        }
        field(84; "Dimension 2"; Code[20])
        {
            Caption = 'Dimension 2';
        }
        field(85; "Dimension 3"; Code[20])
        {
            Caption = 'Dimension 3';
        }
        field(86; "Dimension 4"; Code[20])
        {
            Caption = 'Dimension 4';
        }
        field(87; "TP/Planning Time Grid No."; Code[10])
        {
            Caption = 'TP/Planning Time Grid No.';
            TableRelation = "Time Grid/T"."No.";
        }
        field(88; "TP/Planning Time Grid Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Grid/T"."Description 2" WHERE ("No." = FIELD ("TP/Planning Time Grid No.")));
            Caption = 'TP/Planning Time Grid Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(89; "TP/Preprocessing Cancel"; Boolean)
        {
            Caption = 'TP/Preprocessing Cancel';
        }
        field(90; Weekday; Text[30])
        {
            CalcFormula = Lookup (Date."Period Name" WHERE ("Period Type" = CONST (Date),
                                                           "Period Start" = FIELD ("Current Date")));
            Caption = 'Weekday';
            Editable = false;
            FieldClass = FlowField;
        }
        field(91; "Absent Day Character"; Text[2])
        {
            Caption = 'Absent Day Character';
        }
        field(92; "Day Object Symbol"; Text[10])
        {
            Caption = 'Day Object Symbol';
        }
        field(93; "No. Early Shift"; Integer)
        {
            Caption = 'No. Early Shift';
        }
        field(94; "No. Late Shift"; Integer)
        {
            Caption = 'No. Late Shift';
        }
        field(95; "No. Night Shift"; Integer)
        {
            Caption = 'No. Night Shift';
        }
        field(96; "No. Special Shift"; Integer)
        {
            Caption = 'No. Special Shift';
        }
        field(97; "Day Object No."; Code[10])
        {
            Caption = 'Day Object No.';
            TableRelation = "Day Object/T"."No.";
        }
        field(98; "Target Time"; Text[30])
        {
            Caption = 'Target Time';
        }
        field(99; "Normal Shift Number"; Integer)
        {
            Caption = 'Normal Shift Number';
        }
        field(100; "TP/Break Object 1"; Code[10])
        {
            Caption = 'TP/Break Object 1';
            TableRelation = "Break Object/T"."No.";
        }
        field(101; "TP/Break Object 2"; Code[10])
        {
            Caption = 'TP/Break Object 2';
            TableRelation = "Break Object/T"."No.";
        }
        field(102; "TP/Break Object 3"; Code[10])
        {
            Caption = 'TP/Break Object 3';
            TableRelation = "Break Object/T"."No.";
        }
        field(103; "TP/Break Object 4"; Code[10])
        {
            Caption = 'TP/Break Object 4';
            TableRelation = "Break Object/T"."No.";
        }
        field(104; "TP/Break Object processed 1"; Boolean)
        {
            Caption = 'TP/Break Object processed 1';
        }
        field(105; "TP/Break Object processed 2"; Boolean)
        {
            Caption = 'TP/Break Object processed 2';
        }
        field(106; "TP/Break Object processed 3"; Boolean)
        {
            Caption = 'TP/Break Object processed 3';
        }
        field(107; "TP/Break Object processed 4"; Boolean)
        {
            Caption = 'TP/Break Object processed 4';
        }
        field(110; "TP/Break Balance Inactive"; Boolean)
        {
            Caption = 'TP/Break Balance Inactive';
        }
        field(111; "TP/Target Break Begin Clock. 1"; Time)
        {
            Caption = 'TP/Target Break Begin Clock. 1';
        }
        field(112; "TP/Target Break Begin Ref. 1"; Code[1])
        {
            Caption = 'TP/Target Break Begin Ref. 1';
        }
        field(113; "TP/Target Break End Clock. 1"; Time)
        {
            Caption = 'TP/Target Break End Clock. 1';
        }
        field(114; "TP/Target Break End Ref. 1"; Code[1])
        {
            Caption = 'TP/Target Break End Ref. 1';
        }
        field(115; "TP/Target Break Minutes 1"; Integer)
        {
            Caption = 'TP/Target Break Minutes 1';
        }
        field(116; "TP/Target Break Begin Clock. 2"; Time)
        {
            Caption = 'TP/Target Break Begin Clock. 2';
        }
        field(117; "TP/Target Break Begin Ref. 2"; Code[1])
        {
            Caption = 'TP/Target Break Begin Ref. 2';
        }
        field(118; "TP/Target Break End Clock. 2"; Time)
        {
            Caption = 'TP/Target Break End Clock. 2';
        }
        field(119; "TP/Target Break End Ref. 2"; Code[1])
        {
            Caption = 'TP/Target Break End Ref. 2';
        }
        field(120; "TP/Target Break Minutes 2"; Integer)
        {
            Caption = 'TP/Target Break Minutes 2';
        }
        field(121; "TP/Target Break Begin Clock. 3"; Time)
        {
            Caption = 'TP/Target Break Begin Clock. 3';
        }
        field(122; "TP/Target Break Begin Ref. 3"; Code[1])
        {
            Caption = 'TP/Target Break Begin Ref. 3';
        }
        field(123; "TP/Target Break End Clock. 3"; Time)
        {
            Caption = 'TP/Target Break End Clock. 3';
        }
        field(124; "TP/Target Break End Ref. 3"; Code[1])
        {
            Caption = 'TP/Target Break End Ref. 3';
        }
        field(125; "TP/Target Break Minutes 3"; Integer)
        {
            Caption = 'TP/Target Break Minutes 3';
        }
        field(126; "TP/Target Break Begin Clock. 4"; Time)
        {
            Caption = 'TP/Target Break Begin Clock. 4';
        }
        field(127; "TP/Target Break Begin Ref. 4"; Code[1])
        {
            Caption = 'TP/Target Break Begin Ref. 4';
        }
        field(128; "TP/Target Break End Clock. 4"; Time)
        {
            Caption = 'TP/Target Break End Clock. 4';
        }
        field(129; "TP/Target Break End Ref. 4"; Code[1])
        {
            Caption = 'TP/Target Break End Ref. 4';
        }
        field(130; "TP/Target Break Minutes 4"; Integer)
        {
            Caption = 'TP/Target Break Minutes 4';
        }
        field(131; "Day Object No. - Plan B"; Code[10])
        {
            Caption = 'Day Object No. - Plan B';
            TableRelation = "Day Object/T"."No.";
        }
        field(132; "Day Object Descr. - Plan B"; Text[10])
        {
            CalcFormula = Lookup ("Day Object/T"."Description 2" WHERE ("No." = FIELD ("Day Object No. - Plan B")));
            Caption = 'Day Object Descr. - Plan B';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140; "TP/Coming Target/Pos. 1"; Integer)
        {
            Caption = 'TP/Coming Target/Pos. 1';
        }
        field(141; "TP/Coming Target/Pos. 2"; Integer)
        {
            Caption = 'TP/Coming Target/Pos. 2';
        }
        field(142; "TP/Leaving Target/Pos. 1"; Integer)
        {
            Caption = 'TP/Leaving Target/Pos. 1';
        }
        field(143; "TP/Leaving Target/Pos. 2"; Integer)
        {
            Caption = 'TP/Leaving Target/Pos. 2';
        }
        field(145; "Planned Begin Clocking"; Time)
        {
            Caption = 'Planned Begin Clocking';
        }
        field(146; "Planned Begin Reference"; Code[1])
        {
            Caption = 'Planned Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(147; "Planned End Clocking"; Time)
        {
            Caption = 'Planned End Clocking';
        }
        field(148; "Planned End Reference"; Code[1])
        {
            Caption = 'Planned End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(150; "TA Symbol Absent Day 1"; Text[3])
        {
            CalcFormula = Lookup ("Time Account/T".Symbol WHERE ("No." = FIELD ("TA No. Absent Day 1")));
            Caption = 'TA Symbol Absent Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(151; "TA Symbol Absent Day 2"; Text[3])
        {
            CalcFormula = Lookup ("Time Account/T".Symbol WHERE ("No." = FIELD ("TA No. Absent Day 2")));
            Caption = 'TA Symbol Absent Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(152; "TA Symbol Absent Day 3"; Text[3])
        {
            CalcFormula = Lookup ("Time Account/T".Symbol WHERE ("No." = FIELD ("TA No. Absent Day 3")));
            Caption = 'TA Symbol Absent Day 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(153; "TA Symbol Absent Day 4"; Text[3])
        {
            CalcFormula = Lookup ("Time Account/T".Symbol WHERE ("No." = FIELD ("TA No. Absent Day 4")));
            Caption = 'TA Symbol Absent Day 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(154; "TA No. Public Holiday"; Code[10])
        {
            Caption = 'TA No. Public Holiday';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Public Holiday"));
        }
        field(155; "TP/Public Holiday Inactive"; Boolean)
        {
            Caption = 'TP/Public Holiday Inactive';
        }
        field(160; "Medical Statement"; Option)
        {
            Caption = 'Medical Statement';
            OptionCaption = ' ,First Statement, Follow-up Statement';
            OptionMembers = " ","First Statement"," Follow-up Statement";
        }
        field(161; "Date of Issue"; Date)
        {
            Caption = 'Date of Issue';
        }
        field(162; "Cause of Absence Index"; Integer)
        {
            Caption = 'Cause of Absence Index';
        }
        field(163; "Cause of Absence Process"; Integer)
        {
            Caption = 'Cause of Absence Process';
        }
        field(164; "From Date Cause of Abs. Proc."; Date)
        {
            Caption = 'From Date Cause of Abs. Proc.';
        }
        field(165; "To Date Cause of Abs. Proc."; Date)
        {
            Caption = 'To Date Cause of Abs. Proc.';
        }
        field(170; "TP/Unpaired Coming/Leaving"; Boolean)
        {
            Caption = 'TP/Unpaired Coming/Leaving';
        }
        field(171; "TP/Unpaired Errand"; Boolean)
        {
            Caption = 'TP/Unpaired Errand';
        }
        field(172; "TP/Unpaired Break"; Boolean)
        {
            Caption = 'TP/Unpaired Break';
        }
        field(173; "TP/Illogical Coming/Leaving"; Boolean)
        {
            Caption = 'TP/Illogical Coming/Leaving';
        }
        field(174; "TP/Time Account Exceeded"; Boolean)
        {
            Caption = 'TP/Time Account Exceeded';
        }
        field(175; "TP/Present on Absent Day"; Boolean)
        {
            Caption = 'TP/Present on Absent Day';
        }
        field(176; "TP/Department invalid"; Boolean)
        {
            Caption = 'TP/Department invalid';
        }
        field(177; "TP/FDC Clocking invalid"; Boolean)
        {
            Caption = 'TP/FDC Clocking invalid';
        }
        field(178; "TP/Save FDC Clocking illogical"; Boolean)
        {
            Caption = 'TP/Save FDC Clocking illogical';
        }
        field(179; "TP/CASE-Procedure"; Boolean)
        {
            Caption = 'TP/CASE-Procedure';
        }
        field(180; "TP/Unpaired Info"; Boolean)
        {
            Caption = 'TP/Unpaired Info';
        }
        field(181; "TP/Automatic Inactive"; Boolean)
        {
            Caption = 'TP/Automatic Inactive';
        }
        field(182; "TP/Preprocessing Record Locked"; Boolean)
        {
            Caption = 'TP/Preprocessing Record Locked';
        }
        field(190; "TP/CASE-Procedure Number 1"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 1';
            TableRelation = "CASE/T"."No.";
        }
        field(191; "TP/CASE-Procedure Number 2"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 2';
            TableRelation = "CASE/T"."No.";
        }
        field(192; "TP/CASE-Procedure Number 3"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 3';
            TableRelation = "CASE/T"."No.";
        }
        field(193; "TP/CASE-Procedure Number 4"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 4';
            TableRelation = "CASE/T"."No.";
        }
        field(194; "TP/CASE-Procedure Number 5"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 5';
            TableRelation = "CASE/T"."No.";
        }
        field(195; "TP/CASE-Procedure Number 6"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 6';
            TableRelation = "CASE/T"."No.";
        }
        field(196; "TP/CASE-Procedure Number 7"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 7';
            TableRelation = "CASE/T"."No.";
        }
        field(197; "TP/CASE-Procedure Number 8"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 8';
            TableRelation = "CASE/T"."No.";
        }
        field(198; "TP/CASE-Procedure Number 9"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 9';
            TableRelation = "CASE/T"."No.";
        }
        field(199; "TP/CASE-Procedure Number 10"; Code[10])
        {
            Caption = 'TP/CASE-Procedure Number 10';
            TableRelation = "CASE/T"."No.";
        }
        field(200; "TP/Rounding Object Active 1"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 1';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(201; "TP/Rounding Object Active 2"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 2';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(202; "TP/Rounding Object Active 3"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 3';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(203; "TP/Rounding Object Active 4"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 4';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(204; "TP/Rounding Object Active 5"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 5';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(205; "TP/Rounding Object Active 6"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 6';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(206; "TP/Rounding Object Active 7"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 7';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(207; "TP/Rounding Object Active 8"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 8';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(208; "TP/Rounding Object Active 9"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 9';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(209; "TP/Rounding Object Active 10"; Code[20])
        {
            Caption = 'TP/Rounding Object Active 10';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(220; "TP/Rounding Object Active"; Boolean)
        {
            Caption = 'TP/Rounding Object Active';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Current Date")
        {
            Clustered = true;
        }
        key(Key2; "Employee No.", "Cause of Absence Index", "Cause of Absence Process")
        {
        }
    }

    fieldgroups
    {
    }
}

