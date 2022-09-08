table 5050254 "TE-Account"
{
    Caption = 'TE-Account';
    Permissions = TableData Vendor = r;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(5; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(6; "Description 2"; Text[80])
        {
            Caption = 'Description 2';
        }
        field(7; "External Document-No."; Code[20])
        {
            Caption = 'External Document-No.';
        }
        field(8; "Post Description"; Text[50])
        {
            Caption = 'Post Description';
        }
        field(10; "Employee-No."; Code[20])
        {
            Caption = 'Employee-No.';
            TableRelation = "TE-Employee";
        }
        field(11; "Search Word"; Code[30])
        {
            Caption = 'Search Word';
        }
        field(12; Name; Text[50])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(13; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
        field(14; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(15; "Voucher Type Lodging"; Code[20])
        {
            Caption = 'Voucher Type Lodging';
            TableRelation = "TE-Voucher Type";
        }
        field(16; "Voucher Type Boarding"; Code[20])
        {
            Caption = 'Voucher Type Boarding';
            TableRelation = "TE-Voucher Type";
        }
        field(17; "Voucher Type Driving"; Code[20])
        {
            Caption = 'Voucher Type Driving';
            TableRelation = "TE-Voucher Type";
        }
        field(28; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(29; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(30; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(31; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(32; "Job No./ Customer"; Code[20])
        {
            Caption = 'Job No./Customer';
            TableRelation = IF ("Job-Integration" = CONST (Job)) Job
            ELSE
            IF ("Job-Integration" = CONST (Customer)) Customer;
        }
        field(33; "Account Date"; Date)
        {
            Caption = 'Account Date';
        }
        field(34; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(35; "Account State"; Option)
        {
            Caption = 'Account State';
            OptionCaption = 'Entry,Finish Entry,Factual Proofed,Posted,Reversed';
            OptionMembers = Entry,"Finish Entry","Factual Proofed",Posted,Reversed;
        }
        field(36; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(37; "Travel-Type"; Code[20])
        {
            Caption = 'Travel-Type';
            TableRelation = "TE-Travel-Type";
        }
        field(45; "Counter Balance Type"; Option)
        {
            Caption = 'Counter Balance Type';
            OptionCaption = 'Vendor,G/L Account,Payroll,Incoming Invoice';
            OptionMembers = Vendor,"G/L Account",Payroll,"Incoming Invoice";
        }
        field(46; "Counter Balance No."; Code[20])
        {
            Caption = 'Counter Balance No.';
            TableRelation = IF ("Counter Balance Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Counter Balance Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Counter Balance Type" = CONST (Payroll),
                                     "Payroll Version" = CONST (Lessor)) Employee
            ELSE
            IF ("Counter Balance Type" = CONST ("Incoming Invoice")) Vendor;
        }
        field(47; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(49; Comment; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = CONST (5050254),
                                                         "Account No." = FIELD ("No."),
                                                         "Part Account No." = CONST (0),
                                                         "Part Account Line No." = CONST (0)));
            Caption = 'comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Period Start Date"; Date)
        {
            Caption = 'Period Start Date';
        }
        field(51; "Period Final Date"; Date)
        {
            Caption = 'Period Final Date';
        }
        field(52; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(57; "Voucher Type Boarding Dep."; Code[20])
        {
            Caption = 'Vouch Type Boarding Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(58; "Voucher Type Lodging Dep."; Code[20])
        {
            Caption = 'Vouch Type Lodging Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(59; "Voucher Type Driving Dep."; Code[20])
        {
            Caption = 'Voucher Type Driving Dep.';
            TableRelation = "TE-Voucher Type";
        }
        field(60; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(61; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(62; "Balance With Document No."; Code[20])
        {
            Caption = 'Balance with Document No.';
            TableRelation = IF ("Balance With Document Type" = CONST ("Posted TE-Account")) "TE-Posted Account" WHERE ("Document-Type" = CONST ("Credit Memo"))
            ELSE
            IF ("Balance With Document Type" = CONST ("Posted TE-Credit Memo")) "TE-Posted Account" WHERE ("Document-Type" = CONST (Account));
        }
        field(63; "Balance With Document Type"; Option)
        {
            Caption = 'Balance With Document Type';
            OptionCaption = ' ,Posted TE-Account,Posted TE-Credit Memo';
            OptionMembers = " ","Posted TE-Account","Posted TE-Credit Memo";
        }
        field(64; "Employer To G/L Account"; Boolean)
        {
            Caption = 'Employer To G/L Account';
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
        field(67; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Account,Credit-Memo';
            OptionMembers = Account,"Credit-Memo";
        }
        field(70; "Total Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Part Account Line"."Total Amount (LCY)" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Total Amount (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Total Payed (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Part Account Line"."Total Paid Amount (LCY)" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Total Payed (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Total Charged Job (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Part Account Line"."Total Charged Job Amount (LCY)" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Total Charged (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Total Taxfree (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Part Account Line"."Total Taxfree Amount (LCY)" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Total Taxfree (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Total Tax Liable (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Part Account Line"."Total Liable Tax (LCY)" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Total Tax Liable (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; "Total Kilometer"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line".Quantity WHERE ("Account No." = FIELD ("No."),
                                                                     "Voucher Type Distance" = CONST (true),
                                                                     "Staff Car" = FILTER ('')));
            Caption = 'Total Kilometer';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76; "Tax Regular"; Decimal)
        {
            Caption = 'Tax Regular';
        }
        field(77; "Tax Flat"; Decimal)
        {
            Caption = 'Tax Flat';
        }
        field(78; "Taxfree Not Exhausted"; Decimal)
        {
            Caption = 'Taxfree Not Exhausted';
        }
        field(79; "Total Staff Car Kilometer"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line".Quantity WHERE ("Account No." = FIELD ("No."),
                                                                     "Voucher Type Distance" = CONST (true),
                                                                     "Staff Car" = FILTER (<> '')));
            Caption = 'Total Staff Car Kilometer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(91; "Staff Car Filter"; Code[10])
        {
            Caption = 'Staff Car Filter';
            FieldClass = FlowFilter;
        }
        field(92; "Account Group Filter"; Code[20])
        {
            Caption = 'Account Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Account Group";
        }
        field(93; "Authorization Group Filter"; Code[20])
        {
            Caption = 'Authorization Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Permission Group";
        }
        field(94; "Permission Group Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Permission Group Member" WHERE (Code = FIELD ("Authorization Group Filter"),
                                                                    "TE-Employee" = FIELD ("Employee-No."),
                                                                    Range = FIELD ("Permission Group Filter")));
            Caption = 'Permission Group Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(95; "Permission Group Filter"; Option)
        {
            Caption = 'Permission Group Filter';
            Description = 'FlowFilter';
            FieldClass = FlowFilter;
            OptionCaption = 'Both,Grant,Proof';
            OptionMembers = Both,Grant,Proof;
        }
        field(105; "Employee Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Employee" WHERE ("No." = FIELD ("Employee-No."),
                                                     "Account Group" = FIELD ("Account Group Filter")));
            Caption = 'Employee Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; "Account Group Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Account Group Member" WHERE ("TE-Employee" = FIELD ("Employee-No."),
                                                                 Code = FIELD ("Account Group Filter")));
            Caption = 'Account Group authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; "Not Authorized"; Boolean)
        {
            CalcFormula = Exist ("TE-Part Account" WHERE ("Journey Authorized" = FILTER (false),
                                                         "Account No." = FIELD ("No.")));
            Caption = 'Not Authorized';
            Editable = false;
            FieldClass = FlowField;
        }
        field(108; Old; Boolean)
        {
            Caption = 'Old';
        }
        field(109; "Change with Proof"; Option)
        {
            Caption = 'Change with Proof';
            OptionCaption = 'Verification,w/o Verification';
            OptionMembers = Verification,"w/o Verification";
        }
        field(110; "Travels without Permission"; Boolean)
        {
            CalcFormula = Exist ("TE-Part Account" WHERE ("Authorization Duty" = CONST (true),
                                                         "Account No." = FIELD ("No."),
                                                         "Permission Complete" = CONST (false)));
            Caption = 'Travels without Permission';
            Editable = false;
            FieldClass = FlowField;
        }
        field(111; "Examination  State"; Option)
        {
            Caption = 'Examination State';
            OptionCaption = ' ,Factual Correct,Postprocessing';
            OptionMembers = " ","Factual Correct",Postprocessing;
        }
        field(112; "Examined By"; Code[50])
        {
            Caption = 'Examined By';
        }
        field(113; "Date Examined"; Date)
        {
            Caption = 'Date examined';
        }
        field(114; Administrator; Boolean)
        {
            Caption = 'Administrator';
        }
        field(115; "Submitted Pay-Amount (LCY)"; Decimal)
        {
            Caption = 'Submitted Pay-Amount (LCY)';
        }
        field(116; "Granted Amount (LCY)"; Decimal)
        {
            Caption = 'Granted Amount (LCY)';
        }
        field(117; Free; Decimal)
        {
            Caption = 'Free';
        }
        field(118; Free2; Decimal)
        {
            Caption = 'Free2';
        }
        field(119; "Pay Date"; Date)
        {
            Caption = 'Pay Date';
        }
        field(120; "Account Reset"; Boolean)
        {
            Caption = 'Account Reset';
        }
        field(121; "Payroll Version"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Payroll Version");
            Caption = 'Payroll Version';
            FieldClass = FlowField;
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(122; "Sub Unit"; Code[20])
        {
            Caption = 'Sub Unit';
        }
        field(123; Balanced; Boolean)
        {
            CalcFormula = Min ("Vendor Ledger Entry".Open WHERE ("Document No." = FIELD ("No.")));
            Caption = 'Balanced';
            FieldClass = FlowField;
        }
        field(124; "Job-Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job-Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer';
            OptionMembers = Job,Customer;
        }
        field(125; "Work Order"; Code[20])
        {
            Caption = 'Work Order';
        }
        field(126; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(127; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(128; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(129; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No./ Customer"));
        }
        field(130; "Examination  State 2"; Option)
        {
            Caption = 'Examination State 2';
            OptionCaption = ' ,factual correct,reworking';
            OptionMembers = " ","factual correct",reworking;
        }
        field(131; "Examined By 2"; Code[50])
        {
            Caption = 'Examined By 2';
        }
        field(132; "Date Examined 2"; Date)
        {
            Caption = 'Date examined 2';
        }
        field(133; "Examination  State 3"; Option)
        {
            Caption = 'Examination State 3';
            OptionCaption = ' ,factual correct,reworking';
            OptionMembers = " ","factual correct",reworking;
        }
        field(134; "Examined By 3"; Code[50])
        {
            Caption = 'Examined By 3';
        }
        field(135; "Date Examined 3"; Date)
        {
            Caption = 'Date examined 3';
        }
        field(136; "Examination  State 4"; Option)
        {
            Caption = 'Examination State 4';
            OptionCaption = ' ,factual correct,reworking';
            OptionMembers = " ","factual correct",reworking;
        }
        field(137; "Examined By 4"; Code[50])
        {
            Caption = 'Examined By 4';
        }
        field(138; "Date Examined 4"; Date)
        {
            Caption = 'Date examined 4';
        }
        field(139; "Permission Complete"; Boolean)
        {
            Caption = 'Permission Complete';
        }
        field(140; "Date Insert"; Date)
        {
            Caption = 'Date Insert';
        }
        field(141; "User Insert"; Code[50])
        {
            Caption = 'User Insert';
        }
        field(142; "Ländercode Reisen"; Code[10])
        {
            CalcFormula = Min ("TE-Part Account"."Country Code" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Country Code Journey';
            FieldClass = FlowField;
        }
        field(143; "Ende Reise"; Date)
        {
            Caption = 'End Journey';
        }
        field(144; "Datum Abschließen"; Date)
        {
            Caption = 'Date of completion';
        }
        field(145; "Datum Erinnerung"; Date)
        {
            Caption = 'Date Reminder';
        }
        field(146; "Reversed by/from  Document No."; Code[50])
        {
            Caption = 'Reversed by/from  Document No.';
        }
        field(147; "Proposed Pay Amount"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account"."Proposed Payment" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Proposed Pay Amount';
            FieldClass = FlowField;
        }
        field(300; "Total VAT Pay"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."VAT Amount (LCY)" WHERE ("Account No." = FIELD ("No."),
                                                                               "Paid By" = CONST (Private)));
            Caption = 'Mehrwersteuer Zahlbetrag';
            FieldClass = FlowField;
        }
        field(301; "Total VAT"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."VAT Amount (LCY)" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Mehrwertsteuer gesamt';
            FieldClass = FlowField;
        }
        field(302; "Permission State Travel"; Option)
        {
            CalcFormula = Min ("TE-Part Account"."State of Proof" WHERE ("Account No." = FIELD ("No.")));
            Caption = 'Genehmigungsstatus  Reise';
            FieldClass = FlowField;
            OptionCaption = ' ,Granted,Not Granted,Reversed';
            OptionMembers = " ",Genehmigt,"nicht genehmigt",storniert;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Employee-No.", "No.")
        {
        }
        key(Key3; "Account State", "No.")
        {
        }
        key(Key4; "Account State", "External Document-No.", "Posting Date")
        {
        }
        key(Key5; "Account State", "Employee-No.")
        {
            SumIndexFields = "Tax Regular", "Tax Flat", "Taxfree Not Exhausted";
        }
        key(Key6; "Search Word")
        {
        }
    }

    fieldgroups
    {
    }
}

