table 5056279 "Organization Group Line/T"
{
    Caption = 'Organization Group Line';
    Description = 'GrOrgGrLine';

    fields
    {
        field(1; "Organization Group No."; Code[20])
        {
            Caption = 'Organization Group No.';
            NotBlank = true;
            TableRelation = "Organization Group/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5; "Source TempVision Empl-Field"; Code[30])
        {
            Caption = 'Source TempVision Empl-Field';
        }
        field(6; "Destination Payroll Empl-Field"; Code[30])
        {
            Caption = 'Destination Payroll Empl-Field';
        }
        field(10; "Organization Value"; Code[20])
        {
            Caption = 'Organization Value';
        }
        field(11; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = 'Time Object,Default,Planned,Plan B,Processed,Time Grid,Com/Leav,Break,Miss.Day 1,Miss.Day 2,Net Time,Overtime,Miss.Time,Dept.,Order,Task,Dim.1,Dim.2,Dim.3,Dim.4,Total,Scheduled,Absent,Available,Qual.1,Qual.2,Qual.3,Qual.4,Qual.5,Qual.6,Qual.7,Qual.8,Qual.9,Qual.10,Day Obj.,Early,Late,Night,Normal,Special,N.Dept.,N.Order,N.Task,N.Dim.1,N.Dim.2,N.Dim.3,N.Dim.4,----------,Org-Value,Main-Value,Targ,Pres,Bal,Indiv,Qual.11,Qual.12,Qual.13,Qual.14,Qual.15,Qual.16,Qual.17,Qual.18,Qual.19,Qual.20';
            OptionMembers = "Time Object",Default,Planned,"Plan B",Processed,"Time Grid","Com/Leav","Break","Miss.Day 1","Miss.Day 2","Net Time",Overtime,"Miss.Time","Dept.","Order",Task,"Dim.1","Dim.2","Dim.3","Dim.4",Total,Scheduled,Absent,Available,"Qual.1","Qual.2","Qual.3","Qual.4","Qual.5","Qual.6","Qual.7","Qual.8","Qual.9","Qual.10","Day Obj.",Early,Late,Night,Normal,Special,"N.Dept.","N.Order","N.Task","N.Dim.1","N.Dim.2","N.Dim.3","N.Dim.4","----------","Org-Value","Main-Value",Targ,Pres,Bal,Indiv,"Qual.11","Qual.12","Qual.13","Qual.14","Qual.15","Qual.16","Qual.17","Qual.18","Qual.19","Qual.20";
        }
        field(12; "Number Type"; Option)
        {
            Caption = 'Number Type';
            OptionCaption = ' ,Employee,Day Object';
            OptionMembers = " ",Employee,"Day Object";
        }
        field(13; "From Date"; Date)
        {
            Caption = 'From Date';
        }
        field(14; "To Date"; Date)
        {
            Caption = 'To Date';
        }
        field(15; Number; Code[20])
        {
            Caption = 'Number';
        }
        field(16; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(17; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(18; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Own,Others,Rented';
            OptionMembers = " ",Own,Others,Rented;
        }
        field(19; "Organization Form"; Option)
        {
            Caption = 'Organization Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(20; "Value Car. Fwd."; Decimal)
        {
            BlankZero = true;
            Caption = 'Value Car. Fwd.';
        }
        field(21; "Balance Period"; Decimal)
        {
            BlankZero = true;
            Caption = 'Balance Period';
        }
        field(22; "Balance Total"; Decimal)
        {
            BlankZero = true;
            Caption = 'Balance Total';
        }
        field(23; "Balance calculated"; Decimal)
        {
            BlankZero = true;
            Caption = 'Balance calculated';
        }
        field(24; "Planned Time per Month"; Decimal)
        {
            BlankZero = true;
            Caption = 'Planned Time per Month';
        }
        field(25; "Balance from Date"; Date)
        {
            Caption = 'Balance from Date';
        }
        field(26; "Balance to Date"; Date)
        {
            Caption = 'Balance to Date';
        }
        field(27; "Balance calc. from Date"; Date)
        {
            Caption = 'Balance calc. from Date';
        }
        field(28; "Balance calc. to Date"; Date)
        {
            Caption = 'Balance calc. to Date';
        }
        field(29; "Target Time per Month"; Decimal)
        {
            BlankZero = true;
            Caption = 'Target Time per Month';
        }
        field(30; "Rem. Vacation Begin Period"; Decimal)
        {
            BlankZero = true;
            Caption = 'Rem. Vacation Begin Period';
        }
        field(31; "Rem. Vacation End Period"; Decimal)
        {
            BlankZero = true;
            Caption = 'Rem. Vacation End Period';
        }
        field(32; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(33; "Leaving Date"; Date)
        {
            Caption = 'Leaving Date';
        }
        field(40; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(41; "Division No."; Code[10])
        {
            Caption = 'Division No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(42; "Activity No."; Code[10])
        {
            Caption = 'Activity No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(43; "Company No."; Code[10])
        {
            Caption = 'Company No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(44; "Pay Group No."; Code[10])
        {
            Caption = 'Pay Group No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(45; "Group No. 1"; Code[10])
        {
            Caption = 'Group No. 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(46; "Group No. 2"; Code[10])
        {
            Caption = 'Group No. 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(47; "Group No. 3"; Code[10])
        {
            Caption = 'Group No. 3';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(48; "Time Object No."; Code[10])
        {
            Caption = 'Time Object No.';
            TableRelation = "Time Object/T"."No.";
        }
        field(50; Target; Decimal)
        {
            Caption = 'Target';
        }
        field(51; Present; Decimal)
        {
            Caption = 'Present';
        }
        field(52; "Time Account (Tar/Pre/Bal/Ind)"; Code[10])
        {
            Caption = 'Time Account (Tar/Pre/Bal/Ind)';
            TableRelation = "Time Account/T"."No.";
        }
        field(58; "From Date (Own) 1"; Date)
        {
            Caption = 'From Date (Own) 1';
        }
        field(59; "To Date (Own) 1"; Date)
        {
            Caption = 'To Date (Own) 1';
        }
        field(60; "From Date (Others) 1"; Date)
        {
            Caption = 'From Date (Others) 1';
        }
        field(61; "To Date (Others) 1"; Date)
        {
            Caption = 'To Date (Others) 1';
        }
        field(62; "From Date (Own) 2"; Date)
        {
            Caption = 'From Date (Own) 2';
        }
        field(63; "To Date (Own) 2"; Date)
        {
            Caption = 'To Date (Own) 2';
        }
        field(64; "From Date (Others) 2"; Date)
        {
            Caption = 'From Date (Others) 2';
        }
        field(65; "To Date (Others) 2"; Date)
        {
            Caption = 'To Date (Others) 2';
        }
        field(66; "From Date (Own) 3"; Date)
        {
            Caption = 'From Date (Own) 3';
        }
        field(67; "To Date (Own) 3"; Date)
        {
            Caption = 'To Date (Own) 3';
        }
        field(68; "From Date (Others) 3"; Date)
        {
            Caption = 'From Date (Others) 3';
        }
        field(69; "To Date (Others) 3"; Date)
        {
            Caption = 'To Date (Others) 3';
        }
        field(70; "From Date (Own) 4"; Date)
        {
            Caption = 'From Date (Own) 4';
        }
        field(71; "To Date (Own) 4"; Date)
        {
            Caption = 'To Date (Own) 4';
        }
        field(72; "From Date (Others) 4"; Date)
        {
            Caption = 'From Date (Others) 4';
        }
        field(73; "To Date (Others) 4"; Date)
        {
            Caption = 'To Date (Others) 4';
        }
        field(74; "From Date (Own) 5"; Date)
        {
            Caption = 'From Date (Own) 5';
        }
        field(75; "To Date (Own) 5"; Date)
        {
            Caption = 'To Date (Own) 5';
        }
        field(76; "From Date (Others) 5"; Date)
        {
            Caption = 'From Date (Others) 5';
        }
        field(77; "To Date (Others) 5"; Date)
        {
            Caption = 'To Date (Others) 5';
        }
        field(78; "From Date (Own) 6"; Date)
        {
            Caption = 'From Date (Own) 6';
        }
        field(79; "To Date (Own) 6"; Date)
        {
            Caption = 'To Date (Own) 6';
        }
        field(80; "From Date (Others) 6"; Date)
        {
            Caption = 'From Date (Others) 6';
        }
        field(81; "To Date (Others) 6"; Date)
        {
            Caption = 'To Date (Others) 6';
        }
        field(82; "From Date (Own) 7"; Date)
        {
            Caption = 'From Date (Own) 7';
        }
        field(83; "To Date (Own) 7"; Date)
        {
            Caption = 'To Date (Own) 7';
        }
        field(84; "From Date (Others) 7"; Date)
        {
            Caption = 'From Date (Others) 7';
        }
        field(85; "To Date (Others) 7"; Date)
        {
            Caption = 'To Date (Others) 7';
        }
        field(86; "From Date (Own) 8"; Date)
        {
            Caption = 'From Date (Own) 8';
        }
        field(87; "To Date (Own) 8"; Date)
        {
            Caption = 'To Date (Own) 8';
        }
        field(88; "From Date (Others) 8"; Date)
        {
            Caption = 'From Date (Others) 8';
        }
        field(89; "To Date (Others) 8"; Date)
        {
            Caption = 'To Date (Others) 8';
        }
        field(90; "From Date (Own) 9"; Date)
        {
            Caption = 'From Date (Own) 9';
        }
        field(91; "To Date (Own) 9"; Date)
        {
            Caption = 'To Date (Own) 9';
        }
        field(92; "From Date (Others) 9"; Date)
        {
            Caption = 'From Date (Others) 9';
        }
        field(93; "To Date (Others) 9"; Date)
        {
            Caption = 'To Date (Others) 9';
        }
        field(94; "From Date (Own) 10"; Date)
        {
            Caption = 'From Date (Own) 10';
        }
        field(95; "To Date (Own) 10"; Date)
        {
            Caption = 'To Date (Own) 10';
        }
        field(96; "From Date (Others) 10"; Date)
        {
            Caption = 'From Date (Others) 10';
        }
        field(97; "To Date (Others) 10"; Date)
        {
            Caption = 'To Date (Others) 10';
        }
        field(100; "To Org-Form (Own) 1"; Option)
        {
            Caption = 'To Org-Form (Own) 1';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(101; "To Org-Value (Own) 1"; Code[20])
        {
            Caption = 'To Org-Value (Own) 1';
            TableRelation = IF ("To Org-Form (Own) 1" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 1" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(104; "To Org-Form (Own) 2"; Option)
        {
            Caption = 'To Org-Form (Own) 2';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(105; "To Org-Value (Own) 2"; Code[20])
        {
            Caption = 'To Org-Value (Own) 2';
            TableRelation = IF ("To Org-Form (Own) 2" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 2" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(108; "To Org-Form (Own) 3"; Option)
        {
            Caption = 'To Org-Form (Own) 3';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(109; "To Org-Value (Own) 3"; Code[20])
        {
            Caption = 'To Org-Value (Own) 3';
            TableRelation = IF ("To Org-Form (Own) 3" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 3" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(112; "To Org-Form (Own) 4"; Option)
        {
            Caption = 'To Org-Form (Own) 4';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(113; "To Org-Value (Own) 4"; Code[20])
        {
            Caption = 'To Org-Value (Own) 4';
            TableRelation = IF ("To Org-Form (Own) 4" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 4" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(116; "To Org-Form (Own) 5"; Option)
        {
            Caption = 'To Org-Form (Own) 5';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(117; "To Org-Value (Own) 5"; Code[20])
        {
            Caption = 'To Org-Value (Own) 5';
            TableRelation = IF ("To Org-Form (Own) 5" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 5" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(120; "To Org-Form (Own) 6"; Option)
        {
            Caption = 'To Org-Form (Own) 6';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(121; "To Org-Value (Own) 6"; Code[20])
        {
            Caption = 'To Org-Value (Own) 6';
            TableRelation = IF ("To Org-Form (Own) 6" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 6" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(124; "To Org-Form (Own) 7"; Option)
        {
            Caption = 'To Org-Form (Own) 7';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(125; "To Org-Value (Own) 7"; Code[20])
        {
            Caption = 'To Org-Value (Own) 7';
            TableRelation = IF ("To Org-Form (Own) 7" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 7" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(128; "To Org-Form (Own) 8"; Option)
        {
            Caption = 'To Org-Form (Own) 8';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(129; "To Org-Value (Own) 8"; Code[20])
        {
            Caption = 'To Org-Value (Own) 8';
            TableRelation = IF ("To Org-Form (Own) 8" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 8" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(132; "To Org-Form (Own) 9"; Option)
        {
            Caption = 'To Org-Form (Own) 9';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(133; "To Org-Value (Own) 9"; Code[20])
        {
            Caption = 'To Org-Value (Own) 9';
            TableRelation = IF ("To Org-Form (Own) 9" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 9" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(136; "To Org-Form (Own) 10"; Option)
        {
            Caption = 'To Org-Form (Own) 10';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(137; "To Org-Value (Own) 10"; Code[20])
        {
            Caption = 'To Org-Value (Own) 10';
            TableRelation = IF ("To Org-Form (Own) 10" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("To Org-Form (Own) 10" = CONST ("Time Object")) "Time Object/T"."No.";
        }
    }

    keys
    {
        key(Key1; "Organization Group No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

