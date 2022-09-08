table 5056323 "Time Clocking/T"
{
    Caption = 'Time Clocking';
    Description = 'GrTimeClock';

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
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(4; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Weekday; Text[30])
        {
            CalcFormula = Lookup (Date."Period Name" WHERE ("Period Type" = CONST (Date),
                                                           "Period Start" = FIELD ("Current Date")));
            Caption = 'Weekday';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Coming Clocking Original"; Time)
        {
            Caption = 'Coming Clocking Original';
        }
        field(11; "Coming Ref. Original"; Code[1])
        {
            Caption = 'Coming Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(12; "Coming Clocking Actual"; Time)
        {
            Caption = 'Coming Clocking Actual';
        }
        field(13; "Coming Ref. Actual"; Code[1])
        {
            Caption = 'Coming Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(14; "Coming Clocking Target"; Time)
        {
            Caption = 'Coming Clocking Target';
        }
        field(15; "Coming Ref. Target"; Code[1])
        {
            Caption = 'Coming Ref. Target';
            CharAllowed = 'VVFFvvff';
        }
        field(16; "Coming Source"; Option)
        {
            Caption = 'Coming Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(17; "Coming Terminal No."; Code[10])
        {
            Caption = 'Coming Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(18; "Coming Clocking Manual"; Time)
        {
            Caption = 'Coming Clocking Manual';
        }
        field(19; "Coming Ref. Manual"; Code[1])
        {
            Caption = 'Coming Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(20; "Leaving Clocking Original"; Time)
        {
            Caption = 'Leaving Clocking Original';
        }
        field(21; "Leaving Ref. Original"; Code[1])
        {
            Caption = 'Leaving Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(22; "Leaving Clocking Actual"; Time)
        {
            Caption = 'Leaving Clocking Actual';
        }
        field(23; "Leaving Ref. Actual"; Code[1])
        {
            Caption = 'Leaving Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(24; "Leaving Clocking Target"; Time)
        {
            Caption = 'Leaving Clocking Target';
        }
        field(25; "Leaving Ref. Target"; Code[1])
        {
            Caption = 'Leaving Ref. Target';
            CharAllowed = 'VVFFvvff';
        }
        field(26; "Leaving Source"; Option)
        {
            Caption = 'Leaving Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(27; "Leaving Terminal No."; Code[10])
        {
            Caption = 'Leaving Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(28; "Leaving Clocking Manual"; Time)
        {
            Caption = 'Leaving Clocking Manual';
        }
        field(29; "Leaving Ref. Manual"; Code[1])
        {
            Caption = 'Leaving Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(30; "Errand Clocking Original"; Time)
        {
            Caption = 'Errand Clocking Original';
        }
        field(31; "Errand Ref. Original"; Code[1])
        {
            Caption = 'Errand Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(32; "Errand Clocking Actual"; Time)
        {
            Caption = 'Errand Clocking Actual';
        }
        field(33; "Errand Ref. Actual"; Code[1])
        {
            Caption = 'Errand Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(34; "Errand Source"; Option)
        {
            Caption = 'Errand Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(35; "Errand Terminal No."; Code[10])
        {
            Caption = 'Errand Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(36; "Errand Clocking Manual"; Time)
        {
            Caption = 'Errand Clocking Manual';
        }
        field(37; "Errand Ref. Manual"; Code[1])
        {
            Caption = 'Errand Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(40; "Department Clocking Original"; Time)
        {
            Caption = 'Department Clocking Original';
        }
        field(41; "Department Ref. Original"; Code[1])
        {
            Caption = 'Department Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(42; "Department Clocking Actual"; Time)
        {
            Caption = 'Department Clocking Actual';
        }
        field(43; "Department Ref. Actual"; Code[1])
        {
            Caption = 'Department Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(44; "Department Source"; Option)
        {
            Caption = 'Department Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(45; "Department Terminal No."; Code[10])
        {
            Caption = 'Department Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(46; "Department Entry"; Code[10])
        {
            Caption = 'Department Entry';
        }
        field(47; "Department Clocking Manual"; Time)
        {
            Caption = 'Department Clocking Manual';
        }
        field(48; "Department Ref. Manual"; Code[1])
        {
            Caption = 'Department Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(49; "Department Entry Manual"; Code[10])
        {
            Caption = 'Department Entry Manual';
        }
        field(50; "Break Clocking Original"; Time)
        {
            Caption = 'Break Clocking Original';
        }
        field(51; "Break Ref. Original"; Code[1])
        {
            Caption = 'Break Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(52; "Break Clocking Actual"; Time)
        {
            Caption = 'Break Clocking Actual';
        }
        field(53; "Break Ref. Actual"; Code[1])
        {
            Caption = 'Break Ref. Actual';
        }
        field(54; "Break Entry"; Code[10])
        {
            Caption = 'Break Entry';
        }
        field(56; "Break Source"; Option)
        {
            Caption = 'Break Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(57; "Break Terminal No."; Code[10])
        {
            Caption = 'Break Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(58; "Break Clocking Manual"; Time)
        {
            Caption = 'Break Clocking Manual';
        }
        field(59; "Break Ref. Manual"; Code[1])
        {
            Caption = 'Break Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(60; "Access Clocking Original"; Time)
        {
            Caption = 'Access Clocking Original';
        }
        field(61; "Access Ref. Original"; Code[1])
        {
            Caption = 'Access Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(62; "Access Clocking Actual"; Time)
        {
            Caption = 'Access Clocking Actual';
        }
        field(63; "Access Ref. Actual"; Code[1])
        {
            Caption = 'Access Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(64; "Access Source"; Option)
        {
            Caption = 'Access Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(65; "Access Terminal No."; Code[10])
        {
            Caption = 'Access Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(66; "Access Entry"; Code[10])
        {
            Caption = 'Access Entry';
        }
        field(70; "Query Clocking Original"; Time)
        {
            Caption = 'Query Clocking Original';
        }
        field(71; "Query Ref. Original"; Code[1])
        {
            Caption = 'Query Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(72; "Query Clocking Actual"; Time)
        {
            Caption = 'Query Clocking Actual';
        }
        field(73; "Query Ref. Actual"; Code[1])
        {
            Caption = 'Query Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(74; "Query Source"; Option)
        {
            Caption = 'Query Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(75; "Query Terminal No."; Code[10])
        {
            Caption = 'Query Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(80; "Info Clocking Original"; Time)
        {
            Caption = 'Info Clocking Original';
        }
        field(81; "Info Ref. Original"; Code[1])
        {
            Caption = 'Info Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(82; "Info Clocking Actual"; Time)
        {
            Caption = 'Info Clocking Actual';
        }
        field(83; "Info Ref. Actual"; Code[1])
        {
            Caption = 'Info Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(84; "Info Source"; Option)
        {
            Caption = 'Info Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(85; "Info Terminal No."; Code[10])
        {
            Caption = 'Info Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(86; "Info Entry"; Code[10])
        {
            Caption = 'Info Entry';
            TableRelation = "Time Account/T"."No.";
        }
        field(90; "Order Begin Clock. Orig."; Time)
        {
            Caption = 'Order Begin Clock. Orig.';
        }
        field(91; "Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(92; "Order Begin Clock. Actual"; Time)
        {
            Caption = 'Order Begin Clock. Actual';
        }
        field(93; "Order Begin Ref. Actual"; Code[1])
        {
            Caption = 'Order Begin Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(94; "Order Begin Source"; Option)
        {
            Caption = 'Order Begin Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(95; "Order Begin Terminal No."; Code[10])
        {
            Caption = 'Order Begin Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(96; "Order Begin Entry"; Code[20])
        {
            Caption = 'Order Begin Entry';
        }
        field(97; "Task Begin Entry"; Code[20])
        {
            Caption = 'Task Begin Entry';
        }
        field(100; "Order End Clock. Orig."; Time)
        {
            Caption = 'Order End Clock. Orig.';
        }
        field(101; "Order End Ref. Orig."; Code[1])
        {
            Caption = 'Order End Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(102; "Order End Clock. Actual"; Time)
        {
            Caption = 'Order End Clock. Actual';
        }
        field(103; "Order End Ref. Actual"; Code[1])
        {
            Caption = 'Order End Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(104; "Order End Source"; Option)
        {
            Caption = 'Order End Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(105; "Order End Terminal No."; Code[10])
        {
            Caption = 'Order End Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(106; "Order End Entry"; Code[20])
        {
            Caption = 'Order End Entry';
        }
        field(107; "Task End Entry"; Code[20])
        {
            Caption = 'Task End Entry';
        }
        field(110; "Target Time"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                         "Current Date" = FIELD ("Current Date"),
                                                                         "TA Class (Employee Info)" = CONST ("Target Time")));
            Caption = 'Target Time';
            Editable = false;
            FieldClass = FlowField;
        }
        field(111; Present; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                         "Current Date" = FIELD ("Current Date"),
                                                                         "TA Class (Employee Info)" = CONST (Presence)));
            Caption = 'Present';
            Editable = false;
            FieldClass = FlowField;
        }
        field(112; Overtime; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                         "Current Date" = FIELD ("Current Date"),
                                                                         "TA Class (Employee Info)" = CONST (Overtime)));
            Caption = 'Overtime';
            Editable = false;
            FieldClass = FlowField;
        }
        field(113; "Absent Time"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                         "Current Date" = FIELD ("Current Date"),
                                                                         "TA Class (Employee Info)" = CONST ("Absent Time")));
            Caption = 'Absent Time';
            Editable = false;
            FieldClass = FlowField;
        }
        field(114; "Value Car. Fwd."; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                         "Current Date" = FIELD ("Current Date"),
                                                                         "TA Class (Employee Info)" = CONST ("Value Car. Fwd.")));
            Caption = 'Value Car. Fwd.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(115; Balance; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                         "Current Date" = FIELD ("Current Date"),
                                                                         "TA Class (Employee Info)" = CONST (Balance)));
            Caption = 'Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(116; "Absent Day"; Text[10])
        {
            CalcFormula = Lookup ("Time Planning/T"."Absent Day" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                       "Current Date" = FIELD ("Current Date")));
            Caption = 'Absent Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(117; "TA Descr. Info Entry"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("Info Entry")));
            Caption = 'TA Descr. Info Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 1 Begin Entry';
        }
        field(121; "Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 2 Begin Entry';
        }
        field(122; "Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 3 Begin Entry';
        }
        field(123; "Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 4 Begin Entry';
        }
        field(125; "Dimension 1 End Entry"; Code[20])
        {
            Caption = 'Dimension 1 End Entry';
        }
        field(126; "Dimension 2 End Entry"; Code[20])
        {
            Caption = 'Dimension 2 End Entry';
        }
        field(127; "Dimension 3 End Entry"; Code[20])
        {
            Caption = 'Dimension 3 End Entry';
        }
        field(128; "Dimension 4 End Entry"; Code[20])
        {
            Caption = 'Dimension 4 End Entry';
        }
        field(130; "TA No. Overtime"; Code[10])
        {
            Caption = 'TA No. Overtime';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Overtime));
        }
        field(131; "TA No. Absences"; Code[10])
        {
            Caption = 'TA No. Absences';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Time"));
        }
        field(132; "Time Acc. No. - Absent Day"; Code[10])
        {
            Caption = 'Time Acc. No. - Absent Day';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(133; "Day Object No."; Code[10])
        {
            Caption = 'Day Object No.';
            TableRelation = "Day Object/T"."No.";
        }
        field(140; "Delete Coming"; Boolean)
        {
            Caption = 'Delete Coming';
        }
        field(141; "Delete Leaving"; Boolean)
        {
            Caption = 'Delete Leaving';
        }
        field(142; "Delete Errand"; Boolean)
        {
            Caption = 'Delete Errand';
        }
        field(143; "Delete Department"; Boolean)
        {
            Caption = 'Delete Department';
        }
        field(144; "Delete Break"; Boolean)
        {
            Caption = 'Delete Break';
        }
        field(145; "Delete Absent Day"; Boolean)
        {
            Caption = 'Delete Absent Day';
        }
        field(149; "TP/Cause of Deviation"; Text[80])
        {
            CalcFormula = Lookup ("Time Planning/T"."TP/Cause of Deviation" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                                  "Current Date" = FIELD ("Current Date")));
            Caption = 'TP/Cause of Deviation';
            Editable = false;
            FieldClass = FlowField;
        }
        field(150; "TP/Clocking Status"; Option)
        {
            CalcFormula = Lookup ("Time Planning/T"."TP/Clocking Status" WHERE ("Employee No." = FIELD ("Employee No."),
                                                                               "Current Date" = FIELD ("Current Date")));
            Caption = 'TP/Clocking Status';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Unfinished,Deviating,OK,Processed,Manual';
            OptionMembers = Unfinished,Deviating,OK,Processed,Manual;
        }
        field(151; "Department No."; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Department No." WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Department No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(152; "Division No."; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Division No." WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Division No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(153; "Activity No."; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Activity No." WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Activity No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(154; "Pay Group No."; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Pay Group No." WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Pay Group No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(155; "Company No."; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Company No." WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Company No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(156; "Group No. 1"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Group No. 1" WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Group No. 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(157; "Group No. 2"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Group No. 2" WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Group No. 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(158; "Group No. 3"; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Group No. 3" WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Group No. 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(159; "Time Object No."; Code[10])
        {
            CalcFormula = Lookup ("Employee/T"."Time Object No." WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Time Object No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160; "Rounding Object Inactive 1"; Code[20])
        {
            Caption = 'Rounding Object Inactive 1';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(161; "Rounding Object Inactive 2"; Code[20])
        {
            Caption = 'Rounding Object Inactive 2';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(162; "Rounding Object Inactive 3"; Code[20])
        {
            Caption = 'Rounding Object Inactive 3';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(163; "Rounding Object Inactive 4"; Code[20])
        {
            Caption = 'Rounding Object Inactive 4';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(164; "Rounding Group No."; Code[20])
        {
            Caption = 'Rounding Group No.';
            TableRelation = "Rounding Group/T"."No.";
        }
        field(170; "Record Corrected"; Boolean)
        {
            Caption = 'Record Corrected';
        }
        field(180; "FDC-Barcode"; Text[50])
        {
            Caption = 'FDC-Barcode';
        }
        field(190; "Order Begin Clock. Orig. PAR"; Time)
        {
            Caption = 'Order Begin Clock. Orig. PAR';
        }
        field(191; "Order Begin Ref. Orig. PAR"; Code[1])
        {
            Caption = 'Order Begin Ref. Orig. PAR';
            CharAllowed = 'VVFFvvff';
        }
        field(192; "Order Begin Clock. Actual PAR"; Time)
        {
            Caption = 'Order Begin Clock. Actual PAR';
        }
        field(193; "Order Begin Ref. Actual PAR"; Code[1])
        {
            Caption = 'Order Begin Ref. Actual PAR';
            CharAllowed = 'VVFFvvff';
        }
        field(194; "Order Begin Source PAR"; Option)
        {
            Caption = 'Order Begin Source PAR';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(195; "Order Begin Terminal No. PAR"; Code[10])
        {
            Caption = 'Order Begin Terminal No. PAR';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(196; "Order Begin Entry PAR"; Code[20])
        {
            Caption = 'Order Begin Entry PAR';
        }
        field(197; "Task Begin Entry PAR"; Code[20])
        {
            Caption = 'Task Begin Entry PAR';
        }
        field(200; "Order End Clock. Orig. PAR"; Time)
        {
            Caption = 'Order End Clock. Orig. PAR';
        }
        field(201; "Order End Ref. Orig. PAR"; Code[1])
        {
            Caption = 'Order End Ref. Orig. PAR';
            CharAllowed = 'VVFFvvff';
        }
        field(202; "Order End Clock. Actual PAR"; Time)
        {
            Caption = 'Order End Clock. Actual PAR';
        }
        field(203; "Order End Ref. Actual PAR"; Code[1])
        {
            Caption = 'Order End Ref. Actual PAR';
            CharAllowed = 'VVFFvvff';
        }
        field(204; "Order End Source PAR"; Option)
        {
            Caption = 'Order End Source PAR';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(205; "Order End Terminal No. PAR"; Code[10])
        {
            Caption = 'Order End Terminal No. PAR';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(206; "Order End Entry PAR"; Code[20])
        {
            Caption = 'Order End Entry PAR';
        }
        field(207; "Task End Entry PAR"; Code[20])
        {
            Caption = 'Task End Entry PAR';
        }
        field(210; "Dimension 1 Begin Entry PAR"; Code[20])
        {
            Caption = 'Dimension 1 Begin Entry PAR';
        }
        field(211; "Dimension 2 Begin Entry PAR"; Code[20])
        {
            Caption = 'Dimension 2 Begin Entry PAR';
        }
        field(212; "Dimension 3 Begin Entry PAR"; Code[20])
        {
            Caption = 'Dimension 3 Begin Entry PAR';
        }
        field(213; "Dimension 4 Begin Entry PAR"; Code[20])
        {
            Caption = 'Dimension 4 Begin Entry PAR';
        }
        field(214; "Dimension 1 End Entry PAR"; Code[20])
        {
            Caption = 'Dimension 1 End Entry PAR';
        }
        field(215; "Dimension 2 End Entry PAR"; Code[20])
        {
            Caption = 'Dimension 2 End Entry PAR';
        }
        field(216; "Dimension 3 End Entry PAR"; Code[20])
        {
            Caption = 'Dimension 3 End Entry PAR';
        }
        field(217; "Dimension 4 End Entry PAR"; Code[20])
        {
            Caption = 'Dimension 4 End Entry PAR';
        }
        field(220; "Order Begin Clock. Orig. COL"; Time)
        {
            Caption = 'Order Begin Clock. Orig. COL';
        }
        field(221; "Order Begin Ref. Orig. COL"; Code[1])
        {
            Caption = 'Order Begin Ref. Orig. COL';
            CharAllowed = 'VVFFvvff';
        }
        field(222; "Order Begin Clock. Actual COL"; Time)
        {
            Caption = 'Order Begin Clock. Actual COL';
        }
        field(223; "Order Begin Ref. Actual COL"; Code[1])
        {
            Caption = 'Order Begin Ref. Actual COL';
            CharAllowed = 'VVFFvvff';
        }
        field(224; "Order Begin Source COL"; Option)
        {
            Caption = 'Order Begin Source COL';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(225; "Order Begin Terminal No. COL"; Code[10])
        {
            Caption = 'Order Begin Terminal No. COL';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(226; "Order Begin Entry COL"; Code[20])
        {
            Caption = 'Order Begin Entry COL';
        }
        field(227; "Task Begin Entry COL"; Code[20])
        {
            Caption = 'Task Begin Entry COL';
        }
        field(228; "Order End Clock. Orig. COL"; Time)
        {
            Caption = 'Order End Clock. Orig. COL';
        }
        field(229; "Order End Ref. Orig. COL"; Code[1])
        {
            Caption = 'Order End Ref. Orig. COL';
            CharAllowed = 'VVFFvvff';
        }
        field(230; "Order End Clock. Actual COL"; Time)
        {
            Caption = 'Order End Clock. Actual COL';
        }
        field(231; "Order End Ref. Actual COL"; Code[1])
        {
            Caption = 'Order End Ref. Actual COL';
            CharAllowed = 'VVFFvvff';
        }
        field(232; "Order End Source COL"; Option)
        {
            Caption = 'Order End Source COL';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(233; "Order End Terminal No. COL"; Code[10])
        {
            Caption = 'Order End Terminal No. COL';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(234; "Order End Entry COL"; Code[20])
        {
            Caption = 'Order End Entry COL';
        }
        field(235; "Task End Entry COL"; Code[20])
        {
            Caption = 'Task End Entry COL';
        }
        field(236; "Dimension 1 Begin Entry COL"; Code[20])
        {
            Caption = 'Dimension 1 Begin Entry COL';
        }
        field(237; "Dimension 2 Begin Entry COL"; Code[20])
        {
            Caption = 'Dimension 2 Begin Entry COL';
        }
        field(238; "Dimension 3 Begin Entry COL"; Code[20])
        {
            Caption = 'Dimension 3 Begin Entry COL';
        }
        field(239; "Dimension 4 Begin Entry COL"; Code[20])
        {
            Caption = 'Dimension 4 Begin Entry COL';
        }
        field(240; "Dimension 1 End Entry COL"; Code[20])
        {
            Caption = 'Dimension 1 End Entry COL';
        }
        field(241; "Dimension 2 End Entry COL"; Code[20])
        {
            Caption = 'Dimension 2 End Entry COL';
        }
        field(242; "Dimension 3 End Entry COL"; Code[20])
        {
            Caption = 'Dimension 3 End Entry COL';
        }
        field(243; "Dimension 4 End Entry COL"; Code[20])
        {
            Caption = 'Dimension 4 End Entry COL';
        }
        field(250; "Order Description"; Text[50])
        {
            Caption = 'Order Description';
        }
        field(251; "Task Description"; Text[50])
        {
            Caption = 'Task Description';
        }
        field(252; "Dimension 1 Description"; Text[50])
        {
            Caption = 'Dimension 1 Description';
        }
        field(253; "Dimension 2 Description"; Text[50])
        {
            Caption = 'Dimension 2 Description';
        }
        field(254; "Dimension 3 Description"; Text[50])
        {
            Caption = 'Dimension 3 Description';
        }
        field(255; "Dimension 4 Description"; Text[50])
        {
            Caption = 'Dimension 4 Description';
        }
        field(260; "Order Finished Clock. Orig."; Time)
        {
            Caption = 'Order Finished Clock. Orig.';
        }
        field(261; "Order Finished Ref. Orig."; Code[1])
        {
            Caption = 'Order Finished Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(262; "Order Finished Clock. Actual"; Time)
        {
            Caption = 'Order Finished Clock. Actual';
        }
        field(263; "Order Finished Ref. Actual"; Code[1])
        {
            Caption = 'Order Finished Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(264; "Order Finished Source"; Option)
        {
            Caption = 'Order Finished Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(265; "Order Finished Terminal No."; Code[10])
        {
            Caption = 'Order Finished Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(266; "Order Finished Entry"; Code[20])
        {
            Caption = 'Order Finished Entry';
        }
        field(267; "Task Finished Entry"; Code[20])
        {
            Caption = 'Task Finished Entry';
        }
        field(268; "Dimension 1 Finished Entry"; Code[20])
        {
            Caption = 'Dimension 1 Finished Entry';
        }
        field(269; "Dimension 2 Finished Entry"; Code[20])
        {
            Caption = 'Dimension 2 Finished Entry';
        }
        field(270; "Dimension 3 Finished Entry"; Code[20])
        {
            Caption = 'Dimension 3 Finished Entry';
        }
        field(271; "Dimension 4 Finished Entry"; Code[20])
        {
            Caption = 'Dimension 4 Finished Entry';
        }
        field(272; "Status Finished"; Code[1])
        {
            Caption = 'Status Finished';
        }
        field(280; "Order Quantity Clock. Orig."; Time)
        {
            Caption = 'Order Quantity Clock. Orig.';
        }
        field(281; "Order Quantity Ref. Orig."; Code[1])
        {
            Caption = 'Order Quantity Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(282; "Order Quantity Clock. Actual"; Time)
        {
            Caption = 'Order Quantity Clock. Actual';
        }
        field(283; "Order Quantity Ref. Actual"; Code[1])
        {
            Caption = 'Order Quantity Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(284; "Order Quantity Source"; Option)
        {
            Caption = 'Order Quantity Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(285; "Order Quantity Terminal No."; Code[10])
        {
            Caption = 'Order Quantity Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(286; "Order Quantity Entry"; Code[20])
        {
            Caption = 'Order Quantity Entry';
        }
        field(287; "Task Quantity Entry"; Code[20])
        {
            Caption = 'Task Quantity Entry';
        }
        field(288; "Dimension 1 Quantity Entry"; Code[20])
        {
            Caption = 'Dimension 1 Quantity Entry';
        }
        field(289; "Dimension 2 Quantity Entry"; Code[20])
        {
            Caption = 'Dimension 2 Quantity Entry';
        }
        field(290; "Dimension 3 Quantity Entry"; Code[20])
        {
            Caption = 'Dimension 3 Quantity Entry';
        }
        field(291; "Dimension 4 Quantity Entry"; Code[20])
        {
            Caption = 'Dimension 4 Quantity Entry';
        }
        field(292; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(300; "Order Scrap Clock. Orig."; Time)
        {
            Caption = 'Order Scrap Clock. Orig.';
        }
        field(301; "Order Scrap Ref. Orig."; Code[1])
        {
            Caption = 'Order Scrap Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(302; "Order Scrap Clock. Actual"; Time)
        {
            Caption = 'Order Scrap Clock. Actual';
        }
        field(303; "Order Scrap Ref. Actual"; Code[1])
        {
            Caption = 'Order Scrap Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(304; "Order Scrap Source"; Option)
        {
            Caption = 'Order Scrap Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(305; "Order Scrap Terminal No."; Code[10])
        {
            Caption = 'Order Scrap Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(306; "Order Scrap Entry"; Code[20])
        {
            Caption = 'Order Scrap Entry';
        }
        field(307; "Task Scrap Entry"; Code[20])
        {
            Caption = 'Task Scrap Entry';
        }
        field(308; "Dimension 1 Scrap Entry"; Code[20])
        {
            Caption = 'Dimension 1 Scrap Entry';
        }
        field(309; "Dimension 2 Scrap Entry"; Code[20])
        {
            Caption = 'Dimension 2 Scrap Entry';
        }
        field(310; "Dimension 3 Scrap Entry"; Code[20])
        {
            Caption = 'Dimension 3 Scrap Entry';
        }
        field(311; "Dimension 4 Scrap Entry"; Code[20])
        {
            Caption = 'Dimension 4 Scrap Entry';
        }
        field(312; "Quantity Scrap"; Decimal)
        {
            Caption = 'Quantity Scrap';
        }
        field(313; "Code Scrap"; Code[10])
        {
            Caption = 'Code Scrap';
        }
        field(320; "Order Serial/Lot Clock. Orig."; Time)
        {
            Caption = 'Order Serial/Lot Clock. Orig.';
        }
        field(321; "Order Serial/Lot Ref. Orig."; Code[1])
        {
            Caption = 'Order Serial/Lot Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(322; "Order Serial/Lot Clock. Actual"; Time)
        {
            Caption = 'Order Serial/Lot Clock. Actual';
        }
        field(323; "Order Serial/Lot Ref. Actual"; Code[1])
        {
            Caption = 'Order Serial/Lot Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(324; "Order Serial/Lot Source"; Option)
        {
            Caption = 'Order Serial/Lot Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(325; "Order Serial/Lot Terminal No."; Code[10])
        {
            Caption = 'Order Serial/Lot Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(326; "Order Serial/Lot Entry"; Code[20])
        {
            Caption = 'Order Serial/Lot Entry';
        }
        field(327; "Task Serial/Lot Entry"; Code[20])
        {
            Caption = 'Task Serial/Lot Entry';
        }
        field(328; "Dimension 1 Serial/Lot Entry"; Code[20])
        {
            Caption = 'Dimension 1 Serial/Lot Entry';
        }
        field(329; "Dimension 2 Serial/Lot Entry"; Code[20])
        {
            Caption = 'Dimension 2 Serial/Lot Entry';
        }
        field(330; "Dimension 3 Serial/Lot Entry"; Code[20])
        {
            Caption = 'Dimension 3 Serial/Lot Entry';
        }
        field(331; "Dimension 4 Serial/Lot Entry"; Code[20])
        {
            Caption = 'Dimension 4 Serial/Lot Entry';
        }
        field(332; "Serial-No."; Code[20])
        {
            Caption = 'Serial-No.';
        }
        field(333; "Lot-No."; Code[20])
        {
            Caption = 'Lot-No.';
        }
        field(334; "Quantity Serial/Lot"; Decimal)
        {
            Caption = 'Quantity Serial/Lot';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Current Date", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Order Begin Entry", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key3; "Task Begin Entry", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key4; "Dimension 1 Begin Entry", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key5; "Dimension 2 Begin Entry", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key6; "Dimension 3 Begin Entry", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key7; "Dimension 4 Begin Entry", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key8; "Order Begin Entry PAR", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key9; "Task Begin Entry PAR", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key10; "Dimension 1 Begin Entry PAR", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key11; "Dimension 2 Begin Entry PAR", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key12; "Dimension 3 Begin Entry PAR", "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key13; "Dimension 4 Begin Entry PAR", "Employee No.", "Current Date", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

