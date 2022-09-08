table 5056278 "Organization Group/T"
{
    Caption = 'Organization Group';
    DataCaptionFields = "No.", Description;
    Description = 'GrOrgGroup';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(20; "Output only Time Accounts"; Boolean)
        {
            Caption = 'Output only Time Accounts';
        }
        field(21; "Output TA-Group No."; Code[10])
        {
            Caption = 'Output TA-Group No.';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(22; "Filter Day Object"; Code[10])
        {
            Caption = 'Filter Day Object';
            TableRelation = "Day Object/T"."No.";
        }
        field(23; "Filter Shift Classification"; Option)
        {
            Caption = 'Filter Shift Classification';
            OptionCaption = ' ,Early Shift,Late Shift,Night Shift,Normal Shift,Special Shift';
            OptionMembers = " ","Early Shift","Late Shift","Night Shift","Normal Shift","Special Shift";
        }
        field(24; "Filter Absent Days"; Option)
        {
            Caption = 'Filter Absent Days';
            OptionCaption = 'Without Absent Days,With Absent Days';
            OptionMembers = "Without Absent Days","With Absent Days";
        }
        field(25; "Filter Display"; Option)
        {
            Caption = 'Filter Display';
            OptionCaption = 'Output only filtered Days,Output all Days';
            OptionMembers = "Output only filtered Days","Output all Days";
        }
        field(26; "Output only Attendees"; Boolean)
        {
            Caption = 'Output only Attendees';
        }
        field(27; "Output Abs.Days as Worktime"; Boolean)
        {
            Caption = 'Output Abs.Days as Worktime';
        }
        field(30; "Processing Type"; Option)
        {
            Caption = 'Processing Type';
            OptionCaption = 'Organization Groups,Duty Scheduling,Order Data';
            OptionMembers = "Organization Groups","Duty Scheduling","Order Data";
        }
        field(31; "Org-Form"; Option)
        {
            Caption = 'Org-Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(32; "Org-Value from"; Code[20])
        {
            Caption = 'Org-Value from';
            TableRelation = IF ("Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(33; "Org-Value to"; Code[20])
        {
            Caption = 'Org-Value to';
            TableRelation = IF ("Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(35; "From Date"; Date)
        {
            Caption = 'From Date';
        }
        field(36; "To Date"; Date)
        {
            Caption = 'To Date';
        }
        field(37; "Output Time Range"; Option)
        {
            Caption = 'Output Time Range';
            OptionCaption = 'Date,Time';
            OptionMembers = Date,Time;
        }
        field(38; "Output Day Objects"; Option)
        {
            Caption = 'Output Day Objects';
            OptionCaption = 'Description,Description / Number,Description 2,Description 2 / Number,Symbol,Symbol / Number,Number,Time';
            OptionMembers = Description,"Description / Number","Description 2","Description 2 / Number",Symbol,"Symbol / Number",Number,Time;
        }
        field(39; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(40; "Date of Last Change"; Date)
        {
            Caption = 'Date of Last Change';
        }
        field(41; "Time of Last Change"; Time)
        {
            Caption = 'Time of Last Change';
        }
        field(42; "User No. of Last Change"; Code[50])
        {
            Caption = 'User No. of Last Change';
            TableRelation = "User Line/T"."User No.";
        }
        field(43; "Output Defaults"; Option)
        {
            Caption = 'Output Defaults';
            OptionCaption = 'Actual,Actual / Default,Actual / Default / Difference';
            OptionMembers = Actual,"Actual / Default","Actual / Default / Difference";
        }
        field(44; "Output Font Bold"; Boolean)
        {
            Caption = 'Output Font Bold';
        }
        field(45; "Output Absent Days"; Option)
        {
            Caption = 'Output Absent Days';
            OptionCaption = 'Description,Description / Number,Description 2,Description 2 / Number,Symbol Fullday,Symbol Fullday / Number,Symbol Halfday,Character Fullday,Character Fullday / Number,Character Halfday,Number Fullday,Number Halfday';
            OptionMembers = Description,"Description / Number","Description 2","Description 2 / Number","Symbol Fullday","Symbol Fullday / Number","Symbol Halfday","Character Fullday","Character Fullday / Number","Character Halfday","Number Fullday","Number Halfday";
        }
        field(46; "Output Capacities"; Option)
        {
            Caption = 'Output Capacities';
            OptionCaption = 'Days,Hours';
            OptionMembers = Days,Hours;
        }
        field(47; "Entry Day Objects"; Option)
        {
            Caption = 'Entry Day Objects';
            OptionCaption = 'Number,Description 2,Symbol';
            OptionMembers = Number,"Description 2",Symbol;
        }
        field(48; "Entry Absent Days"; Option)
        {
            Caption = 'Entry Absent Days';
            OptionCaption = 'Number,Description 2,Symbol,Character';
            OptionMembers = Number,"Description 2",Symbol,Character;
        }
        field(49; "Output only own Employees"; Boolean)
        {
            Caption = 'Output only own Employees';
        }
        field(50; "Empl. Time Object Inactive"; Boolean)
        {
            Caption = 'Empl. Time Object Inactive';
        }
        field(51; "Empl. Default Inactive"; Boolean)
        {
            Caption = 'Empl. Default Inactive';
        }
        field(52; "Empl. Planned Inactive"; Boolean)
        {
            Caption = 'Empl. Planned Inactive';
        }
        field(53; "Empl. Processed Inactive"; Boolean)
        {
            Caption = 'Empl. Processed Inactive';
        }
        field(54; "Empl. Coming/Leaving Inactive"; Boolean)
        {
            Caption = 'Empl. Coming/Leaving Inactive';
        }
        field(55; "Empl. Time Grid Inactive"; Boolean)
        {
            Caption = 'Empl. Time Grid Inactive';
        }
        field(56; "Empl. Break Inactive"; Boolean)
        {
            Caption = 'Empl. Break Inactive';
        }
        field(57; "Empl. Miss. Day 1 Inactive"; Boolean)
        {
            Caption = 'Empl. Miss. Day 1 Inactive';
        }
        field(58; "Empl. Miss. Day 2 Inactive"; Boolean)
        {
            Caption = 'Empl. Miss. Day 2 Inactive';
        }
        field(59; "Empl. Net Time Inactive"; Boolean)
        {
            Caption = 'Empl. Net Time Inactive';
        }
        field(60; "Empl. Overtime Inactive"; Boolean)
        {
            Caption = 'Empl. Overtime Inactive';
        }
        field(61; "Empl. Miss. Time Inactive"; Boolean)
        {
            Caption = 'Empl. Miss. Time Inactive';
        }
        field(62; "Empl. Department Inactive"; Boolean)
        {
            Caption = 'Empl. Department Inactive';
        }
        field(63; "Empl. Order Inactive"; Boolean)
        {
            Caption = 'Empl. Order Inactive';
        }
        field(64; "Empl. Task Inactive"; Boolean)
        {
            Caption = 'Empl. Task Inactive';
        }
        field(65; "Empl. Dimension 1 Inactive"; Boolean)
        {
            Caption = 'Empl. Dimension 1 Inactive';
        }
        field(66; "Empl. Dimension 2 Inactive"; Boolean)
        {
            Caption = 'Empl. Dimension 2 Inactive';
        }
        field(67; "Empl. Dimension 3 Inactive"; Boolean)
        {
            Caption = 'Empl. Dimension 3 Inactive';
        }
        field(68; "Empl. Dimension 4 Inactive"; Boolean)
        {
            Caption = 'Empl. Dimension 4 Inactive';
        }
        field(69; "Num. Total Inactive"; Boolean)
        {
            Caption = 'Num. Total Inactive';
        }
        field(70; "Num. Planned Inactive"; Boolean)
        {
            Caption = 'Num. Planned Inactive';
        }
        field(71; "Num. Absent Inactive"; Boolean)
        {
            Caption = 'Num. Absent Inactive';
        }
        field(72; "Num. Available Inactive"; Boolean)
        {
            Caption = 'Num. Available Inactive';
        }
        field(73; "Empl. Plan B Inactive"; Boolean)
        {
            Caption = 'Empl. Plan B Inactive';
        }
        field(80; "Num. Qual.Level 1 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 1 Inactive';
        }
        field(81; "Num. Qual.Level 2 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 2 Inactive';
        }
        field(82; "Num. Qual.Level 3 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 3 Inactive';
        }
        field(83; "Num. Qual.Level 4 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 4 Inactive';
        }
        field(84; "Num. Qual.Level 5 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 5 Inactive';
        }
        field(85; "Num. Qual.Level 6 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 6 Inactive';
        }
        field(86; "Num. Qual.Level 7 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 7 Inactive';
        }
        field(87; "Num. Qual.Level 8 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 8 Inactive';
        }
        field(88; "Num. Qual.Level 9 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 9 Inactive';
        }
        field(89; "Num. Qual.Level 10 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 10 Inactive';
        }
        field(90; "Num. Day Object Inactive"; Boolean)
        {
            Caption = 'Num. Day Object Inactive';
        }
        field(91; "Num. Early Shift Inactive"; Boolean)
        {
            Caption = 'Num. Early Shift Inactive';
        }
        field(92; "Num. Late Shift Inactive"; Boolean)
        {
            Caption = 'Num. Late Shift Inactive';
        }
        field(93; "Num. Night Shift Inactive"; Boolean)
        {
            Caption = 'Num. Night Shift Inactive';
        }
        field(94; "Num. Normal Shift Inactive"; Boolean)
        {
            Caption = 'Num. Normal Shift Inactive';
        }
        field(95; "Num. Special Shift Inactive"; Boolean)
        {
            Caption = 'Num. Special Shift Inactive';
        }
        field(96; "Num. Department Inactive"; Boolean)
        {
            Caption = 'Num. Department Inactive';
        }
        field(97; "Num. Order Inactive"; Boolean)
        {
            Caption = 'Num. Order Inactive';
        }
        field(98; "Num. Task Inactive"; Boolean)
        {
            Caption = 'Num. Task Inactive';
        }
        field(99; "Num. Dimension 1 Inactive"; Boolean)
        {
            Caption = 'Num. Dimension 1 Inactive';
        }
        field(100; "Num. Dimension 2 Inactive"; Boolean)
        {
            Caption = 'Num. Dimension 2 Inactive';
        }
        field(101; "Num. Dimension 3 Inactive"; Boolean)
        {
            Caption = 'Num. Dimension 3 Inactive';
        }
        field(102; "Num. Dimension 4 Inactive"; Boolean)
        {
            Caption = 'Num. Dimension 4 Inactive';
        }
        field(103; "Empl. TA Target inactive"; Boolean)
        {
            Caption = 'Empl. TA Target inactive';
        }
        field(104; "Empl. TA Present inactive"; Boolean)
        {
            Caption = 'Empl. TA Present inactive';
        }
        field(105; "Empl. TA Balance inactive"; Boolean)
        {
            Caption = 'Empl. TA Balance inactive';
        }
        field(106; "Empl. TA Indiv inactive"; Boolean)
        {
            Caption = 'Empl. TA Indiv inactive';
        }
        field(110; "Num. Qual.Level 11 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 11 Inactive';
        }
        field(111; "Num. Qual.Level 12 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 12 Inactive';
        }
        field(112; "Num. Qual.Level 13 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 13 Inactive';
        }
        field(113; "Num. Qual.Level 14 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 14 Inactive';
        }
        field(114; "Num. Qual.Level 15 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 15 Inactive';
        }
        field(115; "Num. Qual.Level 16 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 16 Inactive';
        }
        field(116; "Num. Qual.Level 17 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 17 Inactive';
        }
        field(117; "Num. Qual.Level 18 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 18 Inactive';
        }
        field(118; "Num. Qual.Level 19 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 19 Inactive';
        }
        field(119; "Num. Qual.Level 20 Inactive"; Boolean)
        {
            Caption = 'Num. Qual.Level 20 Inactive';
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

