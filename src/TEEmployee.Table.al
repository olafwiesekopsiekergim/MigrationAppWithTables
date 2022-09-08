table 5050250 "TE-Employee"
{
    Caption = 'TE-Employee';
    DataCaptionFields = "No.", Name;
    Permissions = TableData "TE-Ledger Entry" = rimd;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Search Word"; Code[30])
        {
            Caption = 'Search Word';
        }
        field(4; "Name 2"; Text[30])
        {
            Caption = 'Name 2';
        }
        field(5; Adress; Text[50])
        {
            Caption = 'Adress';
        }
        field(6; "Adress 2"; Text[50])
        {
            Caption = 'Adress 2';
        }
        field(7; City; Text[50])
        {
            Caption = 'City';
        }
        field(8; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(10; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(11; "Address Form"; Text[40])
        {
            Caption = 'Address Form';
        }
        field(12; "Address Form Letter"; Text[50])
        {
            Caption = 'Address Form Letter';
        }
        field(13; Title; Text[30])
        {
            Caption = 'Title';
        }
        field(14; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(15; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
        }
        field(16; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(17; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(18; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = IF ("Job-Integration" = CONST (Job)) Job
            ELSE
            IF ("Job-Integration" = CONST (Customer)) Customer;
        }
        field(19; "Ressource No."; Code[20])
        {
            Caption = 'Ressource No.';
            TableRelation = Resource;
        }
        field(20; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(21; "Termination Date"; Date)
        {
            Caption = 'Termination Date';
        }
        field(22; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(23; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(24; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(30; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(31; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(32; "Employee No. (Pay)"; Code[20])
        {
            Caption = 'Employee No. (Pay)';
        }
        field(33; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(34; "Clearing Account"; Code[20])
        {
            Caption = 'Clearing Account';
            TableRelation = IF ("Clearing Account Type" = FILTER ("G/L Account")) "G/L Account"
            ELSE
            IF ("Clearing Account Type" = FILTER (Customer)) Customer
            ELSE
            IF ("Clearing Account Type" = FILTER (Vendor)) Vendor;
        }
        field(35; "Branch No."; Code[20])
        {
            Caption = 'Branch No.';
        }
        field(36; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(37; "Travel-Type"; Code[20])
        {
            Caption = 'Travel-Type';
            TableRelation = "TE-Travel-Type";
        }
        field(38; Group; Code[20])
        {
            Caption = 'Group';
            TableRelation = "TE-Account Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(39; "Starting Point Travel"; Text[50])
        {
            Caption = 'Starting Point Travel';
        }
        field(40; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency.Code;
        }
        field(43; "Vouch Type Boarding"; Code[20])
        {
            Caption = 'Vouch Type Boarding';
            TableRelation = "TE-Voucher Type";
        }
        field(44; "Vouch Type Lodging"; Code[20])
        {
            Caption = 'Vouch Type Lodging';
            TableRelation = "TE-Voucher Type";
        }
        field(45; "Vouch Type Travelling Expenses"; Code[20])
        {
            Caption = 'Vouch Type Travelling Expenses';
            TableRelation = "TE-Voucher Type";
        }
        field(46; "Mobile Phone No."; Text[30])
        {
            Caption = 'Mobile Phone No.';
        }
        field(47; Extension; Text[30])
        {
            Caption = 'Extension';
        }
        field(48; Pager; Text[30])
        {
            Caption = 'Pager';
        }
        field(49; Comment; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = CONST (5050250),
                                                         "Account No." = FIELD ("No."),
                                                         "Part Account No." = CONST (0),
                                                         "Part Account Line No." = CONST (0)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Company E-Mail"; Text[80])
        {
            Caption = 'Company E-Mail';
        }
        field(52; "No. Serie"; Code[10])
        {
            Caption = 'No. Serie';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(57; "Vouch Type Boarding Dep."; Code[20])
        {
            Caption = 'Vouch Type Boarding Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(58; "Vouch Type Lodging Dep."; Code[20])
        {
            Caption = 'Vouch Type Lodging Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(59; "Vouch Type Trav. Dep."; Code[20])
        {
            Caption = 'Vouch Type Trav. Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(61; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(62; "Vouch Type Filter"; Code[10])
        {
            Caption = 'Vouch Type Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Voucher Type";
        }
        field(63; "Dimension Code 1 Filter"; Code[10])
        {
            Caption = 'Dimension Code 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(64; "Dimension Code 2 Filter"; Code[10])
        {
            Caption = 'Dimension Code 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
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
        field(67; "Category Filter"; Option)
        {
            Caption = 'Category Filter';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Driving Expenses,Boarding,Lodging,Entertainment,Miscellaneous,Payment in advance,Staff Car';
            OptionMembers = " ","Driving Expenses",Boarding,Lodging,Entertainment,Miscellaneous,"Payment in advance","Staff Car";
        }
        field(68; "State Filter"; Option)
        {
            Caption = 'State Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Entry,Finish Entry,Proofed,Posted,Reversed';
            OptionMembers = Entry,"Finish Entry",Proofed,Posted,Reversed;
        }
        field(69; "Staff Car Filter"; Code[20])
        {
            Caption = 'Staff Car Filter';
            FieldClass = FlowFilter;
        }
        field(70; "Total Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Ledger Entry"."Amount (LCY)" WHERE ("Employee No." = FIELD ("No."),
                                                                      "Post Date" = FIELD ("Date Filter"),
                                                                      "TE-Voucher Type" = FIELD ("Vouch Type Filter"),
                                                                      "Shortcut Dimension 1 Code" = FIELD ("Dimension Code 1 Filter"),
                                                                      "Shortcut Dimension 2 Code" = FIELD ("Dimension Code 2 Filter"),
                                                                      "Voucher Category" = FIELD ("Category Filter")));
            Caption = 'Total Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Rewarded Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Ledger Entry"."Amount Payment (LCY)" WHERE ("Employee No." = FIELD ("No."),
                                                                              "Post Date" = FIELD ("Date Filter"),
                                                                              "TE-Voucher Type" = FIELD ("Vouch Type Filter"),
                                                                              "Shortcut Dimension 1 Code" = FIELD ("Dimension Code 1 Filter"),
                                                                              "Shortcut Dimension 2 Code" = FIELD ("Dimension Code 2 Filter")));
            Caption = 'Rewarded Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Charged Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Ledger Entry"."Charged Amount Job (LCY)" WHERE ("Employee No." = FIELD ("No."),
                                                                                  "Post Date" = FIELD ("Date Filter"),
                                                                                  "TE-Voucher Type" = FIELD ("Vouch Type Filter"),
                                                                                  "Shortcut Dimension 1 Code" = FIELD ("Dimension Code 1 Filter"),
                                                                                  "Shortcut Dimension 2 Code" = FIELD ("Dimension Code 2 Filter")));
            Caption = 'Charged Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Total Kilometer"; Decimal)
        {
            CalcFormula = Sum ("TE-Ledger Entry".Kilometer WHERE ("Employee No." = FIELD ("No."),
                                                                 "Post Date" = FIELD ("Date Filter")));
            Caption = 'Total Kilometer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Staff Car Kilometer Total"; Decimal)
        {
            CalcFormula = Sum ("TE-Ledger Entry"."Staff Car Kilometer" WHERE ("Employee No." = FIELD ("No."),
                                                                             "Post Date" = FIELD ("Date Filter")));
            Caption = 'Staff Car Kilometer Total';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "Tax Flat Total"; Decimal)
        {
            CalcFormula = Sum ("TE-Ledger Entry"."Tax Flat" WHERE ("Employee No." = FIELD ("No."),
                                                                  "Post Date" = FIELD ("Date Filter")));
            Caption = 'Tax Flat Total';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76; "Tax Regular Total"; Decimal)
        {
            CalcFormula = Sum ("TE-Ledger Entry"."Tax Regular" WHERE ("Employee No." = FIELD ("No."),
                                                                     "Post Date" = FIELD ("Date Filter")));
            Caption = 'Tax Regular Total';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77; "Taxfree Not Exhausted"; Decimal)
        {
            CalcFormula = Sum ("TE-Ledger Entry"."Taxfree Not Exhausted" WHERE ("Employee No." = FIELD ("No."),
                                                                               "Post Date" = FIELD ("Date Filter")));
            Caption = 'Taxfree Not Exhausted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; "Total Amount Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."Total Amount (LCY)" WHERE ("Employee No." = FIELD ("No."),
                                                                                 "Vouch-Type Category" = FIELD ("Category Filter"),
                                                                                 "Account State" = FIELD ("State Filter"),
                                                                                 "Voucher Type" = FIELD ("Vouch Type Filter"),
                                                                                 Date = FIELD ("Date Filter")));
            Caption = 'Total Amount Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(79; "Paying Amount Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."Total Charged Job Amount (LCY)" WHERE ("Employee No." = FIELD ("No."),
                                                                                             "Vouch-Type Category" = FIELD ("Category Filter"),
                                                                                             "Account State" = FIELD ("State Filter")));
            Caption = 'Paying Amount Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Selling Amount Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."Total Amount (LCY)" WHERE ("Employee No." = FIELD ("No."),
                                                                                 "Vouch-Type Category" = FIELD ("Category Filter"),
                                                                                 "Account State" = FIELD ("State Filter")));
            Caption = 'Selling Amount Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Kilometer Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line".Quantity WHERE ("Employee No." = FIELD ("No."),
                                                                     "Account State" = FIELD ("State Filter"),
                                                                     "Staff Car" = FIELD ("Staff Car Filter"),
                                                                     "Voucher Type Distance" = CONST (true)));
            Caption = 'Kilometer Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(82; "Flat Tax Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Account"."Tax Flat" WHERE ("Employee-No." = FIELD ("No."),
                                                             "Account State" = FIELD ("State Filter")));
            Caption = 'Flat Tax Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "Regular Tax Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Account"."Tax Regular" WHERE ("Employee-No." = FIELD ("No."),
                                                                "Account State" = FIELD ("State Filter")));
            Caption = 'Regular Tax Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "TaxFree Not Exhausted Unposted"; Decimal)
        {
            CalcFormula = Sum ("TE-Account"."Taxfree Not Exhausted" WHERE ("Employee-No." = FIELD ("No."),
                                                                          "Account State" = FIELD ("State Filter")));
            Caption = 'TaxFree Not Exhausted Unposted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(85; "Post Type"; Option)
        {
            Caption = 'Post Type';
            OptionCaption = ' ,Vendor,Cash,Pay,Incoming Invoice';
            OptionMembers = " ",Vendor,Cash,Pay,"Incoming Invoice";
        }
        field(91; "Employee Filter"; Code[20])
        {
            Caption = 'Employee Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Employee";
        }
        field(92; "Account Group Filter"; Code[20])
        {
            Caption = 'Account Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Account Group";
        }
        field(93; "Permission Filter"; Code[20])
        {
            Caption = 'Permission Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Permission Group";
        }
        field(94; "Total Amount Document Date"; Decimal)
        {
            CalcFormula = Sum ("TE-Posted Part Account Line"."Total Amount (LCY)" WHERE (Date = FIELD ("Date Filter"),
                                                                                        "Voucher Type" = FIELD ("Vouch Type Filter"),
                                                                                        "Employee No." = FIELD ("No."),
                                                                                        "Vouch-Type Category" = FIELD ("Category Filter")));
            Caption = 'Total Amount Document Date';
            FieldClass = FlowField;
        }
        field(95; "Duration Calculation"; Option)
        {
            Caption = 'Duration Calculation';
            InitValue = Addition;
            OptionCaption = 'Single,Connection,Addition,Partition,Austria';
            OptionMembers = Single,Connection,Addition,Partition,Austria;
        }
        field(101; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'ValidateTableRelation = Nein wg. windows Anmeldung';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(102; "Account Group"; Code[20])
        {
            Caption = 'Account Group';
            Description = 'ValidateTableRelation= Nein wegen Holen entsprechendes Teilfeld';
            TableRelation = "TE-Account Group";
        }
        field(103; Administrator; Boolean)
        {
            Caption = 'Administrator';
        }
        field(104; "Permission Group"; Code[20])
        {
            Caption = 'Permission Group';
            TableRelation = "TE-Permission Group";
        }
        field(105; "Employee Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Employee" WHERE ("No." = FIELD ("No."),
                                                     "Account Group" = FIELD ("Account Group Filter")));
            Caption = 'Employee Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "Group Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Account Group Member" WHERE (Code = FIELD ("Account Group Filter"),
                                                                 "TE-Employee" = FIELD ("No.")));
            Caption = 'Group Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "Employee Perm. Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Permission Group Member" WHERE (Code = FIELD ("Permission Filter"),
                                                                    "TE-Employee" = FIELD ("No.")));
            Caption = 'Employee Perm. Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(108; "Permission by E-Mail"; Boolean)
        {
            Caption = 'Permission by E-Mail';
        }
        field(109; "Staff Car"; Code[20])
        {
            Caption = 'Staff Car';
            TableRelation = "TE-Voucher Type"."No." WHERE (Category = CONST ("Staff Car"));
        }
        field(110; "Staff Car Type"; Text[30])
        {
            Caption = 'Staff Car Type';
        }
        field(111; "Acknowledgment Date"; Date)
        {
            Caption = 'Acknowledgment Date';
        }
        field(112; "Training Group"; Code[20])
        {
            Caption = 'Training Group';
        }
        field(113; "Authorization Exemption"; Date)
        {
            Caption = 'Authorization Exemption';
        }
        field(114; "Registration Number"; Text[30])
        {
            Caption = 'Registration Number';
        }
        field(115; Duration; Decimal)
        {
            Caption = 'Duration';
        }
        field(116; "Start Work"; Time)
        {
            Caption = 'Start Work';
        }
        field(117; "End Work"; Time)
        {
            Caption = 'End Work';
        }
        field(118; "Discount Card 1"; Option)
        {
            Caption = 'Discount Card 1';
            OptionCaption = '  ,25% 2.Class,50% 2.Class,25 % First Class,50 % First Class,Else';
            OptionMembers = "No Card","25% 2.Class","50% 2.Class","25 % First Class","50 % First Class","Else";
        }
        field(119; "Discount Card 2"; Option)
        {
            Caption = 'Discount Card 2';
            OptionCaption = ' ,25% 2.Class,50% 2.Class,25 % First Class,50 % First Class,Else';
            OptionMembers = "No Card","25% 2.Class","50% 2.Class","25 % First Class","50 % First Class","Else";
        }
        field(120; "Discount 1 Start"; Date)
        {
            Caption = 'Discount 1 Start';
        }
        field(121; "Discount 2 Start"; Date)
        {
            Caption = 'Discount 2 Start';
        }
        field(122; "Discount 1 End"; Date)
        {
            Caption = 'Discount 1 End';
        }
        field(123; "Discount 2 End"; Date)
        {
            Caption = 'Discount 2 End';
        }
        field(124; "Discount 1 Vouchtype 1"; Code[20])
        {
            Caption = 'Discount 1 Vouchtype 1';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(125; "Discount 2 Vouchtype 1"; Code[20])
        {
            Caption = 'Discount 2 Vouchtype 1';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(126; "Discount Card 1 Price"; Decimal)
        {
            Caption = 'Discount Card 1 Price';
        }
        field(127; "Discount Card 2 Price"; Decimal)
        {
            Caption = 'Discount Card 2 Price';
        }
        field(128; "Discount Card 1 Discount"; Decimal)
        {
            Caption = 'Discount Card 1 Discount';
        }
        field(129; "Discount Card 2 Discount"; Decimal)
        {
            Caption = 'Discount Card 2 Discount';
        }
        field(130; "Discount 1 Vouchtype 2"; Code[20])
        {
            Caption = 'Discount 1 Vouchtype 2';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(131; "Discount 2 Vouchtype 2"; Code[20])
        {
            Caption = 'Discount 2 Vouchtype 2';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(132; "Discount 1 Vouchtype 3"; Code[20])
        {
            Caption = 'Discount 3 Vouchtype 3';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(133; "Discount 2 Vouchtype 3"; Code[20])
        {
            Caption = 'Discount 2 Vouchtype 3';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(134; "Credit Card 1 Description"; Text[30])
        {
            Caption = 'Credit Card 1 Description';
        }
        field(135; "Credit Card 1 Offset Account"; Code[20])
        {
            Caption = 'Credit Card 1 Offset Account';
            TableRelation = IF ("Credit Card 1 Account Type" = FILTER ("G/L Account")) "G/L Account"
            ELSE
            IF ("Credit Card 1 Account Type" = FILTER (Customer)) Customer
            ELSE
            IF ("Credit Card 1 Account Type" = FILTER (Vendor)) Vendor;
        }
        field(136; "Credit Card 2 Description"; Text[30])
        {
            Caption = 'Credit Card 2 Description';
        }
        field(137; "Credit Card 2 Offset Account"; Code[20])
        {
            Caption = 'Credit Card 2 Offset Account';
            TableRelation = IF ("Credit Card 2 Account Type" = FILTER ("G/L Account")) "G/L Account"
            ELSE
            IF ("Credit Card 2 Account Type" = FILTER (Customer)) Customer
            ELSE
            IF ("Credit Card 2 Account Type" = FILTER (Vendor)) Vendor;
        }
        field(138; "Base Calendar"; Code[10])
        {
            Caption = 'Base Calendar';
            TableRelation = "Base Calendar";
        }
        field(139; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(140; "Database/Window"; Option)
        {
            Caption = 'Database/Window';
            OptionCaption = 'Database,Window';
            OptionMembers = Database,Window;
        }
        field(141; "Credit Card 1 Account Type"; Option)
        {
            Caption = 'Credit Card 1 Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(142; "Credit Card 2 Account Type"; Option)
        {
            Caption = 'Credit Card 2 Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(143; "Clearing Account Type"; Option)
        {
            Caption = 'Clearing Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(144; "Payment in Advance"; Decimal)
        {
            Caption = 'Payment in Advance';
        }
        field(145; "Payroll Version"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Payroll Version");
            Caption = 'Payroll Version';
            FieldClass = FlowField;
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(146; "Payroll Company"; Text[30])
        {
            Caption = 'Payroll Company';
            TableRelation = Company;
            ValidateTableRelation = false;
        }
        field(147; "G/L Company"; Text[30])
        {
            Caption = 'G/L Company';
            TableRelation = Company;
        }
        field(148; Subunit; Code[20])
        {
            Caption = 'Subunit';
        }
        field(149; "Subunit Filter"; Text[150])
        {
            Caption = 'Subunit Filter';
        }
        field(150; "Job-Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer,Work Order';
            OptionMembers = Job,Customer,"Work Order";
        }
        field(151; "Air Plus Employee No."; Code[8])
        {
            Caption = 'Air Plus Employee No.';
        }
        field(152; "AirPlus Credit Card Number"; Text[19])
        {
            Caption = 'AirPlus Credit Card Number';
        }
        field(153; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(154; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(155; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(156; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(157; "Voucher Type Priority"; Integer)
        {
            Caption = 'Voucher Type Priority';
        }
        field(158; "Employer Category"; Decimal)
        {
            Caption = 'Employer Category';
        }
        field(159; Gender; Option)
        {
            Caption = 'Gender';
            OptionCaption = 'Male,Female';
            OptionMembers = "Männlich",Weiblich;
        }
        field(160; "Orga-Einheit"; Code[20])
        {
            Caption = 'Orga-Unit';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Word")
        {
        }
        key(Key3; "User ID")
        {
        }
        key(Key4; "Account Group", "No.")
        {
        }
        key(Key5; "Account Group", "Search Word")
        {
        }
        key(Key6; "Vendor No.")
        {
        }
        key(Key7; Name)
        {
        }
    }

    fieldgroups
    {
    }
}

