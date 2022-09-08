table 15 "G/L Account"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // GLOE 01.11.08   Gen.Ledger Open Entries
    //                 - New Field added
    // TAX  01.04.12   Balance and Taxes
    //                 - New Fields added
    // -----------------------------------------------------
    // :DMW14.03:1:01 #New field for Calculation: 5013211 "Calculation Group"
    // #DMW16.00.02:T114 27.10.10 DEMSR.SSZ
    //   Replaced field "Calculation Groupe" with "Calculation Groupe Code"
    // #DMW16.00.03:T013 20.10.11 DEMSR.SSZ
    //   #New field to order g/l accounts out from Document BOM/Construction Order: 5013410, 5013420
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn.OGL  25.02.2015  OGL      akq        Implementing dynamo OGL
    // ================================================================================

    Caption = 'G/L Account';
    DataCaptionFields = "No.", Name;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(4; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'Posting,Heading,Total,Begin-Total,End-Total';
            OptionMembers = Posting,Heading,Total,"Begin-Total","End-Total";
        }
        field(6; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(7; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(9; "Income/Balance"; Option)
        {
            Caption = 'Income/Balance';
            OptionCaption = 'Income Statement,Balance Sheet';
            OptionMembers = "Income Statement","Balance Sheet";
        }
        field(10; "Debit/Credit"; Option)
        {
            Caption = 'Debit/Credit';
            OptionCaption = 'Both,Debit,Credit';
            OptionMembers = Both,Debit,Credit;
        }
        field(11; "No. 2"; Code[20])
        {
            Caption = 'No. 2';
        }
        field(12; Comment; Boolean)
        {
            CalcFormula = Exist ("Comment Line" WHERE ("Table Name" = CONST ("G/L Account"),
                                                      "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(14; "Direct Posting"; Boolean)
        {
            Caption = 'Direct Posting';
            InitValue = true;
        }
        field(16; "Reconciliation Account"; Boolean)
        {
            AccessByPermission = TableData "Bank Account" = R;
            Caption = 'Reconciliation Account';
        }
        field(17; "New Page"; Boolean)
        {
            Caption = 'New Page';
        }
        field(18; "No. of Blank Lines"; Integer)
        {
            Caption = 'No. of Blank Lines';
            MinValue = 0;
        }
        field(19; Indentation; Integer)
        {
            Caption = 'Indentation';
            MinValue = 0;
        }
        field(26; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(28; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(29; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(30; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(31; "Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                        "G/L Account No." = FIELD (FILTER (Totaling)),
                                                        "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                        "Posting Date" = FIELD (UPPERLIMIT ("Date Filter"))));
            Caption = 'Balance at Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Net Change"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                        "G/L Account No." = FIELD (FILTER (Totaling)),
                                                        "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                        "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Net Change';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Budgeted Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Budget Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                               "G/L Account No." = FIELD (FILTER (Totaling)),
                                                               "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                               "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                               "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                               Date = FIELD ("Date Filter"),
                                                               "Budget Name" = FIELD ("Budget Filter")));
            Caption = 'Budgeted Amount';
            FieldClass = FlowField;
        }
        field(34; Totaling; Text[250])
        {
            Caption = 'Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(35; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "G/L Budget Name";
        }
        field(36; Balance; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                        "G/L Account No." = FIELD (FILTER (Totaling)),
                                                        "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter")));
            Caption = 'Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "Budget at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Budget Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                               "G/L Account No." = FIELD (FILTER (Totaling)),
                                                               "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                               "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                               "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                               Date = FIELD (UPPERLIMIT ("Date Filter")),
                                                               "Budget Name" = FIELD ("Budget Filter")));
            Caption = 'Budget at Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Consol. Translation Method"; Option)
        {
            AccessByPermission = TableData "Business Unit" = R;
            Caption = 'Consol. Translation Method';
            OptionCaption = 'Average Rate (Manual),Closing Rate,Historical Rate,Composite Rate,Equity Rate';
            OptionMembers = "Average Rate (Manual)","Closing Rate","Historical Rate","Composite Rate","Equity Rate";
        }
        field(40; "Consol. Debit Acc."; Code[20])
        {
            AccessByPermission = TableData "Business Unit" = R;
            Caption = 'Consol. Debit Acc.';
        }
        field(41; "Consol. Credit Acc."; Code[20])
        {
            AccessByPermission = TableData "Business Unit" = R;
            Caption = 'Consol. Credit Acc.';
        }
        field(42; "Business Unit Filter"; Code[10])
        {
            Caption = 'Business Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(43; "Gen. Posting Type"; Option)
        {
            Caption = 'Gen. Posting Type';
            OptionCaption = ' ,Purchase,Sale';
            OptionMembers = " ",Purchase,Sale;
        }
        field(44; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(45; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(46; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(47; "Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("G/L Entry"."Debit Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(48; "Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum ("G/L Entry"."Credit Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                 "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                 "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                 "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(49; "Automatic Ext. Texts"; Boolean)
        {
            Caption = 'Automatic Ext. Texts';
        }
        field(52; "Budgeted Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankNumbers = BlankNegAndZero;
            CalcFormula = Sum ("G/L Budget Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                               "G/L Account No." = FIELD (FILTER (Totaling)),
                                                               "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                               "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                               "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                               Date = FIELD ("Date Filter"),
                                                               "Budget Name" = FIELD ("Budget Filter")));
            Caption = 'Budgeted Debit Amount';
            FieldClass = FlowField;
        }
        field(53; "Budgeted Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            BlankNumbers = BlankNegAndZero;
            CalcFormula = - Sum ("G/L Budget Entry".Amount WHERE ("G/L Account No." = FIELD ("No."),
                                                                "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                Date = FIELD ("Date Filter"),
                                                                "Budget Name" = FIELD ("Budget Filter")));
            Caption = 'Budgeted Credit Amount';
            FieldClass = FlowField;
        }
        field(54; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(55; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(56; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(57; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(58; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(60; "Additional-Currency Net Change"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry"."Additional-Currency Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                              "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                              "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Additional-Currency Net Change';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Add.-Currency Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry"."Additional-Currency Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                              "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                              "Posting Date" = FIELD (UPPERLIMIT ("Date Filter"))));
            Caption = 'Add.-Currency Balance at Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Additional-Currency Balance"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry"."Additional-Currency Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                              "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter")));
            Caption = 'Additional-Currency Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Exchange Rate Adjustment"; Option)
        {
            AccessByPermission = TableData Currency = R;
            Caption = 'Exchange Rate Adjustment';
            OptionCaption = 'No Adjustment,Adjust Amount,Adjust Additional-Currency Amount';
            OptionMembers = "No Adjustment","Adjust Amount","Adjust Additional-Currency Amount";
        }
        field(64; "Add.-Currency Debit Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry"."Add.-Currency Debit Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                              "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                              "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Add.-Currency Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65; "Add.-Currency Credit Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry"."Add.-Currency Credit Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                                               "G/L Account No." = FIELD (FILTER (Totaling)),
                                                                               "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                               "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                               "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                               "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Add.-Currency Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66; "Default IC Partner G/L Acc. No"; Code[20])
        {
            Caption = 'Default IC Partner G/L Acc. No';
            TableRelation = "IC G/L Account"."No.";
        }
        field(70; "Omit Default Descr. in Jnl."; Boolean)
        {
            Caption = 'Omit Default Descr. in Jnl.';
        }
        field(1100; "Cost Type No."; Code[20])
        {
            Caption = 'Cost Type No.';
            Editable = false;
            TableRelation = "Cost Type";
            ValidateTableRelation = false;
        }
        field(1700; "Default Deferral Template Code"; Code[10])
        {
            Caption = 'Default Deferral Template Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(11000; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("G/L Entry"."VAT Amount" WHERE ("G/L Account No." = FIELD ("No."),
                                                              "G/L Account No." = FIELD (FILTER (Totaling)),
                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                              "Posting Date" = FIELD ("Date Filter")));
            Caption = 'VAT Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5000020; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(5000021; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(5013400; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#DMW16.00.02:T114';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Item));
        }
        field(5013410; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            Description = '#DMW16.00.03:T013';
            TableRelation = Vendor;
            //This property is currently not supported
            //TestTableRelation = true;
            ValidateTableRelation = true;
        }
        field(5013420; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
            Description = '#DMW16.00.03:T013';
        }
        field(5157802; "Dim. for System Entries"; Option)
        {
            Caption = 'Dim. for System Entries';
            Description = 'EA';
            OptionCaption = 'Gen. Jnl. Line (Always),G/L Account (Always),G/L Account (if empty Gen. Jnl. Line)';
            OptionMembers = "Gen. Jnl. Line (Always)","G/L Account (Always)","G/L Account (if empty Gen. Jnl. Line)";
        }
        field(5157803; "Check Tax Key"; Boolean)
        {
            Caption = 'Check Tax Key';
            Description = 'EA';
        }
        field(5157852; "Build Open Entries"; Boolean)
        {
            Caption = 'Build Open Entries';
            Description = 'GLOE';
        }
        field(5157853; "Application Bal. Debit Acc."; Code[20])
        {
            Caption = 'Application Bal. Debit Account';
            Description = 'GLOE';
            TableRelation = "G/L Account";
        }
        field(5157854; "Application Bal. Credit Acc."; Code[20])
        {
            Caption = 'Application Bal. Credit Account';
            Description = 'GLOE';
            TableRelation = "G/L Account";
        }
        field(5157855; "Alt. Application Method"; Option)
        {
            Caption = 'Alt. Application Method';
            Description = 'GLOE';
            OptionCaption = ' ,Standard,Extended';
            OptionMembers = " ",Standard,Extended;
        }
        field(5157882; "Acc. Schedule Name 1"; Code[10])
        {
            Caption = 'Acc. Schedule Name 1';
            Description = 'TAX';
            TableRelation = "Acc. Schedule Name";
        }
        field(5157883; "Acc. Schedule Name 2"; Code[10])
        {
            Caption = 'Acc. Schedule Name 2';
            Description = 'TAX';
            TableRelation = "Acc. Schedule Name";
        }
        field(5157884; "Acc. Schedule Name 3"; Code[10])
        {
            Caption = 'Acc. Schedule Name 3';
            Description = 'TAX';
            TableRelation = "Acc. Schedule Name";
        }
        field(5157885; "Acc. Schedule Line 1"; Integer)
        {
            BlankZero = true;
            Caption = 'Acc. Schedule Line 1';
            Description = 'TAX';
            TableRelation = "Acc. Schedule Line"."Line No." WHERE ("Schedule Name" = FIELD ("Acc. Schedule Name 1"));
        }
        field(5157886; "Acc. Schedule Line 2"; Integer)
        {
            BlankZero = true;
            Caption = 'Acc. Schedule Line 2';
            Description = 'TAX';
            TableRelation = "Acc. Schedule Line"."Line No." WHERE ("Schedule Name" = FIELD ("Acc. Schedule Name 2"));
        }
        field(5157887; "Acc. Schedule Line 3"; Integer)
        {
            BlankZero = true;
            Caption = 'Acc. Schedule Line 3';
            Description = 'TAX';
            TableRelation = "Acc. Schedule Line"."Line No." WHERE ("Schedule Name" = FIELD ("Acc. Schedule Name 3"));
        }
        field(5157888; "Account Group 1"; Code[10])
        {
            Caption = 'Account Group 1';
            Description = 'TAX';
            TableRelation = "G/L Account Group";
        }
        field(5157889; "Account Group 2"; Code[10])
        {
            Caption = 'Account Group 2';
            Description = 'TAX';
            TableRelation = "G/L Account Group";
        }
        field(5157890; "Account Group 3"; Code[10])
        {
            Caption = 'Account Group 3';
            Description = 'TAX';
            TableRelation = "G/L Account Group";
        }
        field(5157891; "Acc. Sched. Line Description 1"; Text[80])
        {
            CalcFormula = Lookup ("Acc. Schedule Line".Description WHERE ("Schedule Name" = FIELD ("Acc. Schedule Name 1"),
                                                                         "Line No." = FIELD ("Acc. Schedule Line 1")));
            Caption = 'Acc. Sched. Line Description 1';
            Description = 'TAX';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157892; "Acc. Sched. Line Description 2"; Text[80])
        {
            CalcFormula = Lookup ("Acc. Schedule Line".Description WHERE ("Schedule Name" = FIELD ("Acc. Schedule Name 2"),
                                                                         "Line No." = FIELD ("Acc. Schedule Line 2")));
            Caption = 'Acc. Sched. Line Description 2';
            Description = 'TAX';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157893; "Acc. Sched. Line Description 3"; Text[80])
        {
            CalcFormula = Lookup ("Acc. Schedule Line".Description WHERE ("Schedule Name" = FIELD ("Acc. Schedule Name 3"),
                                                                         "Line No." = FIELD ("Acc. Schedule Line 3")));
            Caption = 'Acc. Sched. Line Description 3';
            Description = 'TAX';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5157894; "Account Group 4"; Code[10])
        {
            Caption = 'Account Group 4';
            Description = 'TAX';
            TableRelation = "G/L Account Group";
        }
        field(5370525; "OE Account"; Boolean)
        {
            Caption = 'OE Account';
        }
        field(5370526; "Remaining Amount"; Decimal)
        {
            CalcFormula = Sum ("Detailed G/L Entry".Amount WHERE ("G/L Account No." = FIELD ("No.")));
            Caption = 'Remaining Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5370527; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(5370528; "Appln. between Currencies"; Option)
        {
            Caption = 'Appln. between Currencies';
            OptionCaption = ' ,None,All,LCY';
            OptionMembers = " ","None",All,LCY;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Reconciliation Account")
        {
        }
        key(Key4; "Gen. Bus. Posting Group")
        {
        }
        key(Key5; "Gen. Prod. Posting Group")
        {
        }
        key(Key6; "Consol. Debit Acc.", "Consol. Translation Method")
        {
            Enabled = false;
        }
        key(Key7; "Consol. Credit Acc.", "Consol. Translation Method")
        {
            Enabled = false;
        }
        key(Key8; Name)
        {
        }
        key(Key9; "Account Type")
        {
        }
        key(Key10; "OE Account")
        {
        }
        key(Key11; "Account Group 1")
        {
        }
        key(Key12; "Account Group 2")
        {
        }
        key(Key13; "Account Group 3")
        {
        }
        key(Key14; "Account Group 4")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Income/Balance", Blocked, "Direct Posting")
        {
        }
    }
}

