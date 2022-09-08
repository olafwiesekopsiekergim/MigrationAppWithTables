table 5056260 "Employee/T"
{
    // //SK01 tempras 09.11.2017 neue Felder 50001 und 50002
    // //SK02 tempras 02.07.2018 neues Feld 50005
    // //#AT added BVWPass and Nationality Description 26.06.2018
    // //#AT added Krankenkasse 13.02.2020

    Caption = 'Employee';
    DataCaptionFields = "No.", Name;
    Description = 'GrEmployee';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "ID No."; Code[20])
        {
            Caption = 'ID No.';
        }
        field(3; "Search Item"; Code[30])
        {
            Caption = 'Search Item';
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(5; "Last Name"; Text[30])
        {
            Caption = 'Last Name';
        }
        field(6; "First Name"; Text[30])
        {
            Caption = 'First Name';
        }
        field(7; Street; Text[50])
        {
            Caption = 'Street';
        }
        field(8; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code".Code;
            ValidateTableRelation = false;
        }
        field(9; City; Text[30])
        {
            Caption = 'City';
        }
        field(10; "Company Phone No."; Text[30])
        {
            Caption = 'Company Phone No.';
        }
        field(11; "Private Phone No."; Text[30])
        {
            Caption = 'Private Phone No.';
        }
        field(12; Fax; Text[30])
        {
            Caption = 'Fax';
        }
        field(13; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(14; Homepage; Text[80])
        {
            Caption = 'Homepage';
        }
        field(15; Sex; Option)
        {
            Caption = 'Sex';
            OptionCaption = ' ,female,male';
            OptionMembers = " ",female,male;
        }
        field(16; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(17; "Employee No. - Payroll"; Text[20])
        {
            Caption = 'Employee No. - Payroll';
        }
        field(18; "Target Company - Payroll"; Text[30])
        {
            Caption = 'Target Company - Payroll';
            TableRelation = Company;
        }
        field(19; "Destination Journal - Payroll"; Code[10])
        {
            Caption = 'Destination Journal - Payroll';
        }
        field(20; "IE/Def. Task Type TP"; Code[20])
        {
            Caption = 'IE/Def. Task Type TP';
        }
        field(21; "Destination Company - Sync."; Text[30])
        {
            Caption = 'Destination Company - Sync.';
            TableRelation = Company;
        }
        field(22; "Employee No. - Resource"; Code[20])
        {
            Caption = 'Employee No. - Resource';
            TableRelation = Resource."No.";
            ValidateTableRelation = false;
        }
        field(23; "Rented Empl. (Duty Scheduling)"; Boolean)
        {
            Caption = 'Rented Empl. (Duty Scheduling)';
        }
        field(24; "Vaca.Car.Fwd.Prev.Y. Inactive"; Boolean)
        {
            Caption = 'Vaca.Car.Fwd.Prev.Y. Inactive';
        }
        field(25; "Soft-Term. Coming Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Coming Inactive';
        }
        field(26; "Soft-Term. Leaving Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Leaving Inactive';
        }
        field(27; "Soft-Term. Errand Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Errand Inactive';
        }
        field(28; "Soft-Term. Break Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Break Inactive';
        }
        field(29; "Soft-Term. Dept. Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Dept. Inactive';
        }
        field(30; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(31; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(32; "Leaving Date"; Date)
        {
            Caption = 'Leaving Date';
        }
        field(33; "Begin of Plan Continuation"; Date)
        {
            Caption = 'Begin of Plan Continuation';
        }
        field(34; "Begin Special Day Continuation"; Date)
        {
            Caption = 'Begin Special Day Continuation';
        }
        field(35; "Fixed-term Contract until"; Date)
        {
            Caption = 'Fixed-term Contract until';
        }
        field(36; "Medical Checkup"; Date)
        {
            Caption = 'Medical Checkup';
        }
        field(37; "Begin Time of Probation"; Date)
        {
            Caption = 'Begin Time of Probation';
        }
        field(38; "End Time of Probation"; Date)
        {
            Caption = 'End Time of Probation';
        }
        field(39; "Begin Work Permit"; Date)
        {
            Caption = 'Begin Work Permit';
        }
        field(40; "End Work Permit"; Date)
        {
            Caption = 'End Work Permit';
        }
        field(41; "Begin Integration"; Date)
        {
            Caption = 'Begin Integration';
        }
        field(42; "End Integration"; Date)
        {
            Caption = 'End Integration';
        }
        field(43; "Begin altern. Vac. Year"; Date)
        {
            Caption = 'Begin altern. Vac. Year';
        }
        field(44; "End altern. Vac. Year"; Date)
        {
            Caption = 'End altern. Vac. Year';
        }
        field(45; "Working Days / Week"; Integer)
        {
            Caption = 'Working Days / Week';
        }
        field(46; "Contract No. - Payroll"; Code[10])
        {
            Caption = 'Contract No. - Payroll';
        }
        field(47; "Employee No. - Resource EUID"; Integer)
        {
            BlankZero = true;
            Caption = 'Employee No. - Resource EUID';
        }
        field(48; "MS-Project Import Inactive"; Boolean)
        {
            BlankZero = true;
            Caption = 'MS-Project Import Inactive';
        }
        field(49; "Vacation in Hours"; Boolean)
        {
            Caption = 'Vacation in Hours';
        }
        field(50; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(51; "Department Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Department No."),
                                                                     "Org-Form Type" = CONST (Department)));
            Caption = 'Department Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(52; "Division No."; Code[10])
        {
            Caption = 'Division No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(53; "Division Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Division No."),
                                                                     "Org-Form Type" = CONST (Division)));
            Caption = 'Division Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(54; "Activity No."; Code[10])
        {
            Caption = 'Activity No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(55; "Activity Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Activity No."),
                                                                     "Org-Form Type" = CONST (Activity)));
            Caption = 'Activity Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(56; "Company No."; Code[10])
        {
            Caption = 'Company No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(57; "Company Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Company No."),
                                                                     "Org-Form Type" = CONST (Company)));
            Caption = 'Company Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(58; "Pay Group No."; Code[10])
        {
            Caption = 'Pay Group No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(59; "Pay Group Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Pay Group No."),
                                                                     "Org-Form Type" = CONST ("Pay Group")));
            Caption = 'Pay Group Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; "State No."; Option)
        {
            Caption = 'State No.';
            Description = 'OptionString Element 1 to 20 reserved for Germany';
            OptionCaption = ' ,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,SWISS,AUSTRIA,POL,ENG,FRA,ITA,ESP,TUN,CZ,USA,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50';
            OptionMembers = " ","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",SWISS,AUSTRIA,POL,ENG,FRA,ITA,ESP,TUN,CZ,USA,"31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50";
        }
        field(61; "Group No. 1"; Code[10])
        {
            Caption = 'Group No. 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(62; "Group Description 1"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Group No. 1"),
                                                                     "Org-Form Type" = CONST ("Group 1")));
            Caption = 'Group Description 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Group No. 2"; Code[10])
        {
            Caption = 'Group No. 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(64; "Group Description 2"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Group No. 2"),
                                                                     "Org-Form Type" = CONST ("Group 2")));
            Caption = 'Group Description 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65; "Group No. 3"; Code[10])
        {
            Caption = 'Group No. 3';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(66; "Group Description 3"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Group No. 3"),
                                                                     "Org-Form Type" = CONST ("Group 3")));
            Caption = 'Group Description 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67; "Time Object No."; Code[10])
        {
            Caption = 'Time Object No.';
            TableRelation = "Time Object/T"."No.";
        }
        field(68; "Time Object Description"; Text[10])
        {
            CalcFormula = Lookup ("Time Object/T"."Description 2" WHERE ("No." = FIELD ("Time Object No.")));
            Caption = 'Time Object Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(69; "Key Reference No."; Code[10])
        {
            Caption = 'Key Reference No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Key Reference"));
        }
        field(71; "Sorting Planning Programs"; Integer)
        {
            Caption = 'Sorting Planning Programs';
        }
        field(72; "Day Object on Pub. Holidays"; Code[10])
        {
            Caption = 'Day Object on Pub. Holidays';
            TableRelation = "Day Object/T"."No.";
        }
        field(73; "Employee User ID"; Code[50])
        {
            Caption = 'Employee User ID';
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
        field(74; "Bar Code Coming Clocking"; Code[20])
        {
            Caption = 'Bar Code Coming Clocking';
        }
        field(75; "Bar Code Leaving Clocking"; Code[20])
        {
            Caption = 'Bar Code Leaving Clocking';
        }
        field(76; "Destination Journal - FDC"; Option)
        {
            Caption = 'Destination Journal - FDC';
            OptionCaption = ' ,Output Journal,Job Journal';
            OptionMembers = " ","Output Journal","Job Journal";
        }
        field(77; "Company Reference"; Option)
        {
            Caption = 'Company Reference';
            OptionCaption = ' ,Main Company,Alternative Company';
            OptionMembers = " ","Main Company","Alternative Company";
        }
        field(78; "FDC Permissions"; Option)
        {
            Caption = 'FDC Permissions';
            OptionCaption = ' ,Order finishing,Task finishing';
            OptionMembers = " ","Order finishing","Task finishing";
        }
        field(79; "Dynamic Agreed Vacation"; Option)
        {
            Caption = 'Dynamic Agreed Vacation';
            OptionCaption = ' ,Jan-Nov 2 Dec 3';
            OptionMembers = " ","Jan-Nov 2 Dec 3";
        }
        field(80; "Std. Vac. Entitlem. Days"; Decimal)
        {
            Caption = 'Std. Vac. Entitlem. Days';
        }
        field(81; "Handic. Vac. Entitlem. Days"; Decimal)
        {
            Caption = 'Handic. Vac. Entitlem. Days';
        }
        field(82; "Vacation Payed Days"; Decimal)
        {
            Caption = 'Vacation Payed Days';
        }
        field(83; "Spec. Vac.3 Entitlem. Days"; Decimal)
        {
            Caption = 'Spec. Vac.3 Entitlem. Days';
        }
        field(84; "Std.Vac.Days Car.Fwd.Prev.Y."; Decimal)
        {
            Caption = 'Std.Vac.Days Car.Fwd.Prev.Y.';
        }
        field(85; "Handic. Vac.1 Days Car. Fwd."; Decimal)
        {
            Caption = 'Handic. Vac.1 Days Car. Fwd.';
        }
        field(86; "Vacation Expired Days"; Decimal)
        {
            Caption = 'Vacation Expired Days';
        }
        field(87; "Vacation Add. Limited Days"; Decimal)
        {
            Caption = 'Vacation Add. Limited Days';
        }
        field(88; "Standard Vac. Days taken"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Agreed Vacation"),
                                                                         "Current Date" = FIELD ("Vacation Taken - Filter")));
            Caption = 'Standard Vac. Days taken';
            Editable = false;
            FieldClass = FlowField;
        }
        field(89; "Handic. Vac. 1 Days taken"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Special Vacation 1"),
                                                                         "Current Date" = FIELD ("Vacation Taken - Filter")));
            Caption = 'Handic. Vac. 1 Days taken';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Special Vac. 2 Days taken"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Special Vacation 2"),
                                                                         "Current Date" = FIELD ("Vacation Taken - Filter")));
            Caption = 'Special Vac. 2 Days taken';
            Editable = false;
            FieldClass = FlowField;
        }
        field(91; "Special Vac. 3 Days taken"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Special Vacation 3"),
                                                                         "Current Date" = FIELD ("Vacation Taken - Filter")));
            Caption = 'Special Vac. 3 Days taken';
            Editable = false;
            FieldClass = FlowField;
        }
        field(92; "Rem. Vac. Days taken"; Decimal)
        {
            Caption = 'Rem. Vac. Days taken';
        }
        field(93; "Standard Vac. Days planned"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Agreed Vacation"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Standard Vac. Days planned';
            Editable = false;
            FieldClass = FlowField;
        }
        field(94; "Handic. Vac. 1 Days planned"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Special Vacation 1"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Handic. Vac. 1 Days planned';
            Editable = false;
            FieldClass = FlowField;
        }
        field(95; "Special Vac. 2 Days planned"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Special Vacation 2"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Special Vac. 2 Days planned';
            Editable = false;
            FieldClass = FlowField;
        }
        field(96; "Special Vac. 3 Days planned"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Special Vacation 3"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Special Vac. 3 Days planned';
            Editable = false;
            FieldClass = FlowField;
        }
        field(97; "Rem. Vac. Days planned"; Decimal)
        {
            Caption = 'Rem. Vac. Days planned';
        }
        field(98; "Standard Vac. Entitlement Hrs."; Decimal)
        {
            Caption = 'Standard Vac. Entitlement Hrs.';
        }
        field(99; "Handic. Vac.1 Entitlement Hrs."; Decimal)
        {
            Caption = 'Handic. Vac.1 Entitlement Hrs.';
        }
        field(100; "Special Vac.2 Entitlement (H)"; Decimal)
        {
            Caption = 'Special Vac.2 Entitlement (H)';
        }
        field(101; "Std. Vac.Car.Fwd.Prev.Y.(H)"; Decimal)
        {
            Caption = 'Std. Vac.Car.Fwd.Prev.Y.(H)';
        }
        field(102; "Handic. Vac.1 Hours Car. Fwd."; Decimal)
        {
            Caption = 'Handic. Vac.1 Hours Car. Fwd.';
        }
        field(103; "Spec. Vac.2 Hours Car. Fwd."; Decimal)
        {
            Caption = 'Spec. Vac.2 Hours Car. Fwd.';
        }
        field(104; "Standard Vac. Hours taken"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Vacation in Hours"),
                                                                         "Current Date" = FIELD ("Vacation Taken - Filter")));
            Caption = 'Standard Vac. Hours taken';
            Editable = false;
            FieldClass = FlowField;
        }
        field(105; "Rem. Vac. Hours taken"; Decimal)
        {
            Caption = 'Rem. Vac. Hours taken';
        }
        field(106; "Standard Vac. Hours plan."; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Reduction Vacation in Hours"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Standard Vac. Hours plan.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "Rem. Vac. Hrs. Planned"; Decimal)
        {
            Caption = 'Rem. Vac. Hrs. Planned';
        }
        field(108; "Adaptation Vacation Hours"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Adaptation Vacation in Hours"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Adaptation Vacation Hours';
            Editable = false;
            FieldClass = FlowField;
        }
        field(109; "Plan Cont. manual Active"; Boolean)
        {
            Caption = 'Plan Cont. manual Active';
        }
        field(110; "Rem. Handic. Vac. Days taken"; Decimal)
        {
            Caption = 'Rem. Handic. Vac. Days taken';
        }
        field(111; "Rem. Handic. Vac. Days planned"; Decimal)
        {
            Caption = 'Rem. Handic. Vac. Days planned';
        }
        field(112; "Options Auto. Day Finished"; Option)
        {
            Caption = 'Options Auto. Day Finished';
            OptionCaption = ' ,Productive and Unproductive,Productive,Unproductive,Coming/Leaving Continuation';
            OptionMembers = " ","Productive and Unproductive",Productive,Unproductive,"Coming/Leaving Continuation";
        }
        field(113; "Coming Clocking Day Finished"; Time)
        {
            Caption = 'Coming Clocking Day Finished';
        }
        field(114; "Leaving Clocking Day Finished"; Time)
        {
            Caption = 'Leaving Clocking Day Finished';
        }
        field(115; "Order Continuation Inactive"; Boolean)
        {
            Caption = 'Order Continuation Inactive';
        }
        field(116; "Soft-Term. Make Vac. Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Make Vac. Inactive';
        }
        field(117; "Soft-Term. Passw. Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Passw. Inactive';
        }
        field(118; "Soft-Term. Order Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Order Inactive';
        }
        field(119; "Payroll Integration Inactive"; Boolean)
        {
            Caption = 'Payroll Integration Inactive';
        }
        field(120; "Absent Integration Inactive"; Boolean)
        {
            Caption = 'Absent Integration Inactive';
        }
        field(121; "End of Last Plan Continuation"; Date)
        {
            Caption = 'End of Last Plan Continuation';
        }
        field(122; "End of last Special Day Cont."; Date)
        {
            Caption = 'End of last Special Day Cont.';
        }
        field(123; "Date of Last Change"; Date)
        {
            Caption = 'Date of Last Change';
            Editable = false;
        }
        field(124; "Time of Last Change"; Time)
        {
            Caption = 'Time of Last Change';
            Editable = false;
        }
        field(125; "User No. of Last Change"; Code[50])
        {
            Caption = 'User No. of Last Change';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(126; "Date of Last Processing"; Date)
        {
            Caption = 'Date of Last Processing';
        }
        field(127; "Duty Scheduling Inactive"; Boolean)
        {
            Caption = 'Duty Scheduling Inactive';
        }
        field(128; "Synchronization Inactive"; Boolean)
        {
            Caption = 'Synchronization Inactive';
        }
        field(129; "Access Data Active"; Boolean)
        {
            Caption = 'Access Data Active';
        }
        field(130; "All Modules Inactive"; Boolean)
        {
            Caption = 'All Modules Inactive';
        }
        field(131; "Employee Planning Inactive"; Boolean)
        {
            Caption = 'Employee Planning Inactive';
        }
        field(132; "Terminal Acquisition Inactive"; Boolean)
        {
            Caption = 'Terminal Acquisition Inactive';
        }
        field(133; "Time Processing Inactive"; Boolean)
        {
            Caption = 'Time Processing Inactive';
        }
        field(134; "Values Car. Fwd. Inactive"; Boolean)
        {
            Caption = 'Values Car. Fwd. Inactive';
        }
        field(135; "Payroll/Absent Int. Inactive"; Boolean)
        {
            Caption = 'Payroll/Absent Int. Inactive';
        }
        field(136; "Reports Inactive"; Boolean)
        {
            Caption = 'Reports Inactive';
        }
        field(137; "Autom. Plan Cont. Inactive"; Boolean)
        {
            Caption = 'Autom. Plan Cont. Inactive';
        }
        field(138; "Integration FDC Inactive"; Boolean)
        {
            Caption = 'Integration FDC Inactive';
        }
        field(139; "Integr. FDC unprod. Inactive"; Boolean)
        {
            Caption = 'Integr. FDC unprod. Inactive';
        }
        field(140; "Soft Terminal Password"; Text[20])
        {
            Caption = 'Soft Terminal Password';
        }
        field(141; "Monday Absent Days Hours"; Decimal)
        {
            Caption = 'Monday Absent Days Hours';
        }
        field(142; "Tuesday Absent Days Hours"; Decimal)
        {
            Caption = 'Tuesday Absent Days Hours';
        }
        field(143; "Wednesday Absent Days Hours"; Decimal)
        {
            Caption = 'Wednesday Absent Days Hours';
        }
        field(144; "Thursday Absent Days Hours"; Decimal)
        {
            Caption = 'Thursday Absent Days Hours';
        }
        field(145; "Friday Absent Days Hours"; Decimal)
        {
            Caption = 'Friday Absent Days Hours';
        }
        field(146; "Saturday Absent Days Hours"; Decimal)
        {
            Caption = 'Saturday Absent Days Hours';
        }
        field(147; "Sunday Absent Days Hours"; Decimal)
        {
            Caption = 'Sunday Absent Days Hours';
        }
        field(148; "Monday Absent Days Minutes"; Decimal)
        {
            Caption = 'Monday Absent Days Minutes';
        }
        field(149; "Tuesday Absent Days Minutes"; Decimal)
        {
            Caption = 'Tuesday Absent Days Minutes';
        }
        field(150; "Wednesday Absent Days Minutes"; Decimal)
        {
            Caption = 'Wednesday Absent Days Minutes';
        }
        field(151; "Thursday Absent Days Minutes"; Decimal)
        {
            Caption = 'Thursday Absent Days Minutes';
        }
        field(152; "Friday Absent Days Minutes"; Decimal)
        {
            Caption = 'Friday Absent Days Minutes';
        }
        field(153; "Saturday Absent Days Minutes"; Decimal)
        {
            Caption = 'Saturday Absent Days Minutes';
        }
        field(154; "Sunday Absent Days Minutes"; Decimal)
        {
            Caption = 'Sunday Absent Days Minutes';
        }
        field(156; "VIP (Management-Info/Cockpit)"; Boolean)
        {
            Caption = 'VIP (Management-Info/Cockpit)';
        }
        field(157; "Month of Birth"; Integer)
        {
            Caption = 'Month of Birth';
        }
        field(158; "Day of Birth"; Integer)
        {
            Caption = 'Day of Birth';
        }
        field(159; "Process Filter"; Integer)
        {
            Caption = 'Process Filter';
            FieldClass = FlowFilter;
            TableRelation = "TempVision Remark Line/T"."No." WHERE ("Table Name" = CONST ("Log/T"));
        }
        field(165; "Vacation Taken - Filter"; Date)
        {
            Caption = 'Vacation Taken - Filter';
            FieldClass = FlowFilter;
        }
        field(166; "Vacation Planned - Filter"; Date)
        {
            Caption = 'Vacation Planned - Filter';
            FieldClass = FlowFilter;
        }
        field(167; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(168; "Time Account Filter 1"; Code[10])
        {
            Caption = 'Time Account Filter 1';
            FieldClass = FlowFilter;
        }
        field(169; "Time Account Filter 2"; Code[10])
        {
            Caption = 'Time Account Filter 2';
            FieldClass = FlowFilter;
        }
        field(170; "Time Account Filter 3"; Code[10])
        {
            Caption = 'Time Account Filter 3';
            FieldClass = FlowFilter;
        }
        field(171; "Time Account Filter 4"; Code[10])
        {
            Caption = 'Time Account Filter 4';
            FieldClass = FlowFilter;
        }
        field(172; "Time Account Filter 5"; Code[10])
        {
            Caption = 'Time Account Filter 5';
            FieldClass = FlowFilter;
        }
        field(173; "Time Account Filter 6"; Code[10])
        {
            Caption = 'Time Account Filter 6';
            FieldClass = FlowFilter;
        }
        field(174; "Time Account Filter 7"; Code[10])
        {
            Caption = 'Time Account Filter 7';
            FieldClass = FlowFilter;
        }
        field(175; "Time Account Filter 8"; Code[10])
        {
            Caption = 'Time Account Filter 8';
            FieldClass = FlowFilter;
        }
        field(176; "Time Account Filter 9"; Code[10])
        {
            Caption = 'Time Account Filter 9';
            FieldClass = FlowFilter;
        }
        field(177; "Time Account Filter 10"; Code[10])
        {
            Caption = 'Time Account Filter 10';
            FieldClass = FlowFilter;
        }
        field(178; "Date Filter Time Clocking"; Date)
        {
            Caption = 'Date Filter Time Clocking';
            FieldClass = FlowFilter;
        }
        field(179; "Date Filter Order Entry"; Date)
        {
            Caption = 'Date Filter Order Entry';
            FieldClass = FlowFilter;
        }
        field(180; "Target Times"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Target Times"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Target Times';
            Editable = false;
            FieldClass = FlowField;
        }
        field(181; "Total Times"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Total Times"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Total Times';
            Editable = false;
            FieldClass = FlowField;
        }
        field(182; "Presence Times"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Presence Times"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Presence Times';
            Editable = false;
            FieldClass = FlowField;
        }
        field(183; "Approved Overtime"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("app.Overtime"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Approved Overtime';
            Editable = false;
            FieldClass = FlowField;
        }
        field(184; "unapproved Overtime"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("unapp.Overtime"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'unapproved Overtime';
            Editable = false;
            FieldClass = FlowField;
        }
        field(185; "approved Absences"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("app.Absences"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'approved Absences';
            Editable = false;
            FieldClass = FlowField;
        }
        field(186; "Not approved Absences"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("unapp.Absences"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Not approved Absences';
            Editable = false;
            FieldClass = FlowField;
        }
        field(187; "Medical Appointments"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Medical Appointm."),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Medical Appointments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(188; "Vacation Days"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Vacation Days"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Vacation Days';
            Editable = false;
            FieldClass = FlowField;
        }
        field(189; "Sick Leave"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Sick Leave"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Sick Leave';
            Editable = false;
            FieldClass = FlowField;
        }
        field(190; "Values Car. Fwd."; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Values Car. Fwd."),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Values Car. Fwd.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(191; "Balances Period"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Balances Period"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Balances Period';
            Editable = false;
            FieldClass = FlowField;
        }
        field(192; "Balances Total"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Balances Total"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Balances Total';
            Editable = false;
            FieldClass = FlowField;
        }
        field(193; Errands; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST (Errands),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Errands';
            Editable = false;
            FieldClass = FlowField;
        }
        field(194; "Break Exceedings"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Break Exceedings"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Break Exceedings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(195; "Core Time Violation"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Statistics)" = CONST ("Core Time Deviations"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Core Time Violation';
            Editable = false;
            FieldClass = FlowField;
        }
        field(199; Counter; Integer)
        {
            Caption = 'Counter';
        }
        field(210; "DS/Sort Shift Classification"; Integer)
        {
            Caption = 'DS/Sort Shift Classification';
        }
        field(211; "From Date Plan Cont. rolling"; Boolean)
        {
            Caption = 'From Date Plan Cont. rolling';
        }
        field(212; PrivateMobilePhoneNo; Text[30])
        {
            Caption = 'PrivateMobilePhoneNo';
        }
        field(213; "c/o"; Text[50])
        {
            Caption = 'c/o';
        }
        field(214; Profession; Text[30])
        {
            Caption = 'Profession';
        }
        field(215; Machine; Boolean)
        {
            Caption = 'Machine';
        }
        field(216; "Coming Reference Day Finished"; Code[1])
        {
            Caption = 'Coming Reference Day Finished';
            CharAllowed = 'VVFFvvff';
        }
        field(217; "Leaving Reference Day Finished"; Code[1])
        {
            Caption = 'Leaving Reference Day Finished';
            CharAllowed = 'VVFFvvff';
        }
        field(218; "Order Duty Scheduling"; Boolean)
        {
            Caption = 'Order Duty Scheduling';
        }
        field(220; Vacation; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST (Vacation),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Vacation';
            Editable = false;
            FieldClass = FlowField;
        }
        field(221; Sick; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST (Sick),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Sick';
            Editable = false;
            FieldClass = FlowField;
        }
        field(222; "Public Holiday"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST ("Pub. Holiday"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Public Holiday';
            Editable = false;
            FieldClass = FlowField;
        }
        field(223; "Leisure Time"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST ("Leisure Time"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Leisure Time';
            Editable = false;
            FieldClass = FlowField;
        }
        field(224; Training; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST (Training),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Training';
            Editable = false;
            FieldClass = FlowField;
        }
        field(225; "Business Trip"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST ("Business Trip"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Business Trip';
            Editable = false;
            FieldClass = FlowField;
        }
        field(226; "On-Call Duty"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST ("On-Call Duty"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'On-Call Duty';
            Editable = false;
            FieldClass = FlowField;
        }
        field(227; "w/o continued Pay"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST ("w/o continued Pay"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'w/o continued Pay';
            Editable = false;
            FieldClass = FlowField;
        }
        field(228; Application; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Absent Days)" = CONST (Application),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Application';
            Editable = false;
            FieldClass = FlowField;
        }
        field(229; "Absent Day anonymous"; Text[10])
        {
            CalcFormula = Lookup ("Time Planning/T"."Absent Day anonymous" WHERE ("Employee No." = FIELD ("No."),
                                                                                 "Current Date" = FIELD ("Date Filter")));
            Caption = 'Absent Day anonymous';
            FieldClass = FlowField;
        }
        field(230; "Absent Day"; Text[10])
        {
            CalcFormula = Lookup ("Time Planning/T"."Absent Day" WHERE ("Employee No." = FIELD ("No."),
                                                                       "Current Date" = FIELD ("Date Filter")));
            Caption = 'Absent Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(231; "Absent Day Character"; Text[2])
        {
            CalcFormula = Lookup ("Time Planning/T"."Absent Day Character" WHERE ("Employee No." = FIELD ("No."),
                                                                                 "Current Date" = FIELD ("Date Filter")));
            Caption = 'Absent Day Character';
            Editable = false;
            FieldClass = FlowField;
        }
        field(232; "Day Object Symbol"; Text[10])
        {
            CalcFormula = Lookup ("Time Planning/T"."Day Object Symbol" WHERE ("Employee No." = FIELD ("No."),
                                                                              "Current Date" = FIELD ("Date Filter")));
            Caption = 'Day object Symbol';
            FieldClass = FlowField;
        }
        field(233; "Day Object No."; Code[10])
        {
            CalcFormula = Lookup ("Time Planning/T"."Day Object No." WHERE ("Employee No." = FIELD ("No."),
                                                                           "Current Date" = FIELD ("Date Filter")));
            Caption = 'Day Object No.';
            FieldClass = FlowField;
        }
        field(234; "Target Time"; Text[30])
        {
            CalcFormula = Lookup ("Time Planning/T"."Target Time" WHERE ("Employee No." = FIELD ("No."),
                                                                        "Current Date" = FIELD ("Date Filter")));
            Caption = 'Target Time';
            FieldClass = FlowField;
        }
        field(235; "ID No. Numeric"; Integer)
        {
            Caption = 'ID No. Numeric';
        }
        field(236; "Vacation/Weeks"; Decimal)
        {
            Caption = 'Vacation/Weeks';
        }
        field(237; "Absent Day 2"; Text[10])
        {
            CalcFormula = Lookup ("Time Planning/T"."Absent Day 2" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Absent Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(238; "ID No. before modifying"; Code[20])
        {
            Caption = 'ID No. before modifying';
        }
        field(240; "Time Account direct 1"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 1"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(241; "Time Account direct 2"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 2"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(242; "Time Account direct 3"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 3"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(243; "Time Account direct 4"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 4"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(244; "Time Account direct 5"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 5"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(245; "Time Account direct 6"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 6"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(246; "Time Account direct 7"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 7"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 7';
            Editable = false;
            FieldClass = FlowField;
        }
        field(247; "Time Account direct 8"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 8"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 8';
            Editable = false;
            FieldClass = FlowField;
        }
        field(248; "Time Account direct 9"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 9"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 9';
            Editable = false;
            FieldClass = FlowField;
        }
        field(249; "Time Account direct 10"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "Time Account No." = FIELD ("Time Account Filter 10"),
                                                                         "Current Date" = FIELD ("Date Filter")));
            Caption = 'Time Account direct 10';
            Editable = false;
            FieldClass = FlowField;
        }
        field(267; "Coming - Order Begin"; Option)
        {
            Caption = 'Coming - Order Begin';
            OptionCaption = ' ,Today,Today and Day before,Today and Days before,Day before,Days before';
            OptionMembers = " ",Today,"Today and Day before","Today and Days before","Day before","Days before";
        }
        field(268; "Com-Order/Num.Days before"; Integer)
        {
            Caption = 'Com-Order/Num.Days before';
        }
        field(277; "Soft-Term. Empl-File Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Empl-File Inactive';
        }
        field(278; "Filesend Limit Total Inactive"; Boolean)
        {
            Caption = 'Filesend Limit Total Inactive';
        }
        field(279; "Soft-Term. Empl-Info Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Empl-Info Inactive';
        }
        field(280; "ST Make Corr. Inactive"; Boolean)
        {
            Caption = 'ST Make Corr. Inactive';
        }
        field(281; "ST Appr. TC Inactive"; Boolean)
        {
            Caption = 'ST Appr. TC Inactive';
        }
        field(282; "ST Absence Inactive"; Boolean)
        {
            Caption = 'ST Absence Inactive';
        }
        field(283; "ST FDC-Order Inactive"; Boolean)
        {
            Caption = 'ST FDC-Order Inactive';
        }
        field(284; "ST FDC-Order Begin Inactive"; Boolean)
        {
            Caption = 'ST FDC-Order Begin Inactive';
        }
        field(285; "ST FDC-Order End Inactive"; Boolean)
        {
            Caption = 'ST FDC-Order End Inactive';
        }
        field(286; "ST FDC-Task List Inactive"; Boolean)
        {
            Caption = 'ST FDC-Task List Inactive';
        }
        field(287; "ST FDC-Quantity Inactive"; Boolean)
        {
            Caption = 'ST FDC-Quantity Inactive';
        }
        field(288; "ST FDC-Finished Inactive"; Boolean)
        {
            Caption = 'ST FDC-Finished Inactive';
        }
        field(289; "Soft-Term. Appr. Vac. Inactive"; Boolean)
        {
            Caption = 'Soft-Term. Appr. Vac. Inactive';
        }
        field(290; "ST FDC-Collect Beg. Inactive"; Boolean)
        {
            Caption = 'ST FDC-Collect Beg. Inactive';
        }
        field(291; "ST FDC-Collect End Inactive"; Boolean)
        {
            Caption = 'ST FDC-Collect End Inactive';
        }
        field(292; "Dept. Integration Own Dept."; Boolean)
        {
            Caption = 'Dept. Integration Own Dept.';
        }
        field(293; "Unique-ID Badge"; Code[20])
        {
            Caption = 'Unique-ID Badge';
        }
        field(294; "Summary of payroll data active"; Boolean)
        {
            Caption = 'Summary of payroll data active';
        }
        field(295; "Contract Percent"; Text[10])
        {
            Caption = 'Contract Percent';
        }
        field(296; "Max. Vacation Add. Night Work"; Decimal)
        {
            Caption = 'Max. Vacation Add. Night Work';
        }
        field(297; "ST Dept. Filter Org-Group"; Code[10])
        {
            Caption = 'ST Dept. Filter Org-Group';
            TableRelation = "Organization Group/T"."No.";
        }
        field(298; "FDC Split.Division Parallel"; Option)
        {
            Caption = 'FDC Split.Division Parallel';
            OptionCaption = ' ,Only Parallel Orders,Only Order Collect,Parallel Orders and Order Collect';
            OptionMembers = " ","Only Parallel Orders","Only Order Collect","Parallel Orders and Order Collect";
        }
        field(299; Superior; Boolean)
        {
            Caption = 'Superior';
        }
        field(300; "From Line Plan Cont. rolling"; Integer)
        {
            Caption = 'From Line Plan Cont. rolling';
        }
        field(301; "Alternative ID No."; Code[20])
        {
            Caption = 'Alternative ID No.';
        }
        field(302; "From Week Plan Cont. rolling"; Integer)
        {
            Caption = 'From Week Plan Cont. rolling';
        }
        field(303; "Stand-In"; Boolean)
        {
            Caption = 'Stand-In';
        }
        field(304; "Licence-Check"; Boolean)
        {
            Caption = 'Licence-Check';
        }
        field(310; Present; Boolean)
        {
            Caption = 'Present';
        }
        field(311; Absent; Boolean)
        {
            Caption = 'Absent';
        }
        field(312; "Balances Total Terminal"; Decimal)
        {
            Caption = 'Balances Total Terminal';
        }
        field(313; "Check Maternity Protection Law"; Boolean)
        {
            Caption = 'Check Maternity Protection Law';
        }
        field(314; "Org-Form/Duty Sched."; Option)
        {
            Caption = 'Org-Form/Duty Sched.';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(315; "Org-Value/Duty Sched."; Code[10])
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
        field(320; "Adaptation Vacation Days"; Decimal)
        {
            CalcFormula = Sum ("Time Entry/T"."Time Account Value" WHERE ("Employee No." = FIELD ("No."),
                                                                         "TA Class (Vacation Reduction)" = CONST ("Adaptation Vacation in Days"),
                                                                         "Current Date" = FIELD ("Vacation Planned - Filter")));
            Caption = 'Adaptation Vacation Days';
            Editable = false;
            FieldClass = FlowField;
        }
        field(321; "Access Group No."; Code[10])
        {
            Caption = 'Access Group No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Access Group"));
        }
        field(322; "Access Group Description"; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("Access Group No."),
                                                                     "Org-Form Type" = CONST ("Access Group")));
            Caption = 'Access Group Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500; Remark; Boolean)
        {
            CalcFormula = Exist ("TempVision Remark Line/T" WHERE ("Table Name" = CONST ("Employee/T"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Remark';
            Editable = false;
            FieldClass = FlowField;
        }
        field(600; Picture; BLOB)
        {
            Caption = 'Picture';
            Compressed = false;
            SubType = Bitmap;
        }
        field(5010; ShortSign; Code[20])
        {
            Caption = 'ShortSign';
        }
        field(5011; Initials; Text[30])
        {
            Caption = 'Initials';
        }
        field(5050; County; Text[30])
        {
            Caption = 'County';
        }
        field(5051; CountryRegionCode; Code[10])
        {
            Caption = 'CountryRegionCode';
            TableRelation = "Country/Region".Code;
        }
        field(5052; CountryRegionName; Text[50])
        {
            CalcFormula = Lookup ("Country/Region".Name WHERE (Code = FIELD (CountryRegionCode)));
            Caption = 'CountryRegionName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5055; LanguageCode; Code[10])
        {
            Caption = 'LanguageCode';
            TableRelation = Language;
        }
        field(5056; NationalityCode; Code[10])
        {
            Caption = 'NationalityCode';
            TableRelation = "Country/Region".Code;
        }
        field(5060; CompanyPhoneNoExtension; Text[30])
        {
            Caption = 'CompanyPhoneNoExtension';
        }
        field(5061; CompanyMobilePhoneNo; Text[30])
        {
            Caption = 'CompanyMobilePhoneNo';
        }
        field(5065; OfficeRoom; Text[20])
        {
            Caption = 'OfficeRoom';
        }
        field(5070; CountryOfBirthCode; Code[10])
        {
            Caption = 'CountryOfBirthCode';
            TableRelation = "Country/Region".Code;
        }
        field(5071; CountryOfBirthName; Text[50])
        {
            CalcFormula = Lookup ("Country/Region".Name WHERE (Code = FIELD (CountryOfBirthCode)));
            Caption = 'CountryOfBirthName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5075; PlaceOfBirth; Text[30])
        {
            Caption = 'PlaceOfBirth';
        }
        field(5076; NameOfBirth; Text[30])
        {
            Caption = 'NameOfBirth';
        }
        field(5080; StreetAlternative; Text[50])
        {
            Caption = 'StreetAlternative';
        }
        field(5081; PostCodeAlternative; Code[20])
        {
            Caption = 'PostCodeAlternative';
            TableRelation = "Post Code".Code;
            ValidateTableRelation = false;
        }
        field(5082; CityAlternative; Text[30])
        {
            Caption = 'CityAlternative';
        }
        field(5090; SocialSecurityNumber; Text[30])
        {
            Caption = 'SocialSecurityNumber';
        }
        field(5102; BeginRetirementExpected; Date)
        {
            Caption = 'BeginRetirementExpected';
        }
        field(5104; Age; Integer)
        {
            Caption = 'Age';
            Editable = false;
        }
        field(5105; Seniority; Integer)
        {
            Caption = 'Seniority';
            Editable = false;
        }
        field(5106; SeniorityDate; Date)
        {
            Caption = 'SeniorityDate';
        }
        field(5110; CommitteeElectionAccepted; Boolean)
        {
            Caption = 'CommitteeElectionAccepted';
        }
        field(5120; ProcessResponsibleEmplNo; Code[20])
        {
            Caption = 'ProcessResponsibleEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5122; ProcessResponsibleEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ProcessResponsibleEmplNo)));
            Caption = 'ProcessResponsibleEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5129; ResidencePermit; Boolean)
        {
            Caption = 'ResidencePermit';
        }
        field(5130; BeginResidencePermit; Date)
        {
            Caption = 'BeginResidencePermit';
        }
        field(5131; EndResidencePermit; Date)
        {
            Caption = 'EndResidencePermit';
        }
        field(5132; ResidencePermitExposed; Date)
        {
            Caption = 'ResidencePermitExposed';
        }
        field(5135; WorkPermit; Boolean)
        {
            Caption = 'WorkPermit';
        }
        field(5136; WorkPermitExposed; Date)
        {
            Caption = 'WorkPermitExposed';
        }
        field(5138; ResourceActivateStatusBlocked; Date)
        {
            Caption = 'ResourceActivateStatusBlocked';
        }
        field(5140; ContactPersEmergeEmplNo1; Code[20])
        {
            Caption = 'ContactPersEmergeEmplNo1';
            TableRelation = "Employee/T"."No.";
        }
        field(5142; ContactPersEmergeEmplName1; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ContactPersEmergeEmplNo1)));
            Caption = 'ContactPersEmergeEmplName1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5150; ContactPersEmergeEmplNo2; Code[20])
        {
            Caption = 'ContactPersEmergeEmplNo2';
            TableRelation = "Employee/T"."No.";
        }
        field(5152; ContactPersEmergeEmplName2; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ContactPersEmergeEmplNo2)));
            Caption = 'ContactPersEmergeEmplName2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5200; DenominationNo; Code[20])
        {
            Caption = 'DenominationNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Denomination));
        }
        field(5201; DenominationLineNo; Integer)
        {
            Caption = 'DenominationLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (DenominationNo));
        }
        field(5203; DenominationDescription; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (DenominationNo),
                                                                          "Line No." = FIELD (DenominationLineNo)));
            Caption = 'DenominationDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5211; PrivateEMail; Text[50])
        {
            Caption = 'PrivateEMail';
        }
        field(5213; PrivateHomepage; Text[50])
        {
            Caption = 'PrivateHomepage';
        }
        field(5220; FamilyStatus; Option)
        {
            Caption = 'FamilyStatus';
            OptionCaption = ' ,unmarried,married,living apart,divorced,widowed,living partnership,finished living partnership,widowed partnership,family status unknown';
            OptionMembers = " ",unmarried,married,"living apart",divorced,widowed,"living partnership","finished living partnership","widowed partnership","Family Status unknown";
        }
        field(5221; NumberOfChildren; Integer)
        {
            Caption = 'NumberOfChildren';
        }
        field(5230; PayScaleAgreement; Code[20])
        {
            Caption = 'PayScaleAgreement';
        }
        field(5232; SalaryGroup; Code[20])
        {
            Caption = 'SalaryGroup';
        }
        field(5234; CareerGroup; Code[20])
        {
            Caption = 'CareerGroup';
        }
        field(5236; NumberOfContracts; Integer)
        {
            Caption = 'NumberOfContracts';
            Editable = false;
        }
        field(5238; EmploymentStatus; Option)
        {
            Caption = 'EmploymentStatus';
            OptionCaption = ' ,salaried,commercial';
            OptionMembers = " ",salaried,commercial;
        }
        field(5240; Executive; Boolean)
        {
            Caption = 'Executive';
        }
        field(5242; FunctionalSupervisor; Boolean)
        {
            Caption = 'FunctionalSupervisor';
        }
        field(5244; EmployeeResponsible; Boolean)
        {
            Caption = 'EmployeeResponsible';
        }
        field(5246; PersonalSignatureInactive; Boolean)
        {
            Caption = 'PersonalSignatureInactive';
        }
        field(5500; CurrentJobNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyNo WHERE ("Employee No." = FIELD ("No."),
                                                                        ProcessingType = CONST ("Employee Property"),
                                                                        PropertyType = CONST (Job),
                                                                        JobDescrJobGroup = CONST (false),
                                                                        DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentJobNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job));
        }
        field(5501; CurrentJobLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Property"),
                                                                            PropertyType = CONST (Job),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentJobLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentJobNo));
        }
        field(5503; CurrentJobDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentJobNo),
                                                                          "Line No." = FIELD (CurrentJobLineNo)));
            Caption = 'CurrentJobDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5520; CurrentPositionNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyNo WHERE ("Employee No." = FIELD ("No."),
                                                                        ProcessingType = CONST ("Employee Property"),
                                                                        PropertyType = CONST (Position),
                                                                        DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentPositionNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Position));
        }
        field(5521; CurrentPositionLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Property"),
                                                                            PropertyType = CONST (Position),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentPositionLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentPositionNo));
        }
        field(5523; CurrentPositionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentPositionNo),
                                                                          "Line No." = FIELD (CurrentPositionLineNo)));
            Caption = 'CurrentPositionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5530; CurrentFunctionNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyNo WHERE ("Employee No." = FIELD ("No."),
                                                                        ProcessingType = CONST ("Employee Property"),
                                                                        PropertyType = CONST (Function),
                                                                        DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentFunctionNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Function));
        }
        field(5531; CurrentFunctionLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Property"),
                                                                            PropertyType = CONST (Function),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentFunctionLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentFunctionNo));
        }
        field(5533; CurrentFunctionDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentFunctionNo),
                                                                          "Line No." = FIELD (CurrentFunctionLineNo)));
            Caption = 'CurrentFunctionDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5540; CurrentTitleNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyNo WHERE ("Employee No." = FIELD ("No."),
                                                                        ProcessingType = CONST ("Employee Property"),
                                                                        PropertyType = CONST (Title),
                                                                        DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentTitleNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Title));
        }
        field(5541; CurrentTitleLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Property"),
                                                                            PropertyType = CONST (Title),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentTitleLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentTitleNo));
        }
        field(5543; CurrentTitleDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentTitleNo),
                                                                          "Line No." = FIELD (CurrentTitleLineNo)));
            Caption = 'CurrentTitleDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5550; CurrentContractNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyNo WHERE ("Employee No." = FIELD ("No."),
                                                                        ProcessingType = CONST ("Employee Property"),
                                                                        PropertyType = CONST (Contract),
                                                                        DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentContractNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Contract));
        }
        field(5551; CurrentContractLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Property"),
                                                                            PropertyType = CONST (Contract),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentContractLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentContractNo));
        }
        field(5553; CurrentContractDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentContractNo),
                                                                          "Line No." = FIELD (CurrentContractLineNo)));
            Caption = 'CurrentContractDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5560; CurrentReasonLeaveNo; Code[20])
        {
            Caption = 'CurrentReasonLeaveNo';
            Editable = false;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Reason));
        }
        field(5561; CurrentReasonLeaveLineNo; Integer)
        {
            Caption = 'CurrentReasonLeaveLineNo';
            Editable = false;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentReasonLeaveNo));
        }
        field(5570; CurrentActivityNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyNo WHERE ("Employee No." = FIELD ("No."),
                                                                        ProcessingType = CONST ("Employee Property"),
                                                                        PropertyType = CONST (Activity),
                                                                        DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentActivityNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Activity));
        }
        field(5571; CurrentActivityLineNo; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("EmployeeControl/TM".PropertyLineNo WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Property"),
                                                                            PropertyType = CONST (Activity),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentActivityLineNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentActivityNo));
        }
        field(5573; CurrentActivityDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentActivityNo),
                                                                          "Line No." = FIELD (CurrentActivityLineNo)));
            Caption = 'CurrentActivityDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5600; CurrentDimCodeDept; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".DimensionCode WHERE ("Employee No." = FIELD ("No."),
                                                                           ProcessingType = CONST ("Employee Dimension"),
                                                                           DimensionRefEmployeeTable = CONST (true),
                                                                           DimensionRefEmployeeTableOpt = CONST (Department)));
            Caption = 'CurrentDimCodeDept';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5601; CurrentDimValueDept; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".DimensionValue WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Dimension"),
                                                                            DimensionCode = FIELD (CurrentDimCodeDept),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentDimValueDept';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (CurrentDimCodeDept),
                                                                      DimensionValue = FIELD (CurrentDimValueDept));
        }
        field(5603; CurrentDimValueDescrDept; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (CurrentDimCodeDept),
                                                                                 DimensionValue = FIELD (CurrentDimValueDept)));
            Caption = 'CurrentDimValueDescrDept';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5604; CurrentDimValueDescr2Dept; Text[30])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription2 WHERE (DimensionCode = FIELD (CurrentDimCodeDept),
                                                                                  DimensionValue = FIELD (CurrentDimValueDept)));
            Caption = 'CurrentDimValueDescrDept';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5610; CurrentDimCodeCompany; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".DimensionCode WHERE ("Employee No." = FIELD ("No."),
                                                                           ProcessingType = CONST ("Employee Dimension"),
                                                                           DimensionRefEmployeeTable = CONST (true),
                                                                           DimensionRefEmployeeTableOpt = CONST (Company)));
            Caption = 'CurrentDimCodeCompany';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5611; CurrentDimValueCompany; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControl/TM".DimensionValue WHERE ("Employee No." = FIELD ("No."),
                                                                            ProcessingType = CONST ("Employee Dimension"),
                                                                            DimensionCode = FIELD (CurrentDimCodeCompany),
                                                                            DimensionRefEmployeeTable = CONST (true)));
            Caption = 'CurrentDimValueCompany';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (CurrentDimCodeCompany),
                                                                      DimensionValue = FIELD (CurrentDimValueCompany));
        }
        field(5613; CurrentDimValueDescrCompany; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (CurrentDimCodeCompany),
                                                                                 DimensionValue = FIELD (CurrentDimValueCompany)));
            Caption = 'CurrentDimValueDescrCompany';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5700; CurrentSupervisorFuncNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControlAdditive/TM".EmployeeNoRelated WHERE ("Employee No." = FIELD ("No."),
                                                                                       ProcessingType = CONST ("Employee Relation Matrix"),
                                                                                       DimensionRefEmployeeTable = CONST (true),
                                                                                       SupervisorType = CONST (functional),
                                                                                       EmployeeStructureType = CONST ("Subordinate of")));
            Caption = 'CurrentSupervisorFuncNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Employee/T"."No.";
        }
        field(5702; CurrentSupervisorFuncName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (CurrentSupervisorFuncNo)));
            Caption = 'CurrentSupervisorFuncName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5710; CurrentSupervisorDisciNo; Code[20])
        {
            CalcFormula = Lookup ("EmployeeControlAdditive/TM".EmployeeNoRelated WHERE ("Employee No." = FIELD ("No."),
                                                                                       ProcessingType = CONST ("Employee Relation Matrix"),
                                                                                       DimensionRefEmployeeTable = CONST (true),
                                                                                       SupervisorType = CONST (disciplinary),
                                                                                       EmployeeStructureType = CONST ("Subordinate of")));
            Caption = 'CurrentSupervisorDisciNo';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Employee/T"."No.";
        }
        field(5712; CurrentSupervisorDisciName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (CurrentSupervisorDisciNo)));
            Caption = 'CurrentSupervisorDisciName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6000; DimensionCodeAccess1; Code[20])
        {
            Caption = 'DimensionCodeAccess1';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6001; DimensionValueAccess1; Code[20])
        {
            Caption = 'DimensionValueAccess1';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess1));
        }
        field(6010; DimensionCodeAccess2; Code[20])
        {
            Caption = 'DimensionCodeAccess2';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6011; DimensionValueAccess2; Code[20])
        {
            Caption = 'DimensionValueAccess2';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess2));
        }
        field(6020; DimensionCodeAccess3; Code[20])
        {
            Caption = 'DimensionCodeAccess3';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6021; DimensionValueAccess3; Code[20])
        {
            Caption = 'DimensionValueAccess3';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess3));
        }
        field(6030; DimensionCodeAccess4; Code[20])
        {
            Caption = 'DimensionCodeAccess4';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6031; DimensionValueAccess4; Code[20])
        {
            Caption = 'DimensionValueAccess4';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCodeAccess4));
        }
        field(8000; ReadyForRelocation; Boolean)
        {
            Caption = 'ReadyForRelocation';
        }
        field(8001; FavoredLocation; Text[30])
        {
            Caption = 'FavoredLocation';
        }
        field(8020; RiscOfLoss; Option)
        {
            Caption = 'RiscOfLoss';
            OptionCaption = ' ,very low,low,high,very high';
            OptionMembers = " ","very low",low,high,"very high";
        }
        field(8021; ConsequencesOfLoss; Option)
        {
            Caption = 'ConsequencesOfLoss';
            OptionCaption = ' ,very low,low,high,very high';
            OptionMembers = " ","very low",low,high,"very high";
        }
        field(8040; FullTimeEmployeeHoursPerWeek; Decimal)
        {
            Caption = 'FullTimeEmployeeHoursPerWeek';
        }
        field(8041; PartTimeEmployeeHoursPerWeek; Decimal)
        {
            Caption = 'PartTimeEmployeeHoursPerWeek';
        }
        field(8060; TeamSize; Decimal)
        {
            Caption = 'TeamSize';
        }
        field(8061; NumberOfSubordinatesDisci; Decimal)
        {
            Caption = 'NumberOfSubordinatesDisci';
        }
        field(8062; NumberOfSubordinatesFunc; Decimal)
        {
            Caption = 'NumberOfSubordinatesFunc';
        }
        field(9000; ProcessingStatus; Option)
        {
            Caption = 'ProcessingStatus';
            OptionCaption = ' ,Employee,Customer,Sub Contractor,Leased Labourer,Applicant,Applicant archived,Favourites,Systeminfo,Contact Person,Service Provider,Trainee,Apprentice,Student,Individual';
            OptionMembers = " ",Employee,Customer,"Sub Contractor","Leased Labourer",Applicant,"Applicant archived",Favourites,Systeminfo,"Contact Person","Service Provider",Trainee,Apprentice,Student,Individual;
        }
        field(9005; EmployeeStatus; Option)
        {
            CalcFormula = Lookup ("EmployeeControl/TM".StatusHistEmployeeStatus WHERE ("Employee No." = FIELD ("No."),
                                                                                      ProcessingType = CONST ("Employee Property"),
                                                                                      PropertyType = CONST ("Status History"),
                                                                                      DimensionRefStatusSync = CONST (true)));
            Caption = 'EmployeeStatus';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,active,inactive,terminated by employer,terminated by employee,parental leave,maternity leave,terminated';
            OptionMembers = " ",active,inactive,"terminated by employer","terminated by employee","parental leave","maternity leave",terminated;
        }
        field(9015; Signature; BLOB)
        {
            Caption = 'Signature';
            Compressed = false;
            SubType = Bitmap;
        }
        field(9020; VendorReferenceNo; Code[20])
        {
            Caption = 'VendorReferenceNo';
            TableRelation = Vendor."No.";
        }
        field(9025; ContactReferenceNo; Code[20])
        {
            Caption = 'ContactReferenceNo';
            TableRelation = Contact."No.";
        }
        field(9030; "Salespers./Purch. Code"; Code[10])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(9035; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            TableRelation = "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."));
        }
        field(9040; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(9050; SyncResourceModule; Boolean)
        {
            Caption = 'SyncResourceModule';
        }
        field(9060; PerformanceAssessmentsActive; Boolean)
        {
            Caption = 'PerformanceAssessmentsActive';
        }
        field(9990; RecordDateInsert; Date)
        {
            Caption = 'RecordDateInsert';
            Editable = false;
        }
        field(9991; RecordTimeInsert; Time)
        {
            Caption = 'RecordTimeInsert';
            Editable = false;
        }
        field(9992; RecordUserNoInsert; Code[50])
        {
            Caption = 'RecordUserNoInsert';
            Editable = false;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
        field(50001; "Leaving Reason Code"; Code[10])
        {
            Caption = 'Leaving Reason Code';
        }
        field(50002; "Leaving Reason"; Text[50])
        {
            Caption = 'Leaving Reason';
        }
        field(50003; NationalityName; Text[30])
        {
            CalcFormula = Lookup ("Country/Region".Name WHERE (Code = FIELD (NationalityCode)));
            Caption = 'Staatangehörigkeit Name';
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50004; BVWPW; Text[20])
        {
            Description = '#AT';
        }
        field(50005; CapaYes; Boolean)
        {
            Caption = 'Capacity active';
        }
        field(50006; Krankenkasse; Text[50])
        {
            Description = '#AT';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "ID No.")
        {
        }
        key(Key3; Name)
        {
        }
        key(Key4; "Soft Terminal Password")
        {
        }
        key(Key5; "Department No.", "No.")
        {
        }
        key(Key6; "Division No.", "No.")
        {
        }
        key(Key7; "Activity No.", "No.")
        {
        }
        key(Key8; "Company No.", "No.")
        {
        }
        key(Key9; "Pay Group No.", "No.")
        {
        }
        key(Key10; "Group No. 1", "No.")
        {
        }
        key(Key11; "Group No. 2", "No.")
        {
        }
        key(Key12; "Group No. 3", "No.")
        {
        }
        key(Key13; "Time Object No.", "No.")
        {
        }
        key(Key14; "Department No.", Name, "No.")
        {
        }
        key(Key15; "Division No.", Name, "No.")
        {
        }
        key(Key16; "Activity No.", Name, "No.")
        {
        }
        key(Key17; "Company No.", Name, "No.")
        {
        }
        key(Key18; "Pay Group No.", Name, "No.")
        {
        }
        key(Key19; "Group No. 1", Name, "No.")
        {
        }
        key(Key20; "Group No. 2", Name, "No.")
        {
        }
        key(Key21; "Group No. 3", Name, "No.")
        {
        }
        key(Key22; "Time Object No.", Name, "No.")
        {
        }
        key(Key23; "Month of Birth", "Day of Birth")
        {
        }
        key(Key24; "ID No. Numeric")
        {
        }
        key(Key25; "Employee No. - Resource")
        {
        }
        key(Key26; "Search Item")
        {
        }
        key(Key27; "Sorting Planning Programs")
        {
        }
        key(Key28; "Department No.", "Sorting Planning Programs")
        {
        }
        key(Key29; "Division No.", "Sorting Planning Programs")
        {
        }
        key(Key30; "Activity No.", "Sorting Planning Programs")
        {
        }
        key(Key31; "Company No.", "Sorting Planning Programs")
        {
        }
        key(Key32; "Pay Group No.", "Sorting Planning Programs")
        {
        }
        key(Key33; "Group No. 1", "Sorting Planning Programs")
        {
        }
        key(Key34; "Group No. 2", "Sorting Planning Programs")
        {
        }
        key(Key35; "Group No. 3", "Sorting Planning Programs")
        {
        }
        key(Key36; "Time Object No.", "Sorting Planning Programs")
        {
        }
        key(Key37; "DS/Sort Shift Classification")
        {
        }
    }

    fieldgroups
    {
    }
}

