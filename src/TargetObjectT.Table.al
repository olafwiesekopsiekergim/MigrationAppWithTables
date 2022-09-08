table 5056305 "Target Object/T"
{
    Caption = 'Target Object';
    DataCaptionFields = "No.", Description;
    Description = 'GrTargetObj';

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
        field(4; Symbol; Text[3])
        {
            Caption = 'Symbol';
        }
        field(10; "Target Begin Clocking"; Time)
        {
            Caption = 'Target Begin Clocking';
        }
        field(11; "Target Begin Reference"; Code[1])
        {
            Caption = 'Target Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(12; "Target End Clocking"; Time)
        {
            Caption = 'Target End Clocking';
        }
        field(13; "Target End Reference"; Code[1])
        {
            Caption = 'Target End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(14; "Target Time Hrs."; Decimal)
        {
            Caption = 'Target Time Hrs.';
        }
        field(15; "Target Time Min."; Integer)
        {
            Caption = 'Target Time Min.';
        }
        field(16; "Vacation Hrs. Evaluation"; Decimal)
        {
            Caption = 'Vacation Hrs. Evaluation';
        }
        field(17; "Vacation Min. Evaluation"; Integer)
        {
            Caption = 'Vacation Min. Evaluation';
        }
        field(18; "Evaluate Sick Hours"; Decimal)
        {
            Caption = 'Evaluate Sick Hours';
        }
        field(19; "Evaluate Sick Minutes"; Integer)
        {
            Caption = 'Evaluate Sick Minutes';
        }
        field(20; "Evaluate Absent Days Hours"; Decimal)
        {
            Caption = 'Evaluate Absent Days Hours';
        }
        field(21; "Evaluate Absent Days Minutes"; Integer)
        {
            Caption = 'Evaluate Absent Days Minutes';
        }
        field(26; "Planned Begin Clocking"; Time)
        {
            Caption = 'Planned Begin Clocking';
        }
        field(27; "Planned Begin Reference"; Code[1])
        {
            Caption = 'Planned Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(28; "Planned End Clocking"; Time)
        {
            Caption = 'Planned End Clocking';
        }
        field(29; "Planned End Reference"; Code[1])
        {
            Caption = 'Planned End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(30; "Automatic Begin Clocking"; Time)
        {
            Caption = 'Automatic Begin Clocking';
        }
        field(31; "Automatic Begin Reference"; Code[1])
        {
            Caption = 'Automatic Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(32; "Automatic End Clocking"; Time)
        {
            Caption = 'Automatic End Clocking';
        }
        field(33; "Automatic End Reference"; Code[1])
        {
            Caption = 'Automatic End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(34; "Core Time Begin Clocking 1"; Time)
        {
            Caption = 'Core Time Begin Clocking 1';
        }
        field(35; "Core Time Begin Reference 1"; Code[1])
        {
            Caption = 'Core Time Begin Reference 1';
            CharAllowed = 'VVFFvvff';
        }
        field(36; "Core Time End Clocking 1"; Time)
        {
            Caption = 'Core Time End Clocking 1';
        }
        field(37; "Core Time End Reference 1"; Code[1])
        {
            Caption = 'Core Time End Reference 1';
            CharAllowed = 'VVFFvvff';
        }
        field(38; "Bandwidth Begin Clocking"; Time)
        {
            Caption = 'Bandwidth Begin Clocking';
        }
        field(39; "Bandwidth Begin Reference"; Code[1])
        {
            Caption = 'Bandwidth Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(40; "Bandwidth End Clocking"; Time)
        {
            Caption = 'Bandwidth End Clocking';
        }
        field(41; "Bandwidth End Reference"; Code[1])
        {
            Caption = 'Bandwidth End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(42; "Dummy Target Begin Clocking"; Time)
        {
            Caption = 'Dummy Target Begin Clocking';
        }
        field(43; "Dummy Target Begin Reference"; Code[1])
        {
            Caption = 'Dummy Target Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(44; "Dummy Target End Clocking"; Time)
        {
            Caption = 'Dummy Target End Clocking';
        }
        field(45; "Dummy Target End Reference"; Code[1])
        {
            Caption = 'Dummy Target End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(46; "Overtime Tol.bef.Begin Clock."; Time)
        {
            Caption = 'Overtime Tol.bef.Begin Clock.';
        }
        field(47; "Overtime Tol.bef.Begin Ref."; Code[1])
        {
            Caption = 'Overtime Tol.bef.Begin Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(48; "Overtime Tol.after End Clock."; Time)
        {
            Caption = 'Overtime Tol.after End Clock.';
        }
        field(49; "Overtime Tol.after End Ref."; Code[1])
        {
            Caption = 'Overtime Tol.after End Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(50; "Sync. Absenc. w/o Act. Clock."; Time)
        {
            Caption = 'Sync. Absenc. w/o Act. Clock.';
        }
        field(51; "Sync. Absenc. w/o Act. Ref."; Code[1])
        {
            Caption = 'Sync. Absenc. w/o Act. Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(52; "Sync. Absenc. w. Act. Clock."; Time)
        {
            Caption = 'Sync. Absenc. w. Act. Clock.';
        }
        field(53; "Sync. Absenc. w. Act. Ref."; Code[1])
        {
            Caption = 'Sync. Absenc. w. Act. Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(54; "Sync. Target T. Begin Clock."; Time)
        {
            Caption = 'Sync. Target T. Begin Clock.';
        }
        field(55; "Sync. Target T. Begin Ref."; Code[1])
        {
            Caption = 'Sync. Target T. Begin Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(56; "Sync. Target T. End Clock."; Time)
        {
            Caption = 'Sync. Target T. End Clock.';
        }
        field(57; "Sync. Target T. End Ref."; Code[1])
        {
            Caption = 'Sync. Target T. End Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(58; "Sequent. Target Split Clocking"; Time)
        {
            Caption = 'Sequent. Target Split Clocking';
        }
        field(59; "Sequent. Target Split Ref."; Code[1])
        {
            Caption = 'Sequent. Target Split Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(60; "Target Times TA No."; Code[10])
        {
            Caption = 'Target Times TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Target Time"));
        }
        field(62; "Actual Times TA No."; Code[10])
        {
            Caption = 'Actual Times TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(64; "Presence Times TA No."; Code[10])
        {
            Caption = 'Presence Times TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(66; "Overtime Begin TA No."; Code[10])
        {
            Caption = 'Overtime Begin TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(68; "Overtime End TA No."; Code[10])
        {
            Caption = 'Overtime End TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(70; "Absent Times Begin TA No."; Code[10])
        {
            Caption = 'Absent Times Begin TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Time"));
        }
        field(72; "Absent Times End TA No."; Code[10])
        {
            Caption = 'Absent Times End TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Time"));
        }
        field(74; "Core Time TA No."; Code[10])
        {
            Caption = 'Core Time TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Core Time"));
        }
        field(76; "Core Time/Absenc. Beg. TA No."; Code[10])
        {
            Caption = 'Core Time/Absenc. Beg. TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Core Time"));
        }
        field(78; "Core Time/Absenc. End TA No."; Code[10])
        {
            Caption = 'Core Time/Absenc. End TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Core Time"));
        }
        field(80; "Bandwidth TA No."; Code[10])
        {
            Caption = 'Bandwidth TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Bandwidth));
        }
        field(82; "Bandw./Overtime Begin TA No."; Code[10])
        {
            Caption = 'Bandw./Overtime Begin TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Bandwidth));
        }
        field(84; "Bandw./Overtime End TA No."; Code[10])
        {
            Caption = 'Bandw./Overtime End TA No.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Bandwidth));
        }
        field(86; "Core Time Begin Clocking 2"; Time)
        {
            Caption = 'Core Time Begin Clocking 2';
        }
        field(87; "Core Time Begin Reference 2"; Code[1])
        {
            Caption = 'Core Time Begin Reference 2';
            CharAllowed = 'VVFFvvff';
        }
        field(88; "Core Time End Clocking 2"; Time)
        {
            Caption = 'Core Time End Clocking 2';
        }
        field(89; "Core Time End Reference 2"; Code[1])
        {
            Caption = 'Core Time End Reference 2';
            CharAllowed = 'VVFFvvff';
        }
        field(90; "Time Grid No. Actual Times"; Code[10])
        {
            Caption = 'Time Grid No. Actual Times';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Actual Time Object 1-999"));
        }
        field(92; "Time Grid No. Presence Times"; Code[10])
        {
            Caption = 'Time Grid No. Presence Times';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Presence Time Object 1000-1999"));
        }
        field(94; "Overtime 1 Begin Time Grid No."; Code[10])
        {
            Caption = 'Overtime 1 Begin Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Overtime Object 2000-2999"));
        }
        field(95; "Overtime 2 Begin Time Grid No."; Code[10])
        {
            Caption = 'Overtime 2 Begin Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Overtime Object 2000-2999"));
        }
        field(96; "Overtime 1 End Time Grid No."; Code[10])
        {
            Caption = 'Overtime 1 End Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Overtime Object 2000-2999"));
        }
        field(97; "Overtime 2 End Time Grid No."; Code[10])
        {
            Caption = 'Overtime 2 End Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Overtime Object 2000-2999"));
        }
        field(98; "Absent T. Begin Time Grid No."; Code[10])
        {
            Caption = 'Absent T. Begin Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Absent Time Object 3000-3999"));
        }
        field(100; "Absent T. Ende Time Grid No."; Code[10])
        {
            Caption = 'Absent T. Ende Time Grid No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Absent Time Object 3000-3999"));
        }
        field(101; "Dyn. Break Min. Begin Clocking"; Time)
        {
            Caption = 'Dyn. Break Min. Begin Clocking';
        }
        field(102; "Dyn. Break Min. Begin Ref."; Code[1])
        {
            Caption = 'Dyn. Break Min. Begin Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(103; "Dyn. Break Max. End Clocking"; Time)
        {
            Caption = 'Dyn. Break Max. End Clocking';
        }
        field(104; "Dyn. Break Max. End Ref."; Code[1])
        {
            Caption = 'Dyn. Break Max. End Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(108; "Rel. Pos. Target 1. Clocking"; Boolean)
        {
            Caption = 'Rel. Pos. Target 1. Clocking';
        }
        field(109; "Presence Time from Bandwidth"; Boolean)
        {
            Caption = 'Presence Time from Bandwidth';
        }
        field(110; "Target Begin Core Time/Bandw."; Option)
        {
            Caption = 'Target Begin Core Time/Bandw.';
            OptionCaption = ' ,Core Time,Bandwith,Core Time/Bandwith';
            OptionMembers = " ","Core Time",Bandwith,"Core Time/Bandwith";
        }
        field(111; "Dynamic Break / 2x Rounding"; Boolean)
        {
            Caption = 'Dynamic Break / 2x Rounding';
        }
        field(112; "Actual Break ext.dyn.target"; Boolean)
        {
            Caption = 'Actual Break ext.dyn.target';
        }
        field(113; "Automatic Clocking Control"; Option)
        {
            Caption = 'Automatic Clocking Control';
            OptionCaption = ' ,Automatic,Errand/Coming,Errand/Leaving,Errand/Coming/Leaving,Leaving/Target Time';
            OptionMembers = " ",Automatic,"Errand/Coming","Errand/Leaving","Errand/Coming/Leaving","Leaving/Target Time";
        }
        field(114; "Altern. Sync. only for Coming"; Boolean)
        {
            Caption = 'Altern. Sync. only for Coming';
        }
        field(115; "Addit.Overtime Time Grid No."; Boolean)
        {
            Caption = 'Addit.Overtime Time Grid No.';
        }
        field(116; "Present-Time Continuation"; Boolean)
        {
            Caption = 'Present-Time Continuation';
        }
        field(117; "Presence-Break to Actual-Break"; Boolean)
        {
            Caption = 'Presence-Break to Actual-Break';
        }
        field(118; "TA No. Seq-Processing"; Code[10])
        {
            Caption = 'TA No. Seq-Processing';
            TableRelation = "Time Account/T"."No.";
        }
        field(121; "TA No. Present Range 1"; Code[10])
        {
            Caption = 'TA No. Present Range 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(122; "TA No. Present Range 2"; Code[10])
        {
            Caption = 'TA No. Present Range 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(123; "TA No. Present Range 3"; Code[10])
        {
            Caption = 'TA No. Present Range 3';
            TableRelation = "Time Account/T"."No.";
        }
        field(124; "TA No. Present Range 4"; Code[10])
        {
            Caption = 'TA No. Present Range 4';
            TableRelation = "Time Account/T"."No.";
        }
        field(125; "TA No. Present Range 5"; Code[10])
        {
            Caption = 'TA No. Present Range 5';
            TableRelation = "Time Account/T"."No.";
        }
        field(126; "TA No. Present Range 6"; Code[10])
        {
            Caption = 'TA No. Present Range 6';
            TableRelation = "Time Account/T"."No.";
        }
        field(127; "TA No. Present Range 7"; Code[10])
        {
            Caption = 'TA No. Present Range 7';
            TableRelation = "Time Account/T"."No.";
        }
        field(128; "TA No. Present Range 8"; Code[10])
        {
            Caption = 'TA No. Present Range 8';
            TableRelation = "Time Account/T"."No.";
        }
        field(129; "TA No. Present Range 9"; Code[10])
        {
            Caption = 'TA No. Present Range 9';
            TableRelation = "Time Account/T"."No.";
        }
        field(130; "TA No. Present Range 10"; Code[10])
        {
            Caption = 'TA No. Present Range 10';
            TableRelation = "Time Account/T"."No.";
        }
        field(150; "Catch Time Begin Clocking"; Time)
        {
            Caption = 'Catch Time Begin Clocking';
        }
        field(151; "Catch Time Begin Reference"; Code[1])
        {
            Caption = 'Catch Time Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(152; "Catch Time End Clocking"; Time)
        {
            Caption = 'Catch Time End Clocking';
        }
        field(153; "Catch Time End Reference"; Code[1])
        {
            Caption = 'Catch Time End Reference';
            CharAllowed = 'VVFFvvff';
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

