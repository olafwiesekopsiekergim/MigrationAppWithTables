table 5056251 "User Line/T"
{
    // //SK01 tempras 25.04.2018 neue Felder Bemerkungszeilen

    Caption = 'User Line';
    DataCaptionFields = "User No.";
    Description = 'GrUserLine';

    fields
    {
        field(1; "User No."; Code[50])
        {
            Caption = 'User No.';
            NotBlank = true;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(4; "Org-Form 2"; Option)
        {
            Caption = 'Org-Form 2';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(5; "Org-Value from 2"; Code[20])
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
        field(6; "Org-Value to 2"; Code[20])
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
        field(7; "Org-Group No. 2"; Code[20])
        {
            Caption = 'Org-Group No. 2';
            TableRelation = "Organization Group/T"."No.";
        }
        field(8; "Org-Form NOT 2"; Boolean)
        {
            Caption = 'Org-Form NOT 2';
        }
        field(9; "Org-Form Filter 2"; Text[250])
        {
            Caption = 'Org-Form Filter 2';
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
        field(16; "Org-Group SmartClient Setup"; Code[20])
        {
            Caption = 'Org-Group SmartClient Setup';
            TableRelation = "Organization Group/T"."No.";
        }
        field(17; "Path DLL Import/Installation"; Text[120])
        {
            Caption = 'Path DLL Import/Installation';
        }
        field(18; "AT-Workflow Edit"; Option)
        {
            Caption = 'AT-Workflow Edit';
            OptionCaption = ' ,Stand-In,Superior,Stand-In/Superior';
            OptionMembers = " ","Stand-In",Superior,"Stand-In/Superior";
        }
        field(19; "EM/INA/Delete"; Boolean)
        {
            Caption = 'EM/INA/Delete';
        }
        field(20; "Org-Form Filter 1"; Text[250])
        {
            Caption = 'Org-Form Filter 1';
        }
        field(21; "EM/INA/Save"; Boolean)
        {
            Caption = 'EM/INA/Save';
        }
        field(22; "EP/INA/Save"; Boolean)
        {
            Caption = 'EP/INA/Save';
        }
        field(23; "TP/INA/Save"; Boolean)
        {
            Caption = 'TP/INA/Save';
        }
        field(24; "DS/Def. Org-Form"; Option)
        {
            Caption = 'DS/Def. Organization Form';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(25; "DS/Def. Org-Value from"; Code[20])
        {
            Caption = 'DS/Def. Org-Value from';
            TableRelation = IF ("DS/Def. Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(26; "DS/Def. Org-Value until"; Code[20])
        {
            Caption = 'DS/Def. Org-Value until';
            TableRelation = IF ("DS/Def. Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("DS/Def. Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("DS/Def. Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(27; "EM/Minimized Employee List"; Boolean)
        {
            Caption = 'EM/Minimized Employee List';
        }
        field(28; "EM/History editable"; Boolean)
        {
            Caption = 'EM/History editable';
        }
        field(29; "Access protected area"; Boolean)
        {
            Caption = 'Access protected area';
        }
        field(30; "Pre-Board without Timer-Call"; Boolean)
        {
            Caption = 'Pre-Board without Timer-Call';
        }
        field(31; "Pre-Board Access all Empl."; Boolean)
        {
            Caption = 'Pre-Board Access all Empl.';
        }
        field(32; "DS/Entry TObject inactive"; Boolean)
        {
            Caption = 'DS/Entry TObject inactive';
        }
        field(33; "DS/Entry Absent Day inactive"; Boolean)
        {
            Caption = 'DS/Entry Absent Day inactive';
        }
        field(34; "DS/Entry Overtime inactive"; Boolean)
        {
            Caption = 'DS/Entry Overtime inactive';
        }
        field(35; "DS/Entry Absent Time inactive"; Boolean)
        {
            Caption = 'DS/Entry Absent Time inactive';
        }
        field(36; "DS/Entry Department inactive"; Boolean)
        {
            Caption = 'DS/Entry Department inactive';
        }
        field(37; "DS/Entry FDC inactive"; Boolean)
        {
            Caption = 'DS/Entry FDC inactive';
        }
        field(38; "DS/Entry Time Clock. inactive"; Boolean)
        {
            Caption = 'DS/Entry Time Clock. inactive';
        }
        field(39; "Mgt-Info only Pres. w/o Target"; Boolean)
        {
            Caption = 'Mgt-Info only Pres. w/o Target';
        }
        field(40; "Def. Department Insert"; Code[10])
        {
            Caption = 'Def. Department Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(41; "Def. Division Insert"; Code[10])
        {
            Caption = 'Def. Division Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(42; "Def. Activity Insert"; Code[10])
        {
            Caption = 'Def. Activity Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(43; "Def. Company Insert"; Code[10])
        {
            Caption = 'Def. Company Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(44; "Def. Pay Group Insert"; Code[10])
        {
            Caption = 'Def. Pay Group Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(45; "Def. Group No. 1 Insert"; Code[10])
        {
            Caption = 'Def. Group No. 1 Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(46; "Def. Group No. 2 Insert"; Code[10])
        {
            Caption = 'Def. Group No. 2 Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(47; "Def. Group No. 3 Insert"; Code[10])
        {
            Caption = 'Def. Group No. 3 Insert';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(48; "Def. Time Object Insert"; Code[10])
        {
            Caption = 'Def. Time Object Insert';
            TableRelation = "Time Object/T"."No.";
        }
        field(49; "Pre-Board Display"; Option)
        {
            Caption = 'Pre-Board Display';
            OptionCaption = ' ,Only Attendees,Only Absentees,at Break Only,at Errand Only';
            OptionMembers = " ","Only Attendees","Only Absentees","at Break Only","at Errand Only";
        }
        field(50; "EP/Abs.Day Insert Time Manager"; Boolean)
        {
            Caption = 'EP/Abs.Day Insert Time Manager';
        }
        field(51; "EP/INA/Delete"; Boolean)
        {
            Caption = 'EP/INA/Delete';
        }
        field(52; "EP/Abs.Day Delete Time Manager"; Boolean)
        {
            Caption = 'EP/Abs.Day Delete Time Manager';
        }
        field(60; "EP/INA/Employee"; Boolean)
        {
            Caption = 'EP/INA/Employee';
        }
        field(70; "EP/INA/Employee Info"; Boolean)
        {
            Caption = 'EP/INA/Employee Info';
        }
        field(80; "EP/INA/Journal"; Boolean)
        {
            Caption = 'EP/INA/Journal';
        }
        field(90; "EP/INA/Planning Matrix"; Boolean)
        {
            Caption = 'EP/INA/Planning Matrix';
        }
        field(100; "EP/INA/Planning Lines"; Boolean)
        {
            Caption = 'EP/INA/Planning Lines';
        }
        field(110; "EP/INA/Abs. Applications"; Boolean)
        {
            Caption = 'EP/INA/Abs. Applications';
        }
        field(120; "EP/INA/Vacation Sync."; Boolean)
        {
            Caption = 'EP/INA/Vacation Sync.';
        }
        field(130; "EP/INA/42-Day Check"; Boolean)
        {
            Caption = 'EP/INA/42-Day Check';
        }
        field(135; "EP/INA/Cause of Absence Hist."; Boolean)
        {
            Caption = 'EP/INA/Cause of Absence Hist.';
        }
        field(140; "EP/INA/Collective Clocking"; Boolean)
        {
            Caption = 'EP/INA/Collective Clocking';
        }
        field(150; "EP/INA/Save own Data"; Boolean)
        {
            Caption = 'EP/INA/Save own Data';
        }
        field(151; "TP/INA/Save own Data"; Boolean)
        {
            Caption = 'TP/INA/Save own Data';
        }
        field(152; "TP/Total-Cancel"; Boolean)
        {
            Caption = 'TP/Total-Cancel';
        }
        field(153; "EM/INA/Save own Data"; Boolean)
        {
            Caption = 'EM/INA/Save own Data';
        }
        field(160; "Org-Form WF"; Option)
        {
            Caption = 'Org-Form WF';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(161; "Org-Value from WF"; Code[20])
        {
            Caption = 'Org-Value from WF';
            TableRelation = IF ("Org-Form WF" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Org-Form WF" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form WF" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form WF" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form WF" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form WF" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form WF" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form WF" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form WF" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form WF" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(162; "Org-Value to WF"; Code[20])
        {
            Caption = 'Org-Value to WF';
            TableRelation = IF ("Org-Form WF" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Org-Form WF" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form WF" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form WF" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form WF" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form WF" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form WF" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form WF" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form WF" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form WF" = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(163; "Org-Group No. WF"; Code[20])
        {
            Caption = 'Org-Group No. WF';
            TableRelation = "Organization Group/T"."No.";
        }
        field(164; "Org-Form NOT WF"; Boolean)
        {
            Caption = 'Org-Form NOT WF';
        }
        field(200; "TP/Correction Control"; Boolean)
        {
            Caption = 'TP/Correction Control';
        }
        field(201; "TP/Correction Target Inactive"; Boolean)
        {
            Caption = 'TP/Correction Target Inactive';
        }
        field(202; "TP/Correction Source Inactive"; Boolean)
        {
            Caption = 'TP/Correction Source Inactive';
        }
        field(203; "TP/Correction Ref Inactive"; Boolean)
        {
            Caption = 'TP/Correction Ref Inactive';
        }
        field(204; "TP/Correction Errand Inactive"; Boolean)
        {
            Caption = 'TP/Correction Errand Inactive';
        }
        field(205; "TP/Correction Dept Inactive"; Boolean)
        {
            Caption = 'TP/Correction Dept Inactive';
        }
        field(206; "TP/Correction Break Inactive"; Boolean)
        {
            Caption = 'TP/Correction Break Inactive';
        }
        field(207; "TP/Correction Account Inactive"; Boolean)
        {
            Caption = 'TP/Correction Account Inactive';
        }
        field(208; "TP/Correction Info Inactive"; Boolean)
        {
            Caption = 'TP/Correction Info Inactive';
        }
        field(209; "TP/Correction Actual Inactive"; Boolean)
        {
            Caption = 'TP/Correction Actual Inactive';
        }
        field(210; "TP/Correction Info-B Inactive"; Boolean)
        {
            Caption = 'TP/Correction Info-B Inactive';
        }
        field(211; "TP/Correction FDC Inactive"; Boolean)
        {
            Caption = 'TP/Correction FDC Inactive';
        }
        field(212; "TP/Correction Term Inactive"; Boolean)
        {
            Caption = 'TP/Correction Term Inactive';
        }
        field(213; "TP/Correction Round Inactive"; Boolean)
        {
            Caption = 'TP/Correction Round Inactive';
        }
        field(214; "TP/Correction Orig Inactive"; Boolean)
        {
            Caption = 'TP/Correction Orig Inactive';
        }
        field(215; "TP/Correction Error Inactive"; Boolean)
        {
            Caption = 'TP/Correction Error Inactive';
        }
        field(216; "TP/Correction Dept ft Inactive"; Boolean)
        {
            Caption = 'TP/Correction Dept ft Inactive';
        }
        field(217; "TP/Correction DeptFDC Inactive"; Boolean)
        {
            Caption = 'TP/Correction DeptFDC Inactive';
        }
        field(218; "TP/Correction Plan Inactive"; Boolean)
        {
            Caption = 'TP/Correction Plan Inactive';
        }
        field(219; "TP/Correction Manual Inactive"; Boolean)
        {
            Caption = 'TP/Correction Manual Inactive';
        }
        field(220; "TP/Correction AddInfo Inactive"; Boolean)
        {
            Caption = 'TP/Correction AddInfo Inactive';
        }
        field(221; "TP/Correction Abs.Day Inactive"; Boolean)
        {
            Caption = 'TP/Correction Abs.Day Inactive';
        }
        field(222; "TP/Corr Approve Edit allowed"; Boolean)
        {
            Caption = 'TP/Corr Approve Edit allowed';
        }
        field(230; "TP/Corr Filter unfinished"; Boolean)
        {
            Caption = 'TP/Corr Filter unfinished';
        }
        field(231; "TP/Corr Filter deviating"; Boolean)
        {
            Caption = 'TP/Corr Filter deviating';
        }
        field(232; "TP/Corr Filter OK"; Boolean)
        {
            Caption = 'TP/Corr Filter OK';
        }
        field(233; "TP/Corr Filter processed"; Boolean)
        {
            Caption = 'TP/Corr Filter processed';
        }
        field(234; "TP/Corr Filter manual"; Boolean)
        {
            Caption = 'TP/Corr Filter manual';
        }
        field(235; "TP/Corr Filter unpair ComLeav"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair ComLeav';
        }
        field(236; "TP/Corr Filter unpair Errand"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair Errand';
        }
        field(237; "TP/Corr Filter unpair Break"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair Break';
        }
        field(238; "TP/Corr Filter unpair Info"; Boolean)
        {
            Caption = 'TP/Corr Filter unpair Info';
        }
        field(239; "TP/Corr Filter illog. ComLeav"; Boolean)
        {
            Caption = 'TP/Corr Filter illog. ComLeav';
        }
        field(240; "TP/Corr Filter TA Exceeded"; Boolean)
        {
            Caption = 'TP/Corr Filter TA Exceeded';
        }
        field(241; "TP/Corr Filter Pres on AbsDay"; Boolean)
        {
            Caption = 'TP/Corr Filter Pres on AbsDay';
        }
        field(242; "TP/Corr Filter Dept invalid"; Boolean)
        {
            Caption = 'TP/Corr Filter Dept invalid';
        }
        field(243; "TP/Corr Filter FDC invalid"; Boolean)
        {
            Caption = 'TP/Corr Filter FDC invalid';
        }
        field(244; "TP/Corr Filter FDC illogical"; Boolean)
        {
            Caption = 'TP/Corr Filter FDC illogical';
        }
        field(245; "TP/Corr Filter CASE-Procedure"; Boolean)
        {
            Caption = 'TP/Corr Filter CASE-Procedure';
        }
        field(260; "TP/Save current Day"; Boolean)
        {
            Caption = 'TP/Save current Day';
        }
        field(261; "TP/Before last Period blocked"; Boolean)
        {
            Caption = 'TP/Before last Period blocked';
        }
        field(262; "TP/Save integrated Data"; Boolean)
        {
            Caption = 'TP/Save integrated Data';
        }
        field(263; "TP/Save Previous Period"; Boolean)
        {
            Caption = 'TP/Save Previous Period';
        }
        field(264; "TP/Previous Year blocked"; Boolean)
        {
            Caption = 'TP/Previous Year blocked';
        }
        field(300; "TP/INA/TA - Time Manager"; Boolean)
        {
            Caption = 'TP/INA/TA - Time Manager';
        }
        field(301; "TP/Save Unp. Post. - All Days"; Boolean)
        {
            Caption = 'TP/Save Unp. Post. - All Days';
        }
        field(302; "TP/No Update Clocking Status"; Boolean)
        {
            Caption = 'TP/No Update Clocking Status';
        }
        field(303; "TP/Read until Day before"; Boolean)
        {
            Caption = 'TP/Read until Day before';
        }
        field(310; "TP/INA/Clockings"; Boolean)
        {
            Caption = 'TP/INA/Clockings';
        }
        field(320; "TP/INA/Overtime"; Boolean)
        {
            Caption = 'TP/INA/Overtime';
        }
        field(330; "TP/INA/Absent Time"; Boolean)
        {
            Caption = 'TP/INA/Absent Time';
        }
        field(340; "TP/INA/Planning"; Boolean)
        {
            Caption = 'TP/INA/Planning';
        }
        field(350; "TP/INA/Breaks"; Boolean)
        {
            Caption = 'TP/INA/Breaks';
        }
        field(360; "TP/INA/Roundings"; Boolean)
        {
            Caption = 'TP/INA/Roundings';
        }
        field(370; "TP/INA/Values Car. Fwd."; Boolean)
        {
            Caption = 'TP/INA/Values Car. Fwd.';
        }
        field(380; "TP/INA/Evaluate"; Boolean)
        {
            Caption = 'TP/INA/Evaluate';
        }
        field(390; "TP/INA/Departments"; Boolean)
        {
            Caption = 'TP/INA/Departments';
        }
        field(400; "TP/INA/Order Data"; Boolean)
        {
            Caption = 'TP/INA/Order Data';
        }
        field(410; "TP/INA/Terminal Clockings"; Boolean)
        {
            Caption = 'TP/INA/Terminal Clockings';
        }
        field(420; "TP/INA/Preprocessing"; Boolean)
        {
            Caption = 'TP/INA/Preprocessing';
        }
        field(430; "TP/INA/Time Corrections"; Boolean)
        {
            Caption = 'TP/INA/Time Corrections';
        }
        field(440; "TP/INA/Journal"; Boolean)
        {
            Caption = 'TP/INA/Journal';
        }
        field(450; "TP/INA/Undo"; Boolean)
        {
            Caption = 'TP/INA/Undo';
        }
        field(460; "TP/INA/Recalculation"; Boolean)
        {
            Caption = 'TP/INA/Recalculation';
        }
        field(470; "TP/INA/Reset Protected Data"; Boolean)
        {
            Caption = 'TP/INA/Reset Protected Data';
        }
        field(480; "TP/INA/Test Clockings"; Boolean)
        {
            Caption = 'TP/INA/Test Clockings';
        }
        field(485; "TP/INA/CASE Procedures active"; Boolean)
        {
            Caption = 'TP/INA/CASE Procedures active';
        }
        field(490; "TP/INA/Internal Analysis"; Boolean)
        {
            Caption = 'TP/INA/Internal Analysis';
        }
        field(500; "TP/INA/Employee"; Boolean)
        {
            Caption = 'TP/INA/Employee';
        }
        field(510; "TP/INA/Employee Planning"; Boolean)
        {
            Caption = 'TP/INA/Employee Planning';
        }
        field(515; "TP/INA/Planning Lines"; Boolean)
        {
            Caption = 'TP/INA/Planning Lines';
        }
        field(520; "TP/INA/Employee Info"; Boolean)
        {
            Caption = 'TP/INA/Employee Info';
        }
        field(530; "TP/INA/TA Class (Statistics)"; Boolean)
        {
            Caption = 'TP/INA/TA Class (Statistics)';
        }
        field(540; "TP/INA/TA Class (Absent Day)"; Boolean)
        {
            Caption = 'TP/INA/TA Class (Absent Day)';
        }
        field(550; "TP/INA/Analysis (Statistics)"; Boolean)
        {
            Caption = 'TP/INA/Analysis (Statistics)';
        }
        field(560; "TP/INA/Analysis (Absent Days)"; Boolean)
        {
            Caption = 'TP/INA/Analysis (Absent Days)';
        }
        field(570; "TP/INA/Analysis (Time Account)"; Boolean)
        {
            Caption = 'TP/INA/Analysis (Time Account)';
        }
        field(580; "TP/INA/Time Clockings"; Boolean)
        {
            Caption = 'TP/INA/Time Clockings';
        }
        field(590; "TP/INA/Open Entries"; Boolean)
        {
            Caption = 'TP/INA/Open Entries';
        }
        field(595; "TP/INA/Num.WD Acc.Prev-Period"; Integer)
        {
            Caption = 'TP/INA/Num.WD Acc.Prev-Period';
        }
        field(596; "TP/Add-In Size (Factor)"; Decimal)
        {
            Caption = 'TP/Add-In Size (Factor)';
        }
        field(600; "TP/INA/Time Account Register"; Boolean)
        {
            Caption = 'TP/INA/Time Account Register';
        }
        field(630; "DS/Duty Scheduling Control"; Boolean)
        {
            Caption = 'DS/Duty Scheduling Control';
        }
        field(631; "DS/Duty Scheduling Design"; Option)
        {
            Caption = 'DS/Duty Scheduling Control';
            OptionCaption = 'Standard,Graphical,Grid';
            OptionMembers = Standard,Graphical,Grid;
        }
        field(638; "DS/Def. Entry Day Objects"; Option)
        {
            Caption = 'DS/Def. Entry Day Objects';
            OptionCaption = 'Number,Description 2,Symbol';
            OptionMembers = Number,"Description 2",Symbol;
        }
        field(639; "DS/Def. Entry Absent Days"; Option)
        {
            Caption = 'DS/Def. Entry Absent Days';
            OptionCaption = 'Number,Description 2,Character';
            OptionMembers = Number,"Description 2",Symbol,Character;
        }
        field(640; "DS/Def. Output Time Range"; Option)
        {
            Caption = 'DS/Def. Output Time Range';
            OptionCaption = 'Date,Time';
            OptionMembers = Date,Time;
        }
        field(641; "DS/Def. Output Day Objects"; Option)
        {
            Caption = 'DS/Def. Output Day Objects';
            OptionCaption = 'Description,Description / Number,Description 2,Description 2 / Number,Symbol,Symbol / Number,Number,Time';
            OptionMembers = Description,"Description / Number","Description 2","Description 2 / Number",Symbol,"Symbol / Number",Number,Time;
        }
        field(642; "DS/Def. Output Defaults"; Option)
        {
            Caption = 'DS/Def. Output Defaults';
            OptionCaption = 'Actual,Actual / Default,Actual / Default / Difference';
            OptionMembers = Actual,"Actual / Default","Actual / Default / Difference";
        }
        field(645; "DS/Def. Output Font Bold"; Boolean)
        {
            Caption = 'DS/Def. Output Font Bold';
        }
        field(646; "DS/Def. Output Absent Days"; Option)
        {
            Caption = 'DS/Def. Output Absent Days';
            OptionCaption = 'Description,Description / Number,Description 2,Description 2 / Number,Symbol Fullday,Symbol Fullday / Number,Symbol Halfday,Character Fullday,Character Fullday / Number,Character Halfday,Number Fullday,Number Halfday';
            OptionMembers = Description,"Description / Number","Description 2","Description 2 / Number","Symbol Fullday","Symbol Fullday / Number","Symbol Halfday","Character Fullday","Character Fullday / Number","Character Halfday","Number Fullday","Number Halfday";
        }
        field(647; "DS/Def. Output Capacities"; Option)
        {
            Caption = 'DS/Def. Output Capacities';
            OptionCaption = 'Days,Hours';
            OptionMembers = Days,Hours;
        }
        field(649; "DS/Def. Output TA-Group No."; Code[10])
        {
            Caption = 'DS/Def. Output TA-Group No.';
            TableRelation = "Time Account Group/T"."No.";
        }
        field(650; "DS/Empl. Time Object Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Time Object Inactive';
        }
        field(651; "DS/Empl. Default Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Default Inactive';
        }
        field(652; "DS/Empl. Planned Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Planned Inactive';
        }
        field(653; "DS/Empl. Processed Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Processed Inactive';
        }
        field(654; "DS/Empl. Coming/Leav. Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Coming/Leav. Inactive';
        }
        field(655; "DS/Empl. Time Grid Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Time Grid Inactive';
        }
        field(656; "DS/Empl. Break Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Break Inactive';
        }
        field(657; "DS/Empl. Miss. Day 1 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Miss. Day 1 Inactive';
        }
        field(658; "DS/Empl. Miss. Day 2 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Miss. Day 2 Inactive';
        }
        field(659; "DS/Empl. Net Time Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Net Time Inactive';
        }
        field(660; "DS/Empl. Overtime Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Overtime Inactive';
        }
        field(661; "DS/Empl. Miss. Time Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Miss. Time Inactive';
        }
        field(662; "DS/Empl. Department Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Department Inactive';
        }
        field(663; "DS/Empl. Order Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Order Inactive';
        }
        field(664; "DS/Empl. Task Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Task Inactive';
        }
        field(665; "DS/Empl. Dimension 1 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 1 Inactive';
        }
        field(666; "DS/Empl. Dimension 2 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 2 Inactive';
        }
        field(667; "DS/Empl. Dimension 3 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 3 Inactive';
        }
        field(668; "DS/Empl. Dimension 4 Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Dimension 4 Inactive';
        }
        field(669; "DS/Num. Total Inactive"; Boolean)
        {
            Caption = 'DS/Num. Total Inactive';
        }
        field(670; "DS/Num. Planned Inactive"; Boolean)
        {
            Caption = 'DS/Num. Planned Inactive';
        }
        field(671; "DS/Num. Absent Inactive"; Boolean)
        {
            Caption = 'DS/Num. Absent Inactive';
        }
        field(672; "DS/Num. Available Inactive"; Boolean)
        {
            Caption = 'DS/Num. Available Inactive';
        }
        field(680; "DS/Num. Qual.Level 1 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 1 Inactive';
        }
        field(681; "DS/Num. Qual.Level 2 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 2 Inactive';
        }
        field(682; "DS/Num. Qual.Level 3 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 3 Inactive';
        }
        field(683; "DS/Num. Qual.Level 4 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 4 Inactive';
        }
        field(684; "DS/Num. Qual.Level 5 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 5 Inactive';
        }
        field(685; "DS/Num. Qual.Level 6 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 6 Inactive';
        }
        field(686; "DS/Num. Qual.Level 7 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 7 Inactive';
        }
        field(687; "DS/Num. Qual.Level 8 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 8 Inactive';
        }
        field(688; "DS/Num. Qual.Level 9 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 9 Inactive';
        }
        field(689; "DS/Num. Qual.Level 10 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 10 Inactive';
        }
        field(690; "DS/Num. Day Object Inactive"; Boolean)
        {
            Caption = 'DS/Num. Day Object Inactive';
        }
        field(691; "DS/Num. Early Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Early Shift Inactive';
        }
        field(692; "DS/Num. Late Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Late Shift Inactive';
        }
        field(693; "DS/Num. Night Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Night Shift Inactive';
        }
        field(694; "DS/Num. Normal Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Normal Shift Inactive';
        }
        field(695; "DS/Num. Special Shift Inactive"; Boolean)
        {
            Caption = 'DS/Num. Special Shift Inactive';
        }
        field(696; "DS/Num. Department Inactive"; Boolean)
        {
            Caption = 'DS/Num. Department Inactive';
        }
        field(697; "DS/Num. Order Inactive"; Boolean)
        {
            Caption = 'DS/Num. Order Inactive';
        }
        field(698; "DS/Num. Task Inactive"; Boolean)
        {
            Caption = 'DS/Num. Task Inactive';
        }
        field(699; "DS/Num. Dimension 1 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 1 Inactive';
        }
        field(700; "DS/Num. Dimension 2 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 2 Inactive';
        }
        field(701; "DS/Num. Dimension 3 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 3 Inactive';
        }
        field(702; "DS/Num. Dimension 4 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Dimension 4 Inactive';
        }
        field(703; "DS/Employee Fields Inactive"; Boolean)
        {
            Caption = 'DS/Employee Fields Inactive';
        }
        field(704; "DS/Empl. TA Target inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Target inactive';
        }
        field(705; "DS/Empl. TA Present inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Present inactive';
        }
        field(706; "DS/Empl. TA Balance inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Balance inactive';
        }
        field(707; "DS/Empl. TA Indiv inactive"; Boolean)
        {
            Caption = 'DS/Empl. TA Indiv inactive';
        }
        field(710; "DS/Num. Qual.Level 11 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 11 Inactive';
        }
        field(711; "DS/Num. Qual.Level 12 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 12 Inactive';
        }
        field(712; "DS/Num. Qual.Level 13 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 13 Inactive';
        }
        field(713; "DS/Num. Qual.Level 14 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 14 Inactive';
        }
        field(714; "DS/Num. Qual.Level 15 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 15 Inactive';
        }
        field(715; "DS/Num. Qual.Level 16 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 16 Inactive';
        }
        field(716; "DS/Num. Qual.Level 17 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 17 Inactive';
        }
        field(717; "DS/Num. Qual.Level 18 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 18 Inactive';
        }
        field(718; "DS/Num. Qual.Level 19 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 19 Inactive';
        }
        field(719; "DS/Num. Qual.Level 20 Inactive"; Boolean)
        {
            Caption = 'DS/Num. Qual.Level 20 Inactive';
        }
        field(720; "DS/Empl. Plan B Inactive"; Boolean)
        {
            Caption = 'DS/Empl. Plan B Inactive';
        }
        field(730; "DS/Def. Output only Attendees"; Boolean)
        {
            Caption = 'DS/Def. Output only Attendees';
        }
        field(731; "DS/Def. Output only own Empl."; Boolean)
        {
            Caption = 'DS/Def. Output only own Empl.';
        }
        field(732; "DS/Def. Output  only Time Acc."; Boolean)
        {
            Caption = 'DS/Def. Output  only Time Acc.';
        }
        field(733; "DS/Def. Output  Abs.D.Worktime"; Boolean)
        {
            Caption = 'DS/Def. Output  Abs.D.Worktime';
        }
        field(734; "DS/Prev. Periods save inactive"; Boolean)
        {
            Caption = 'DS/Prev. Periods save inactive';
        }
        field(735; "DS/Default-Daydate Today"; Boolean)
        {
            Caption = 'DS/Default-Daydate Today';
        }
        field(736; "DS/Sorting Output"; Option)
        {
            Caption = 'DS/Sorting Output';
            OptionCaption = ' ,Planning-Programs,Shift-Classification,Employee-No.,Name';
            OptionMembers = " ","Planning-Programs","Shift-Classification","Employee-No.",Name;
        }
        field(780; "CC/Soft-Term. License Type"; Option)
        {
            Caption = 'CC/Soft-Term. License Type';
            OptionCaption = 'Full User,Limited User';
            OptionMembers = "Full User","Limited User";
        }
        field(790; "CC/Soft-Term. Control"; Boolean)
        {
            Caption = 'CC/Soft-Term. Control';
        }
        field(800; "CC/Soft Term. Coming Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Coming Inactive';
        }
        field(801; "CC/Soft Term. Leaving Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Leaving Inactive';
        }
        field(802; "CC/Soft Term. Errand Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Errand Inactive';
        }
        field(803; "CC/Soft Term. Break Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Break Inactive';
        }
        field(804; "CC/Soft Term. Dept. Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Dept. Inactive';
        }
        field(805; "CC/Soft Term. Project Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. Project Inactive';
        }
        field(806; "CC/Soft Term. P. Info Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. P. Info Inactive';
        }
        field(807; "CC/Soft Term. Passw. Chg. ina."; Boolean)
        {
            Caption = 'CC/Soft Term. Passw. Chg. ina.';
        }
        field(808; "CC/Soft Term. Mk.Vac.Appl.ina."; Boolean)
        {
            Caption = 'CC/Soft Term. Mk.Vac.Appl.ina.';
        }
        field(809; "CC/Soft Term. A.Vac.Appl.ina."; Boolean)
        {
            Caption = 'CC/Soft Term. A.Vac.Appl.ina.';
        }
        field(810; "CC/Soft Term. Coming Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Coming Pos1-21';
        }
        field(811; "CC/Soft Term. Leaving Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Leaving Pos1-21';
        }
        field(812; "CC/Soft Term. Errand Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Errand Pos1-21';
        }
        field(813; "CC/Soft Term. Break Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Break Pos1-21';
        }
        field(814; "CC/Soft Term. Dept. Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Dept. Pos1-21';
        }
        field(815; "CC/Soft Term. Project Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Project Pos1-21';
        }
        field(816; "CC/Soft Term. P-Info Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. P-Info Pos1-21';
        }
        field(817; "CC/Soft Term. Pass.Chg.Pos1-21"; Integer)
        {
            Caption = 'CC/Soft Term. Pass.Chg.Pos1-21';
        }
        field(818; "CC/Soft-Term. Vac-M. Pos1-21"; Integer)
        {
            Caption = 'CC/Soft-Term. Vac-M. Pos1-21';
        }
        field(819; "CC/Soft-Term. Vac-A. Pos1-21"; Integer)
        {
            Caption = 'CC/Soft-Term. Vac-A. Pos1-21';
        }
        field(820; "CC/Soft Term. P. File Inactive"; Boolean)
        {
            Caption = 'CC/Soft Term. P. File Inactive';
        }
        field(830; "CC/Soft Term. Coming Color"; Option)
        {
            Caption = 'CC/Soft Term. Coming Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(831; "CC/Soft Term. Leaving Color"; Option)
        {
            Caption = 'CC/Soft Term. Leaving Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(832; "CC/Soft Term. Errand Color"; Option)
        {
            Caption = 'CC/Soft Term. Errand Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(833; "CC/Soft Term. Break Color"; Option)
        {
            Caption = 'CC/Soft Term. Break Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(834; "CC/Soft Term. Dept. Color"; Option)
        {
            Caption = 'CC/Soft Term. Dept. Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(835; "CC/Soft Term. Project Color"; Option)
        {
            Caption = 'CC/Soft Term. Project Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(836; "CC/Soft Term. P-Info Color"; Option)
        {
            Caption = 'CC/Soft Term. P-Info Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(837; "CC/Soft Term. Pass. Chg. Color"; Option)
        {
            Caption = 'CC/Soft Term. Pass. Chg. Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(838; "CC/Soft Term. Mk.Vac.Ap.Color"; Option)
        {
            Caption = 'CC/Soft Term. Mk.Vac.Ap.Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(839; "CC/Soft Term. Vac-A. Color"; Option)
        {
            Caption = 'CC/Soft Term. Vac-A. Color';
            OptionCaption = ' ,green,red,yellow,blue';
            OptionMembers = " ",green,red,yellow,blue;
        }
        field(849; "CC/ST TC Make Corr. Pos1-21"; Integer)
        {
            Caption = 'CC/ST TC Make Corr. Pos1-21';
        }
        field(850; "CC/ST TP Approve Corr. Pos1-21"; Integer)
        {
            Caption = 'CC/ST TP Approve Corr. Pos1-21';
        }
        field(851; "CC/ST Absence Pos1-21"; Integer)
        {
            Caption = 'CC/ST Absence Pos1-21';
        }
        field(852; "CC/ST FDC-Order Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Order Pos1-21';
        }
        field(853; "CC/ST FDC-Order Begin Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Order Begin Pos1-21';
        }
        field(854; "CC/ST FDC-Order End Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Order End Pos1-21';
        }
        field(855; "CC/ST FDC-Task List Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Task List Pos1-21';
        }
        field(856; "CC/ST FDC-Quantity Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Quantity Pos1-21';
        }
        field(857; "CC/ST FDC-Finished Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Finished Pos1-21';
        }
        field(858; "CC/ST FDC Barcode Inactive"; Boolean)
        {
            Caption = 'CC/ST FDC Barcode Inactive';
        }
        field(859; "CC/ST FDC Number-Block active"; Option)
        {
            Caption = 'CC/ST FDC Number-Block active';
            OptionCaption = ' ,Time Management,FDC,Time Management/FDC';
            OptionMembers = " ","Time Management",FDC,"Time Management/FDC";
        }
        field(860; "CC/ST FDC-Collect Beg. Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Collect Beg. Pos1-21';
        }
        field(861; "CC/ST FDC-Collect End Pos1-21"; Integer)
        {
            Caption = 'CC/ST FDC-Collect End Pos1-21';
        }
        field(890; "CC/EmplInfo Control"; Boolean)
        {
            Caption = 'CC/EmplInfo Control';
        }
        field(900; "GE/EmplInfo ComeOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ComeOrig Inactive';
        }
        field(901; "GE/EmplInfo ComeAct Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ComeAct Inactive';
        }
        field(902; "GE/EmplInfo ComeRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ComeRef Inactive';
        }
        field(903; "GE/EmplInfo LeaveOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo LeaveOrig Inactive';
        }
        field(904; "GE/EmplInfo LeaveAct Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo LeaveAct Inactive';
        }
        field(905; "GE/EmplInfo LeaveRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo LeaveRef Inactive';
        }
        field(906; "GE/EmplInfo ErrOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ErrOrig Inactive';
        }
        field(907; "GE/EmplInfo ErrRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo ErrRef Inactive';
        }
        field(908; "GE/EmplInfo DeptOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo DeptOrig Inactive';
        }
        field(909; "GE/EmplInfo DeptRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo DeptRef Inactive';
        }
        field(910; "GE/EmplInfo DeptEntry Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo DeptEntry Inactive';
        }
        field(911; "GE/EmplInfo BreOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo BreOrig Inactive';
        }
        field(912; "GE/EmplInfo BreRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo BreRef Inactive';
        }
        field(913; "GE/EmplInfo AccOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo AccOrig Inactive';
        }
        field(914; "GE/EmplInfo AccRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo AccRef Inactive';
        }
        field(915; "GE/EmplInfo OBegOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo OBegOrig Inactive';
        }
        field(916; "GE/EmplInfo Parallel Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Parallel Inactive';
        }
        field(917; "GE/EmplInfo OBegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo OBegEnt Inactive';
        }
        field(918; "GE/EmplInfo TaBegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo TaBegEnt Inactive';
        }
        field(919; "GE/EmplInfo D1BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D1BegEnt Inactive';
        }
        field(920; "GE/EmplInfo D2BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D2BegEnt Inactive';
        }
        field(921; "GE/EmplInfo D3BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D3BegEnt Inactive';
        }
        field(922; "GE/EmplInfo D4BegEnt Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo D4BegEnt Inactive';
        }
        field(923; "GE/EmplInfo InfoOrig Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo InfoOrig Inactive';
        }
        field(924; "GE/EmplInfo InfoRef Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo InfoRef Inactive';
        }
        field(925; "GE/EmplInfo InfoInp Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo InfoInp Inactive';
        }
        field(926; "GE/EmplInfo Quantity Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Quantity Inactive';
        }
        field(927; "GE/EmplInfo Time Acc. Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Time Acc. Inactive';
        }
        field(928; "GE/EmplInfo Serial Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Serial Inactive';
        }
        field(929; "GE/EmplInfo Scrap Inactive"; Boolean)
        {
            Caption = 'GE/EmplInfo Scrap Inactive';
        }
        field(1000; "Form Setup Vol 1 Inactive"; Boolean)
        {
            Caption = 'Form Setup Vol 1 Inactive';
        }
        field(1001; "Form Setup Vol 2 Inactive"; Boolean)
        {
            Caption = 'Form Setup Vol 2 Inactive';
        }
        field(1002; "Form Install-Guide Inactive"; Boolean)
        {
            Caption = 'Form Install-Guide Inactive';
        }
        field(1003; "Form User Inactive"; Boolean)
        {
            Caption = 'Form User Inactive';
        }
        field(1004; "Form Calendar Inactive"; Boolean)
        {
            Caption = 'Form Calendar Inactive';
        }
        field(1010; "Form Employee Inactive"; Boolean)
        {
            Caption = 'Form Employee Inactive';
        }
        field(1011; "Form Departments Inactive"; Boolean)
        {
            Caption = 'Form Departments Inactive';
        }
        field(1012; "Form Divisions Inactive"; Boolean)
        {
            Caption = 'Form Divisions Inactive';
        }
        field(1013; "Form Activities Inactive"; Boolean)
        {
            Caption = 'Form Activities Inactive';
        }
        field(1014; "Form Companies Inactive"; Boolean)
        {
            Caption = 'Form Companies Inactive';
        }
        field(1015; "Form Pay Groups Inactive"; Boolean)
        {
            Caption = 'Form Pay Groups Inactive';
        }
        field(1016; "Form Groups 1 Inactive"; Boolean)
        {
            Caption = 'Form Groups 1 Inactive';
        }
        field(1017; "Form Groups 2 Inactive"; Boolean)
        {
            Caption = 'Form Groups 2 Inactive';
        }
        field(1018; "Form Groups 3 Inactive"; Boolean)
        {
            Caption = 'Form Groups 3 Inactive';
        }
        field(1019; "Form Employee Fields Inactive"; Boolean)
        {
            Caption = 'Form Employee Fields Inactive';
        }
        field(1020; "Form Terminals Inactive"; Boolean)
        {
            Caption = 'Form Terminals Inactive';
        }
        field(1021; "Form Terminals Alloc. Inactive"; Boolean)
        {
            Caption = 'Form Terminals Alloc. Inactive';
        }
        field(1022; "Form Key References Inactive"; Boolean)
        {
            Caption = 'Form Key References Inactive';
        }
        field(1030; "Form Structure Inactive"; Boolean)
        {
            Caption = 'Form Structure Inactive';
        }
        field(1031; "Form Time Accounts Inactive"; Boolean)
        {
            Caption = 'Form Time Accounts Inactive';
        }
        field(1032; "Form TA-Groups Inactive"; Boolean)
        {
            Caption = 'Form TA-Groups Inactive';
        }
        field(1033; "Form Time Objects Inactive"; Boolean)
        {
            Caption = 'Form Time Objects Inactive';
        }
        field(1034; "Form Alternatives Inactive"; Boolean)
        {
            Caption = 'Form Alternatives Inactive';
        }
        field(1035; "Form Day Objects Inactive"; Boolean)
        {
            Caption = 'Form Day Objects Inactive';
        }
        field(1036; "Form Target Objects Inactive"; Boolean)
        {
            Caption = 'Form Target Objects Inactive';
        }
        field(1037; "Form Break Objects Inactive"; Boolean)
        {
            Caption = 'Form Break Objects Inactive';
        }
        field(1038; "Form Rounding Groups Inactive"; Boolean)
        {
            Caption = 'Form Rounding Groups Inactive';
        }
        field(1039; "Form Rounding Objects Inactive"; Boolean)
        {
            Caption = 'Form Rounding Objects Inactive';
        }
        field(1040; "Form CASE Inactive"; Boolean)
        {
            Caption = 'Form CASE Inactive';
        }
        field(1041; "Form Algorithms Inactive"; Boolean)
        {
            Caption = 'Form Algorithms Inactive';
        }
        field(1042; "Form Org-Groups Inactive"; Boolean)
        {
            Caption = 'Form Org-Groups Inactive';
        }
        field(1043; "Form Time Grids Inactive"; Boolean)
        {
            Caption = 'Form Time Grids Inactive';
        }
        field(1044; "Form Time Types Inactive"; Boolean)
        {
            Caption = 'Form Time Types Inactive';
        }
        field(1050; "Form Time Processing Inactive"; Boolean)
        {
            Caption = 'Form Time Processing Inactive';
        }
        field(1051; "Form Time Correction Inactive"; Boolean)
        {
            Caption = 'Form Time Correction Inactive';
        }
        field(1052; "Form Empl. Planning Inactive"; Boolean)
        {
            Caption = 'Form Empl. Planning Inactive';
        }
        field(1053; "Form Shift Scheduling Inactive"; Boolean)
        {
            Caption = 'Form Shift Scheduling Inactive';
        }
        field(1054; "Form Duty Scheduling Inactive"; Boolean)
        {
            Caption = 'Form Duty Scheduling Inactive';
        }
        field(1055; "Form Soft-Terminal Inactive"; Boolean)
        {
            Caption = 'Form Soft-Terminal Inactive';
        }
        field(1060; "Form Pres-Time List Inactive"; Boolean)
        {
            Caption = 'Form Pres-Time List Inactive';
        }
        field(1061; "Form Pres-Time Board Inactive"; Boolean)
        {
            Caption = 'Form Pres-Time Board Inactive';
        }
        field(1062; "Form Management-Info Inactive"; Boolean)
        {
            Caption = 'Form Management-Info Inactive';
        }
        field(1063; "Form Time Clockings Inactive"; Boolean)
        {
            Caption = 'Form Time Clockings Inactive';
        }
        field(1064; "Form TA-Sums Inactive"; Boolean)
        {
            Caption = 'Form TA-Sums Inactive';
        }
        field(1065; "Form TA-Comparison Inactive"; Boolean)
        {
            Caption = 'Form TA-Comparison Inactive';
        }
        field(1066; "Form TA-Matrix Inactive"; Boolean)
        {
            Caption = 'Form TA-Matrix Inactive';
        }
        field(1067; "Form TA-Graphical Inactive"; Boolean)
        {
            Caption = 'Form TA-Graphical Inactive';
        }
        field(1068; "Form TA-Annual List Inactive"; Boolean)
        {
            Caption = 'Form TA-Annual List Inactive';
        }
        field(1069; "Form Abs. Days Matrix Inactive"; Boolean)
        {
            Caption = 'Form Abs. Days Matrix Inactive';
        }
        field(1070; "Form Balances Query Inactive"; Boolean)
        {
            Caption = 'Form Balances Query Inactive';
        }
        field(1071; "Form Open Entries Inactive"; Boolean)
        {
            Caption = 'Form Open Entries Inactive';
        }
        field(1072; "Code Open Appl. Inactive"; Boolean)
        {
            Caption = 'Code Open Appl. Inactive';
        }
        field(1073; "Form Vac-Days Matrix Inactive"; Boolean)
        {
            Caption = 'Form Vac-Days Matrix Inactive';
        }
        field(1080; "Form Period Evaluate Inactive"; Boolean)
        {
            Caption = 'Form Period Evaluate Inactive';
        }
        field(1081; "Form Time Corr. Tab. Inactive"; Boolean)
        {
            Caption = 'Form Time Corr. Tab. Inactive';
        }
        field(1082; "Form Time Journal Inactive"; Boolean)
        {
            Caption = 'Form Time Journal Inactive';
        }
        field(1083; "Form Order Journal Inactive"; Boolean)
        {
            Caption = 'Form Order Journal Inactive';
        }
        field(1084; "Form AD-Matrix anonym Inactive"; Boolean)
        {
            Caption = 'Form AD-Matrix anonym Inactive';
        }
        field(1085; "Form Plan C. Org-Form Inactive"; Boolean)
        {
            Caption = 'Form Plan C. Org-Form Inactive';
        }
        field(1086; "Form Term. Services Inactive"; Boolean)
        {
            Caption = 'Form Term. Services Inactive';
        }
        field(1087; "Form Data Defaults Inactive"; Boolean)
        {
            Caption = 'Form Data Defaults Inactive';
        }
        field(1088; "Form Table Init. Inactive"; Boolean)
        {
            Caption = 'Form Table Init. Inactive';
        }
        field(1089; "Form Mail Entry Inactive"; Boolean)
        {
            Caption = 'Form Mail Entry Inactive';
        }
        field(1090; "Form Transfer Inactive"; Boolean)
        {
            Caption = 'Form Transfer Inactive';
        }
        field(1091; "Form Transfer editable"; Boolean)
        {
            Caption = 'Form Transfer editable';
        }
        field(1100; "Report Address List Inactive"; Boolean)
        {
            Caption = 'Report Address List Inactive';
        }
        field(1101; "Report Birthday List Inactive"; Boolean)
        {
            Caption = 'Report Birthday List Inactive';
        }
        field(1102; "Report Vacation List Inactive"; Boolean)
        {
            Caption = 'Report Vacation List Inactive';
        }
        field(1103; "Report Rem. Vacation Inactive"; Boolean)
        {
            Caption = 'Report Rem. Vacation Inactive';
        }
        field(1104; "Report Employee Grp. Inactive"; Boolean)
        {
            Caption = 'Report Employee Grp. Inactive';
        }
        field(1105; "Report Empl. T-Obj. Inactive"; Boolean)
        {
            Caption = 'Report Empl. T-Obj. Inactive';
        }
        field(1106; "Report Empl. Terminal Inactive"; Boolean)
        {
            Caption = 'Report Empl. Terminal Inactive';
        }
        field(1110; "Report Day Report Inactive"; Boolean)
        {
            Caption = 'Report Day Report Inactive';
        }
        field(1111; "Report Break Report Inactive"; Boolean)
        {
            Caption = 'Report Break Report Inactive';
        }
        field(1112; "Report Weekly Report Inactive"; Boolean)
        {
            Caption = 'Report Weekly Report Inactive';
        }
        field(1113; "Report Pres-Time List Inactive"; Boolean)
        {
            Caption = 'Report Pres-Time List Inactive';
        }
        field(1114; "Report Pres./Abs. Log Inactive"; Boolean)
        {
            Caption = 'Report Pres./Abs. Log Inactive';
        }
        field(1120; "Report Time C.Std. Inactive"; Boolean)
        {
            Caption = 'Report Time C.Std. Inactive';
        }
        field(1121; "Report Time C.Week.L. Inactive"; Boolean)
        {
            Caption = 'Report Time C.Week.L. Inactive';
        }
        field(1122; "Report Time C.Week.S. Inactive"; Boolean)
        {
            Caption = 'Report Time C.Week.S. Inactive';
        }
        field(1123; "Report Time C.Indiv. Inactive"; Boolean)
        {
            Caption = 'Report Time C.Indiv. Inactive';
        }
        field(1124; "Report Time C.Portra. Inactive"; Boolean)
        {
            Caption = 'Report Time C.Portra. Inactive';
        }
        field(1125; "Report Time C.Landsc. Inactive"; Boolean)
        {
            Caption = 'Report Time C.Landsc. Inactive';
        }
        field(1130; "Report Abs-Calendar Inactive"; Boolean)
        {
            Caption = 'Report Abs-Calendar Inactive';
        }
        field(1131; "Report Abs-Monthly OV Inactive"; Boolean)
        {
            Caption = 'Report Abs-Monthly OV Inactive';
        }
        field(1132; "Report Abs-Annual OV Inactive"; Boolean)
        {
            Caption = 'Report Abs-Annual OV Inactive';
        }
        field(1133; "Report Abs-Comparison Inactive"; Boolean)
        {
            Caption = 'Report Abs-Comparison Inactive';
        }
        field(1140; "Report TA Periodic Inactive"; Boolean)
        {
            Caption = 'Report TA Periodic Inactive';
        }
        field(1141; "Report TA Daily Inactive"; Boolean)
        {
            Caption = 'Report TA Daily Inactive';
        }
        field(1142; "Report TA Report Inactive"; Boolean)
        {
            Caption = 'Report TA Report Inactive';
        }
        field(1143; "Report Payroll Reg. Inactive"; Boolean)
        {
            Caption = 'Report Payroll Reg. Inactive';
        }
        field(1144; "Report Time Register Inactive"; Boolean)
        {
            Caption = 'Report Time Register Inactive';
        }
        field(1150; "Report Shift Schedul. Inactive"; Boolean)
        {
            Caption = 'Report Shift Schedul. Inactive';
        }
        field(1151; "Report Access Report Inactive"; Boolean)
        {
            Caption = 'Report Access Report Inactive';
        }
        field(1160; "Report Dept. Change Inactive"; Boolean)
        {
            Caption = 'Report Dept. Change Inactive';
        }
        field(1161; "Report Dept. Period Inactive"; Boolean)
        {
            Caption = 'Report Dept. Period Inactive';
        }
        field(1162; "Report Empl/Dept/Date Inactive"; Boolean)
        {
            Caption = 'Report Empl/Dept/Date Inactive';
        }
        field(1163; "Report Dept/Empl/Date Inactive"; Boolean)
        {
            Caption = 'Report Dept/Empl/Date Inactive';
        }
        field(1164; "Report Empl/Date/Dept Inactive"; Boolean)
        {
            Caption = 'Report Empl/Date/Dept Inactive';
        }
        field(1165; "Report Empl/Dept/Per. Inactive"; Boolean)
        {
            Caption = 'Report Empl/Dept/Per. Inactive';
        }
        field(1166; "Report Dept/Per. w.TA Inactive"; Boolean)
        {
            Caption = 'Report Dept/Per. w.TA Inactive';
        }
        field(1170; "Report Order Report Inactive"; Boolean)
        {
            Caption = 'Report Order Report Inactive';
        }
        field(1171; "Report Order Rep. No. Inactive"; Boolean)
        {
            Caption = 'Report Order Rep. No. Inactive';
        }
        field(1172; "Report Order Rep. Dt. Inactive"; Boolean)
        {
            Caption = 'Report Order Rep. Dt. Inactive';
        }
        field(1173; "Report Task Rep. No. Inactive"; Boolean)
        {
            Caption = 'Report Task Rep. No. Inactive';
        }
        field(1174; "Report Task Rep. Dt. Inactive"; Boolean)
        {
            Caption = 'Report Task Rep. Dt. Inactive';
        }
        field(1175; "Report WF-Control Inactive"; Boolean)
        {
            Caption = 'Report Workflow-Control Inactive';
        }
        field(1176; "Report Abs.Req.Overv. Inactive"; Boolean)
        {
            Caption = 'Absent Request Overview Inactive';
        }
        field(1500; "Filter Time Account Groups"; Text[80])
        {
            Caption = 'Filter Time Account Groups';
        }
        field(1510; "Filter Time Objects"; Text[80])
        {
            Caption = 'Filter Time Objects';
        }
        field(1520; "Filter Alternatives"; Text[80])
        {
            Caption = 'Filter Alternatives';
        }
        field(1530; "Filter Day Objects"; Text[80])
        {
            Caption = 'Filter Day Objects';
        }
        field(1540; "Filter Target Objects"; Text[80])
        {
            Caption = 'Filter Target Objects';
        }
        field(1550; "Filter Break Objects"; Text[80])
        {
            Caption = 'Filter Break Objects';
        }
        field(1560; "Filter Rounding Groups"; Text[80])
        {
            Caption = 'Filter Rounding Groups';
        }
        field(1570; "Filter Rounding Objects"; Text[80])
        {
            Caption = 'Filter Rounding Objects';
        }
        field(1571; "Filter Time Accounts"; Text[80])
        {
            Caption = 'Filter Time Accounts';
        }
        field(1575; "Filter Department No"; Text[80])
        {
            Caption = 'Filter Department No';
        }
        field(9990; RecordDateModify; Date)
        {
            Caption = 'RecordDateModify';
            Editable = false;
        }
        field(9991; RecordTimeModify; Time)
        {
            Caption = 'RecordTimeModify';
            Editable = false;
        }
        field(9992; RecordUserNoModify; Code[50])
        {
            Caption = 'RecordUserNoModify';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(50000; "Form Comments MAG inactive"; Boolean)
        {
            Caption = 'Form Comments MAG inactive';
        }
        field(50001; "Form Comments inactive"; Boolean)
        {
            Caption = 'Form Comments inactive';
        }
        field(50002; "Form Employee HUK"; Boolean)
        {
            Caption = 'Form Employee Inactive HUK';
        }
    }

    keys
    {
        key(Key1; "User No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

