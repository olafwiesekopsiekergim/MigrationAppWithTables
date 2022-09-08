table 5050253 "TE-Setup"
{
    Caption = 'TE-Setup';

    fields
    {
        field(1; "Key"; Code[10])
        {
            Caption = 'Key';
        }
        field(10; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(20; "Account-Numbers"; Code[10])
        {
            Caption = 'Account-Numbers';
            TableRelation = "No. Series";
        }
        field(21; "Employee-Numbers"; Code[10])
        {
            Caption = 'Employee-Numbers';
            TableRelation = "No. Series";
        }
        field(22; "TE-Voucher Type Numbers"; Code[10])
        {
            Caption = 'TE-Voucher Type Numbers';
            TableRelation = "No. Series";
        }
        field(23; "TE-Voucher Numbers"; Code[10])
        {
            Caption = 'TE-Voucher Numbers';
            TableRelation = "No. Series";
        }
        field(24; "Routing Numbers"; Code[10])
        {
            Caption = 'Routing Numbers';
            TableRelation = "No. Series";
        }
        field(25; "Destination Numbers"; Code[10])
        {
            Caption = 'Destination Numbers';
            TableRelation = "No. Series";
        }
        field(26; "Purpose Numbers"; Code[10])
        {
            Caption = 'Purpose Numbers';
            TableRelation = "No. Series";
        }
        field(30; "Individual Job Solution"; Boolean)
        {
            Caption = 'Individual Job Solution';
        }
        field(31; "Summary Job-Lines"; Boolean)
        {
            Caption = 'Summary Job-Lines';
        }
        field(32; "Curr. Vouch-No."; Boolean)
        {
            Caption = 'Curr. Vouch-No.';
        }
        field(33; "Employer to G/L Account"; Boolean)
        {
            Caption = 'Employer to G/L Account';
        }
        field(34; "Entry in EUR"; Boolean)
        {
            Caption = 'Entry in EUR';
            InitValue = true;
        }
        field(35; "Currency Old"; Code[10])
        {
            Caption = 'Currency Old';
            TableRelation = Currency;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(36; "Currency Code Euro"; Code[10])
        {
            Caption = 'Currency Code Euro';
            TableRelation = Currency;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(37; "Counter Balance Pay"; Code[20])
        {
            Caption = 'Counter Balance Pay';
            TableRelation = "G/L Account";
        }
        field(38; "Pay Type Payment"; Code[20])
        {
            Caption = 'Pay Type Payment';
        }
        field(39; "Gen. Reg. Journal Batch Payr."; Code[20])
        {
            Caption = 'Gen. Reg. Journal Batch Payr.';
        }
        field(40; "Post Type"; Option)
        {
            Caption = 'Post Type';
            OptionCaption = 'Vendor,Cash,Pay,Incoming Invoice';
            OptionMembers = Vendor,Cash,Pay,"Incoming Invoice";
        }
        field(41; "Cash Account Payment"; Code[20])
        {
            Caption = 'Cash Account Payment';
            TableRelation = "G/L Account";
        }
        field(42; "Automatic Lines"; Boolean)
        {
            Caption = 'Automatic Lines';
        }
        field(43; "Voucher Type Boarding"; Code[20])
        {
            Caption = 'Voucher Type Boarding';
            TableRelation = "TE-Voucher Type";
        }
        field(44; "Voucher Type Lodging"; Code[20])
        {
            Caption = 'Voucher Type Lodging';
            TableRelation = "TE-Voucher Type";
        }
        field(45; "Voucher Type Driving Expenses"; Code[20])
        {
            Caption = 'Voucher Type Driving Expenses';
            TableRelation = "TE-Voucher Type";
        }
        field(46; "Report ID TE-Account"; Integer)
        {
            Caption = 'Report ID TE-Account';
            TableRelation = Object.ID WHERE(Type = CONST(Report));
        }
        field(47; "Report Name TE-Account"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Report),
                                                    ID = FIELD("Report ID TE-Account")));
            Caption = 'Report Name TE-Account';
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Codeunit ID Job Solution"; Integer)
        {
            Caption = 'Codeunit ID Job Solution';
            TableRelation = Object.ID WHERE(Type = CONST(Codeunit));
        }
        field(49; "Codeunit Job Solution"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Codeunit),
                                                    ID = FIELD("Codeunit ID Job Solution")));
            Caption = 'Codeunit Job Solution';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(51; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(52; "Number of Copies Termination"; Integer)
        {
            Caption = 'Number of Copies Termination';
        }
        field(53; "Report ID TE-Posted Accounts"; Integer)
        {
            Caption = 'Report ID TE-Posted Accounts';
            TableRelation = Object.ID WHERE(Type = CONST(Report));
        }
        field(54; "Report Name TE Posted Accounts"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(ID = FIELD("Report ID TE-Posted Accounts"),
                                                    Type = CONST(Report)));
            Caption = 'Report Name TE Posted Accounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(55; "Report ID TE-Employee Transfer"; Integer)
        {
            Caption = 'Report ID TE-Employee Transfer';
            TableRelation = Object.ID WHERE(Type = CONST(Report));
        }
        field(56; "Report Name TE-Employee"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(ID = FIELD("Report ID TE-Employee Transfer"),
                                                    Type = CONST(Report)));
            Caption = 'Report Name TE-Employee';
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; "Voucher Type Boarding Dep."; Code[20])
        {
            Caption = 'Voucher Type Boarding Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(58; "Voucher Type Lodging Dep."; Code[20])
        {
            Caption = 'Voucher Type Lodging Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(59; "Voucher Type Traveling Dep."; Code[20])
        {
            Caption = 'Voucher Type Traveling Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(60; "Tax Automatical"; Boolean)
        {
            Caption = 'Tax Automatical';
        }
        field(61; Authorization; Option)
        {
            Caption = 'Authorization';
            OptionCaption = 'According To Table,Defined Group,Without Limit';
            OptionMembers = "according to table","Group authorization","without limit";
        }
        field(62; "Reason Code Travel"; Code[10])
        {
            Caption = 'Reason Code Travel';
            TableRelation = "Reason Code";
        }
        field(63; "Reason Code Account"; Code[10])
        {
            Caption = 'Reason Code Account';
            TableRelation = "Reason Code";
        }
        field(64; "Duration Calculation"; Option)
        {
            Caption = 'Duration Calculation';
            InitValue = Addition;
            OptionCaption = 'Single,Connection,Addition,Partition,Austria';
            OptionMembers = Single,Connection,Addition,Partition,Austria;
        }
        field(65; "Starting Day"; Code[10])
        {
            Caption = 'Starting Day';
            InitValue = '1';
        }
        field(66; Period; DateFormula)
        {
            Caption = 'Period';
            InitValue = '-1M';
        }
        field(67; "Register Connection YN"; Boolean)
        {
            Caption = 'Register Connection YN';
            InitValue = true;
        }
        field(68; "Tax Balancing"; Option)
        {
            Caption = 'Tax Balancing';
            OptionCaption = 'Travel,Account,Nothing,Balancing';
            OptionMembers = Travel,Account,Nothing,Balancing;
        }
        field(69; "Boarding Fix Rate YN"; Boolean)
        {
            Caption = 'Boarding Fix Rate YN';
        }
        field(70; "Job Post Type"; Option)
        {
            Caption = 'Job Post Type';
            OptionCaption = 'Item,Job Post Type,G/L Account,Resource';
            OptionMembers = Item,"Job Post Type","G/L Account",Resource;
        }
        field(71; "Job-Item"; Code[20])
        {
            Caption = 'Job-Item';
            TableRelation = Item;
        }
        field(72; "Unallowed Combinations"; Option)
        {
            Caption = 'Unallowed Combinations';
            OptionCaption = 'None,Job/Department';
            OptionMembers = "None","Job/Department";
        }
        field(73; "Posting Allowed"; Option)
        {
            Caption = 'Posting Allowed';
            OptionCaption = 'No Limit,Entry Terminated,Checked,Examined,Checked+Examined';
            OptionMembers = "No Limit","Entry Terminated",Checked,Examined,"Checked+Examined";
        }
        field(74; "Travel Type"; Code[20])
        {
            Caption = 'Travel Type';
            TableRelation = "TE-Travel-Type";
        }
        field(75; "Administrator-Message YN"; Boolean)
        {
            Caption = 'Administrator-Message YN';
        }
        field(76; "Default Kilometer"; Option)
        {
            Caption = 'Default Kilometer';
            OptionCaption = ' ,Single,Bidirectional,Daily';
            OptionMembers = " ",Single,Bidirectional,Daily;
        }
        field(77; "Finish Entry Allowed"; Option)
        {
            Caption = 'Finish Entry Allowed';
            OptionCaption = 'No Limit,Permission';
            OptionMembers = "No Limit",Permission;
        }
        field(78; "Save Destinations"; Boolean)
        {
            Caption = 'Save Destinations';
        }
        field(79; "Check Employee Absence"; Boolean)
        {
            Caption = 'Check Employee Absence';
        }
        field(80; "Voucher Type PIK Breakfast"; Code[20])
        {
            Caption = 'Voucher Type PIK Breakfast';
            TableRelation = "TE-Voucher Type" WHERE("Legal Voucher Type" = FILTER("Payment in Kind Breakfast" | "Breakfast Deduction"));
        }
        field(81; "Voucher Type PIK Lunch"; Code[20])
        {
            Caption = 'Voucher Type PIK Dinner';
            TableRelation = "TE-Voucher Type" WHERE("Legal Voucher Type" = FILTER("Payment in Kind Lunch"));
        }
        field(82; "Voucher Type PIK Dinner"; Code[20])
        {
            Caption = 'Voucher Type PIK Lunch';
            TableRelation = "TE-Voucher Type" WHERE("Legal Voucher Type" = FILTER("Payment in Kind Dinner"));
        }
        field(83; "Voucher Type Hotel w/o Breakf."; Code[20])
        {
            Caption = 'Voucher Type Hotel w/o Breakf.';
            TableRelation = "TE-Voucher Type" WHERE(Category = FILTER(Lodging));
        }
        field(84; "Voucher Type Hotel w. Breakf."; Code[20])
        {
            Caption = 'Voucher Type Hotel w. Breakf.';
            TableRelation = "TE-Voucher Type" WHERE(Category = FILTER(Lodging));
        }
        field(85; "Voucher Type Htl. w. Brkf. abr"; Code[20])
        {
            Caption = 'Voucher Type Htl. w. Brkf. abr';
            TableRelation = "TE-Voucher Type" WHERE(Category = FILTER(Lodging));
        }
        field(86; "VoucherType Htl. w/o Brkf. ab."; Code[20])
        {
            Caption = 'Vouchtype Hotel w/o Brkf. abr.';
            TableRelation = "TE-Voucher Type" WHERE(Category = FILTER(Lodging));
        }
        field(87; "Voucher Type Advance Payment"; Code[20])
        {
            Caption = 'Voucher Type Advance Payment';
            TableRelation = "TE-Voucher Type" WHERE(Category = FILTER("Payment in Advance"));
        }
        field(88; "Voucher Type Breakfast Amount"; Code[20])
        {
            Caption = 'Voucher Type Breakfast Amount';
            TableRelation = "TE-Voucher Type";
        }
        field(89; "Summary Posting"; Option)
        {
            Caption = 'Summary Posting';
            OptionCaption = 'Vouch Type,Vouch No.,No Summary';
            OptionMembers = "Vouch Type","Vouch No.","No Summary";
        }
        field(90; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(91; "Condensation Wage Posting"; Option)
        {
            Caption = 'Condensation Wage Posting';
            OptionCaption = 'No Condensation,Codensation Wagetype,Condensation Only Certificate';
            OptionMembers = Certificate;
        }
        field(92; "Delegation Calculation"; DateFormula)
        {
            Caption = 'Delegation Calculation';
            InitValue = '3M';
        }
        field(93; "Delegation Break Days"; Integer)
        {
            Caption = 'Delegation Break Calculation';
            InitValue = 28;
        }
        field(94; "Document Trace"; Boolean)
        {
            Caption = 'Document Trace';
        }
        field(95; "G/L Account Posting"; Option)
        {
            Caption = 'G/L Account Posting';
            OptionCaption = 'Complete Booking,Create Journal Only';
            OptionMembers = "Complete Booking","Create Journal Only";
        }
        field(96; "Job Posting Option"; Option)
        {
            Caption = 'Job Posting';
            OptionCaption = 'Complete Booking,Create Journal Only';
            OptionMembers = "Complete Booking","Create Journal Only";
        }
        field(97; "Batch Name G/L"; Code[10])
        {
            Caption = 'Batch Name G/L';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Template Name G/L"));
        }
        field(98; "Batch Name Job"; Code[10])
        {
            Caption = 'Batch Name Job';
            TableRelation = "Job Journal Batch".Name WHERE("Journal Template Name" = FIELD("Template Name Job"));
        }
        field(99; "Template Name G/L"; Code[10])
        {
            Caption = 'Template Name G/L';
            TableRelation = "Gen. Journal Template";
        }
        field(100; "Department Hierarchy"; Option)
        {
            Caption = 'Department Hierarchy';
            Description = 'Employee/Job,Job/Employee';
            OptionCaption = 'Employee/Job,Job/Employee';
            OptionMembers = "Employee/Job","Job/Employee";
        }
        field(101; "Project Hierarchy"; Option)
        {
            Caption = 'Project Hierarchy';
            Description = 'Employee/Job,Job/Employee';
            OptionCaption = 'Employee/Job,Job/Employee';
            OptionMembers = "Employee/Job","Job/Employee";
        }
        field(102; "Save Purposes"; Boolean)
        {
            Caption = 'Save Purposes';
        }
        field(103; "Save Routings"; Boolean)
        {
            Caption = 'Save Routings';
        }
        field(104; "Country Code Ship"; Code[10])
        {
            Caption = 'Country Code Ship';
            TableRelation = "TE-Country";
        }
        field(105; "Country Code Aeroplane"; Code[10])
        {
            Caption = 'Country Code Aeroplane';
            TableRelation = "TE-Country";
        }
        field(106; "Template Name Job"; Code[10])
        {
            Caption = 'Template Name Job';
            TableRelation = "Job Journal Template";
        }
        field(107; "Pay Type Certificate"; Code[20])
        {
            Caption = 'Pay Type Certificate';
        }
        field(108; "Certification Automatical"; Boolean)
        {
            Caption = 'Certification Automatical';
        }
        field(109; "Codeunit Permission"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Codeunit),
                                                    ID = FIELD("Codeunit ID Permission")));
            Caption = 'Codeunit Permission';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Codeunit ID Permission"; Integer)
        {
            Caption = 'Codeunit ID Permission';
            TableRelation = Object.ID WHERE(Type = CONST(Codeunit));
        }
        field(111; "G/L Posting Payroll Integr."; Boolean)
        {
            Caption = 'G/L Posting Payroll Integr.';
        }
        field(112; "No Dimensions TE-Employee"; Boolean)
        {
            Caption = 'No Dimensions TE-Employee';
        }
        field(113; "No Dimensions Ressource"; Boolean)
        {
            Caption = 'No Dimensions Ressource';
        }
        field(114; "No Dimensions Job"; Boolean)
        {
            Caption = 'No Dimensions Job';
        }
        field(115; "No Dimensions Travel-Type"; Boolean)
        {
            Caption = 'No Dimensions Travel-Type';
        }
        field(116; "No Dimensions Country Code"; Boolean)
        {
            Caption = 'No Dimensions Country Code';
        }
        field(117; "No Dimensions Balance Account"; Boolean)
        {
            Caption = 'No Dimensions Balance Account';
        }
        field(118; "No Dimensions Voucher Type"; Boolean)
        {
            Caption = 'No Dimensions Voucher Type';
        }
        field(119; "Account View"; Option)
        {
            Caption = 'Account View';
            OptionCaption = 'All finish entry,Only Proofed';
            OptionMembers = "All finish entry","Only Proofed";
        }
        field(120; "Postingdate Equal Work Date"; Boolean)
        {
            Caption = 'Postingdate Equal Work Date';
        }
        field(121; "Calendar Use"; Option)
        {
            Caption = 'Calendar Use';
            OptionCaption = 'Base Calendar,Calendar Pay Roll,Both,No Calendar';
            OptionMembers = "Base Calendar","Calendar Pay Roll",Both,"No Calendar";
        }
        field(122; "Base Calendar"; Code[10])
        {
            Caption = 'Base Calendar';
            TableRelation = "Base Calendar";
        }
        field(130; "Change Travel Date"; Option)
        {
            Caption = 'Change Travel Date';
            OptionCaption = 'Entry Terminated,Proofed,Shortening,End-Date';
            OptionMembers = "Entry Terminated",Proofed,Shortening,"End-Date";
        }
        field(131; "Change Destination"; Option)
        {
            Caption = 'Change Destination';
            OptionCaption = 'Entry Terminated,Proofed';
            OptionMembers = "Entry Terminated",Proofed;
        }
        field(132; "Change Country"; Option)
        {
            Caption = 'Change Country';
            OptionCaption = 'Entry Terminated,Proofed';
            OptionMembers = "Entry Terminated",Proofed;
        }
        field(133; "Change Purpose"; Option)
        {
            Caption = 'Change Purpose';
            OptionCaption = 'Entry Terminated,Proofed';
            OptionMembers = "Entry Terminated",Proofed;
        }
        field(134; "Change Time"; Option)
        {
            Caption = 'Change Time';
            OptionCaption = 'Entry Terminated,Proofed,Shortening,End-Date';
            OptionMembers = "Entry Terminated",Proofed,Shortening,"End-Date";
        }
        field(135; "Check Supervisor"; Option)
        {
            Caption = 'Check Supervisor';
            OptionCaption = 'Always,Only Permission,Only Proof,Never';
            OptionMembers = Always,"Only Permission","Only Proof",Never;
        }
        field(136; "Unit Day Calculation"; Option)
        {
            Caption = 'Unit Day Calculation';
            OptionCaption = 'Irrelevant,Week,Month,Quarter,Year,Travel';
            OptionMembers = Irrelevant,Week,Month,Quarter,Year;
        }
        field(137; "Check Boarding"; Boolean)
        {
            Caption = 'Check Boarding';
        }
        field(138; "Delete Travel"; Option)
        {
            Caption = 'Delete Travel';
            OptionCaption = 'Entry Terminated,Proofed,Never';
            OptionMembers = "Entry Terminated",Proofed,Never;
        }
        field(139; "Overpayment Handling"; Option)
        {
            Caption = 'Overpayment Handling';
            OptionCaption = 'Ignore,Message,Error,Error Reset Administrator';
            OptionMembers = Ignore,Message,Error,"Error Reset Administrator";
        }
        field(140; "Gen. Journal Template Payroll"; Code[20])
        {
            Caption = 'Gen. Journal Template Payroll';
            Editable = false;
        }
        field(141; "Change Payment in Advance"; Option)
        {
            Caption = 'Change Payment in Advance';
            OptionCaption = 'Entry Terminated,Proofed';
            OptionMembers = "Entry Terminated",Proofed;
        }
        field(142; "Codeunit Clearance"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Codeunit),
                                                    ID = FIELD("Codeunit ID Clearance")));
            Caption = 'Codeunit Clearance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(143; "Codeunit ID Clearance"; Integer)
        {
            Caption = 'Codeunit ID Clearance';
            TableRelation = Object.ID WHERE(Type = CONST(Codeunit));
        }
        field(151; "Page Entry Account Card"; Integer)
        {
            Caption = 'Form Entry Account Card';
        }
        field(152; "Page Entry Account Lines"; Integer)
        {
            Caption = 'Page Entry Account Lines';
        }
        field(154; "Page Entry Part Account Card"; Integer)
        {
            Caption = 'Page Entry Part Account Card';
        }
        field(161; "Name Entry Account Card"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Page),
                                                    ID = FIELD("Page Entry Account Card")));
            Caption = 'Name Entry Account Card';
            Editable = false;
            FieldClass = FlowField;
        }
        field(162; "Name Entry Account Lines"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Page),
                                                    ID = FIELD("Page Entry Account Lines")));
            Caption = 'Name Entry Account Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(164; "Name Entry Part Account Card"; Text[30])
        {
            CalcFormula = Lookup(Object.Name WHERE(Type = CONST(Page),
                                                    ID = FIELD("Page Entry Part Account Card")));
            Caption = 'Name Entry Part Account Card';
            Editable = false;
            FieldClass = FlowField;
        }
        field(165; "Quantity Copies Posting"; Integer)
        {
            Caption = 'Quantity Copies Posting';
        }
        field(166; "E-Mail Authorization"; Boolean)
        {
            Caption = 'E-Mail Authorization';
        }
        field(167; "Reset Account"; Option)
        {
            Caption = 'Reset Account';
            OptionCaption = 'Administrator,Permission Group,Entry Group,No Restriction';
            OptionMembers = Administrator,"Permission Group","Entry Group","No Restriction";
        }
        field(168; "Posting Regulations"; Option)
        {
            Caption = 'Posting Regulations';
            OptionCaption = 'Without Restriction,,Administrator Only,,Administrator or Applyer,,Applyer Only,,Four Eyes Principle,,Four Eyes Administrator/Applyer  ';
            OptionMembers = "Without Restriction",,"Administrator Only",,"Administrator or Applyer",,"Applyer Only",,"Four Eyes Principle",,"Four Eyes Administrator/Applyer  ";
        }
        field(169; "Payroll Version"; Option)
        {
            Caption = 'Payroll Version';
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(170; "No Dimensions Purpose"; Boolean)
        {
            Caption = 'No Dimensions Purpose';
        }
        field(171; "No Dimensions Destination"; Boolean)
        {
            Caption = 'No Dimensions Destination';
        }
        field(172; "Check Foreign Travel"; Boolean)
        {
            Caption = 'Check Foreign Travel';
        }
        field(173; "Headerfield Dimension 1"; Option)
        {
            Caption = 'Headerfield Dimension 1';
            OptionCaption = 'Normal,Disabled,Unvisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(174; "Headerfield Dimension 2"; Option)
        {
            Caption = 'Headerfield Dimension 2';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(175; "Headerfield Job"; Option)
        {
            Caption = 'Headerfield Job';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(176; "Headerfield Period Startdate"; Option)
        {
            Caption = 'Headerfield Period Startdate';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(177; "Headerfield Period Enddate"; Option)
        {
            Caption = 'Headerfield Period Enddate';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(178; "Headerfield Accountdate"; Option)
        {
            Caption = 'Headerfield Accountdate';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(179; "Headerfield Country Code"; Option)
        {
            Caption = 'Headerfield Country Code';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(180; "Headerfield Currency Code"; Option)
        {
            Caption = 'Headerfield Currency Code';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(181; "Headerfield Travel Type"; Option)
        {
            Caption = 'Headerfield Travel Type';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(182; "Headerfield Reason Code"; Option)
        {
            Caption = 'Headerfield Reason Code';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(183; "Detailfield Travel Type"; Option)
        {
            Caption = 'Detailfield Travel Type';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(184; "Headerfield Expenses Group"; Option)
        {
            Caption = 'Headerfield Expenses Group';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(185; "Headerfield Resource No"; Option)
        {
            Caption = 'Headerfield Resource No';
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(186; "Detailfield Destination"; Option)
        {
            Caption = 'Detailfield Destination';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(187; "Detailfield Purpose"; Option)
        {
            Caption = 'Detailfield Purpose';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(188; "Detailfield Job"; Option)
        {
            Caption = 'Detailfield Job';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(189; "Detailfield Dimension 1"; Option)
        {
            Caption = 'Detailfield Dimension 1';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(190; "Detailfield Dimension 2"; Option)
        {
            Caption = 'Detailfield Dimension 2';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(191; "Detailfield Resource"; Option)
        {
            Caption = 'Detailfield Resource';
            OptionCaption = 'Invisible,Normal,Mandatory,Disabled';
            OptionMembers = Invisible,Normal,Mandatory,Disabled;
        }
        field(192; "Detailfield Travel Instrument"; Option)
        {
            Caption = 'Detailfield Travel Instrument';
            OptionCaption = 'Normal,Mandatory,Disabled,Invisible';
            OptionMembers = Normal,Mandatory,Disabled,Invisible;
        }
        field(193; "Detailfield Reason Code"; Option)
        {
            Caption = 'Detailfield Reason Code';
            OptionCaption = 'Invisible,Normal,Mandatory,Disabled';
            OptionMembers = Invisible,Normal,Mandatory,Disabled;
        }
        field(194; "Detailfield Expenses Group"; Option)
        {
            Caption = 'Detailfield Expenses Group';
            OptionCaption = 'Invisible,Normal,Mandatory,Disabled';
            OptionMembers = Invisible,Normal,Mandatory,Disabled;
        }
        field(195; "Check Date/Time"; Option)
        {
            Caption = 'Check Date/Time';
            OptionCaption = 'Check,No check,Date against Departure';
            OptionMembers = Check,"No check","Date against Departure";
        }
        field(196; "Maximal Travel Time"; DateFormula)
        {
            Caption = 'Maximal Travel Time';
        }
        field(197; "Email To Grant"; Boolean)
        {
            Caption = 'Email To Grant';
        }
        field(198; "Authorization Manual"; Boolean)
        {
            Caption = 'Authorization Manual';
        }
        field(199; "Job Item Variant Code"; Code[10])
        {
            Caption = 'Job Item Variant Code';
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("Job-Item"));
        }
        field(200; "Pay Type Reverse"; Code[20])
        {
            Caption = 'Pay Type Reverse';
        }
        field(201; "Job Integration"; Option)
        {
            Caption = 'Job Integration';
            OptionCaption = 'Job,Customer';
            OptionMembers = Job,Customer;
        }
        field(202; "No Dimensions Work Order"; Boolean)
        {
            Caption = 'No Dimensions Work Order';
        }
        field(203; "Headerfield Work Order"; Option)
        {
            Caption = 'Headerfield Work Order';
            InitValue = Invisible;
            OptionCaption = 'Normal,Disabled,Invisible';
            OptionMembers = Normal,Disabled,Invisible;
        }
        field(204; "Permission Steps Approval"; Integer)
        {
            Caption = 'Permission Steps Approval';
        }
        field(205; "Permission Steps Grant"; Integer)
        {
            Caption = 'Permission Steps Grant';
        }
        field(206; "Show Jobsplitting"; Boolean)
        {
            Caption = 'Show Jobsplitting';
        }
        field(207; "Create Breakfast"; Option)
        {
            Caption = 'Create Breakfast';
            OptionCaption = 'None,All,Domestic,Abroad';
            OptionMembers = "None",All,Domestic,Abroad;
        }
        field(208; "Automatic Flat Rates"; Option)
        {
            Caption = 'Automatic Flatrates';
            OptionCaption = 'Alldays,Only on Workdays';
            OptionMembers = Alldays,"Only on Workdays";
        }
        field(210; "Email with PDF"; Boolean)
        {
            Caption = 'Email with PDF';
        }
        field(211; "PDF File"; Text[150])
        {
            Caption = 'PDF File';
        }
        field(212; "Wizard Meals Tickmark"; Boolean)
        {
            Caption = 'Wizard Meals Tickmark';
        }
        field(213; "Default Additional Meals"; Option)
        {
            Caption = 'Default Additional Meals';
            OptionCaption = ' ,PIK,Percentage';
            OptionMembers = " ",PIK,Percentage;
        }
        field(214; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
        }
        field(215; "Customer Account"; Code[20])
        {
            Caption = 'Customer Account';
            TableRelation = Customer;
        }
        field(216; "VAT Balance Account"; Code[20])
        {
            Caption = 'VAT Balance Account';
            TableRelation = "G/L Account";
        }
        field(217; "Webservice Domain URL"; Text[250])
        {
            Caption = 'Webservice Domain URL';
            Description = 'c/sr/07062011';
        }
        field(218; "No. Series Posted Accounts"; Code[20])
        {
            Caption = 'No. Series Posted Accounts';
            TableRelation = "No. Series";
        }
        field(500; "Vouchertype Tax Reversal"; Code[20])
        {
            Caption = 'Vouchertype Tax Reversal';
            TableRelation = "TE-Voucher Type";
        }
        field(501; "Traveldays Message"; Integer)
        {
            Caption = 'Traveldays Message';
        }
        field(502; "Mail Client"; Option)
        {
            Caption = 'Mail Client';
            OptionCaption = 'MAPI,SMTP';
            OptionMembers = MAPI,SMTP;
        }
        field(503; "Breakfast Substraction Default"; Option)
        {
            Caption = 'Breakfast Substraction Default';
            OptionCaption = ' ,PIK,Flat,Complete';
            OptionMembers = " ",PIK,Flat,Complete;
        }
        field(504; "Bus. Posting Group Dom."; Code[20])
        {
            Caption = 'Bus. Posting Group Dom.';
            TableRelation = "Gen. Business Posting Group";
        }
        field(505; "Bus. Posting Group EU"; Code[20])
        {
            Caption = 'Bus. Posting Group EU';
            TableRelation = "Gen. Business Posting Group";
        }
        field(506; "Bus. Posting Group Abroad"; Code[20])
        {
            Caption = 'Bus. Posting Group Abroad';
            TableRelation = "Gen. Business Posting Group";
        }
        field(507; "VAT Bus. Posting Group Dom."; Code[20])
        {
            Caption = 'VAT Bus. Posting Group Dom.';
            TableRelation = "VAT Business Posting Group";
        }
        field(508; "VAT Bus. Posting Group EU"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group EU';
            TableRelation = "VAT Business Posting Group";
        }
        field(509; "VAT Bus. Posting Group Abroad"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group Abroad';
            TableRelation = "VAT Business Posting Group";
        }
        field(510; "Time To Request"; DateFormula)
        {
            Caption = 'Time To Request';
        }
        field(511; "Mitarbeiter Import Pfad"; Text[250])
        {
            Caption = 'Employee Import Path';
        }
        field(512; "16 Our Rule"; Boolean)
        {
            Caption = '16 o''clock rule';
        }
        field(513; "Mail Genehmiger Dienstreise"; Option)
        {
            Caption = 'Mail Approver Journey';
            OptionCaption = 'None,Mail with attachment direct,Mail without attachment direct,Mail with attachment Outlook,Mail without attachment Outlook';
            OptionMembers = Keine,"Mail mit Anhang direkt","Mail ohne Anhang direkt","Mail mit Anhang Outlook","Mail ohne Anhang Outlook";
        }
        field(514; "Mail Genehmiger Prüfung"; Option)
        {
            Caption = 'Mail approver check';
            OptionCaption = 'None,Mail with attachment direct,Mail without attachment direct,Mail with attachment Outlook,Mail without attachment Outlook';
            OptionMembers = Keine,"Mail mit Anhang direkt","Mail ohne Anhang direkt","Mail mit Anhang Outlook","Mail ohne Anhang Outlook";
        }
        field(515; "Mail Reisender Dienstreise"; Option)
        {
            Caption = 'Mail Traveler Journey';
            OptionCaption = 'None,Mail with attachment direct,Mail without attachment direct,Mail with attachment Outlook,Mail without attachment Outlook';
            OptionMembers = Keine,"Mail mit Anhang direkt","Mail ohne Anhang direkt","Mail mit Anhang Outlook","Mail ohne Anhang Outlook";
        }
        field(516; "Mail Reisender Prüfung"; Option)
        {
            Caption = 'Mail Traveler Check';
            OptionCaption = 'None,Mail';
            OptionMembers = Keine,Mail;
        }
        field(517; "Mail Reisender Nachbearbeitung"; Option)
        {
            Caption = 'Mail Traveler Postprocessing';
            OptionCaption = 'None,Mail direct,Mail Outlook';
            OptionMembers = Keine,"Mail direkt","Mail Outlook";
        }
        field(518; "Mailadress Travelcounter"; Text[250])
        {
            Caption = 'Mailadress Travelcounter';
        }
        field(519; Activigence; Boolean)
        {
            Caption = 'Activigence';
        }
        field(520; "Job Posting"; Option)
        {
            Caption = 'Job Posting';
            OptionCaption = 'Posting Job-Postline,Posting Gen. Journal Line,No Posting';
            OptionMembers = "Posting Job-Postline","Posting Gen. Journal Line","No Posting";
        }
        field(521; "Voucher Validity"; DateFormula)
        {
            Caption = 'Belegültigkeit';
        }
        field(522; "Host Name"; Text[150])
        {
            Caption = 'Host Name';
        }
        field(523; "Host Name Port"; Text[150])
        {
            Caption = 'Host Name Port';
        }
        field(524; "Database Name"; Text[150])
        {
            Caption = 'Databasename';
        }
        field(525; "Amount Grant Necessary"; Decimal)
        {
            Caption = 'Amount Grant Necessary';
        }
        field(526; "Range Amount Grant Necessary"; Option)
        {
            Caption = 'Range Amount Grant Necessary';
            OptionCaption = ' ,Travel,Account,Both';
            OptionMembers = " ",Travel,Account,Both;
        }
        field(527; "EMail Applier"; Text[150])
        {
            Caption = 'EMail Applier';
        }
        field(528; "EMail Carpark"; Text[150])
        {
            Caption = 'EMail Carpark';
        }
        field(529; "Fast Entry"; Option)
        {
            Caption = 'Fast Entry';
            OptionCaption = 'Both,Fast Entry,Header-Bottom-Structure';
            OptionMembers = Both,"Fast Entry","Header-Bottom-Structure";
        }
        field(530; "Check Hotelcosts FlatRate"; Boolean)
        {
            Caption = 'Check Hotelcosts Against FlatRate';
        }
        field(531; "Description To Line"; Boolean)
        {
            Caption = 'Description To Line';
        }
        field(532; "Line Description"; Text[50])
        {
            Caption = 'Line Description';
        }
        field(533; "PayType Description"; Boolean)
        {
            Caption = 'PayType Description';
        }
        field(534; "Mail General Ledger"; Text[80])
        {
            Caption = 'Mail General Ledger';
        }
        field(535; "Offset Account Dimension"; Option)
        {
            Caption = 'Offset Account Dimension';
            OptionCaption = 'TE-Account,Offset Account,Empty';
            OptionMembers = "TE-Account","Offset Account",Empty;
        }
        field(1000; "Cash Account"; Code[20])
        {
            Caption = 'Cash Account';
        }
        field(1001; "Pay Type M"; Code[20])
        {
            Caption = 'Lohnart M Bescheinigung';
        }
        field(1002; "Pay Type Certificate Reverse"; Code[20])
        {
            Caption = 'Pay Type Certificate Reverse';
        }
        field(2000; "VAT Bus. Posting Group Vendor"; Code[20])
        {
            Caption = 'VAT Bus. Posting Group Vendor';
            TableRelation = "VAT Business Posting Group";
        }
        field(2001; "Business Posting Group Vendor"; Code[20])
        {
            Caption = 'Business Posting Group Vendor';
            TableRelation = "Gen. Business Posting Group";
        }
        field(2002; "Vendor Posting Group"; Code[20])
        {
            Caption = 'Vendor Posting Group';
            TableRelation = "Vendor Posting Group";
        }
        field(2003; "Payment Terms Vendor"; Code[20])
        {
            Caption = 'Payment Terms Vendor';
            TableRelation = "Payment Terms";
        }
        field(2004; "Payment Method Vendor"; Code[20])
        {
            Caption = 'Payment Method Vendor';
            TableRelation = "Payment Method";
        }
        field(2005; "Vendor No. Series"; Code[10])
        {
            Caption = 'Vendor No. Series';
            TableRelation = "No. Series";
        }
        field(3000; "Show Journey Request"; Boolean)
        {
            Caption = 'Official Journey Request ignore';
            InitValue = true;
        }
        field(3010; "Show Print Journey Request"; Boolean)
        {
            Caption = 'Print Official Journey Request ignore';
            InitValue = true;
        }
        field(3020; "Show Send Mail"; Boolean)
        {
            Caption = 'Send Mail ignore';
            InitValue = true;
        }
        field(3030; "Show Account Lines"; Boolean)
        {
            Caption = 'Account Lines ignore';
            InitValue = true;
        }
        field(3040; "Show Document Lines"; Boolean)
        {
            Caption = 'Document Lines ignore';
            InitValue = true;
        }
        field(3050; "Show Comments"; Boolean)
        {
            Caption = 'Comments ignore';
            InitValue = true;
        }
        field(3060; "Show Dimensions"; Boolean)
        {
            Caption = 'Dimensions ignore';
            InitValue = true;
        }
        field(3070; "Show Assign Payment In Kind"; Boolean)
        {
            Caption = 'Assign Hotel- Payment In Kind ignore';
            InitValue = true;
        }
        field(3080; "Show Part Travels"; Boolean)
        {
            Caption = 'Part Travels ignore';
            InitValue = true;
        }
        field(3090; "Show Splitting"; Boolean)
        {
            Caption = 'Splitting ignore';
            InitValue = true;
        }
        field(3100; "Show Edit Travel"; Boolean)
        {
            Caption = 'Edit Travel ignore';
            InitValue = true;
        }
        field(3110; "Show Staff Car"; Boolean)
        {
            Caption = 'Staff Car ignore';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

