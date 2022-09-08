table 5000005 "Project Account"
{
    // # Für was ist die FUnktoon CheckAcc?

    Caption = 'Project Account';
    DataCaptionFields = "No.", Name;
    Permissions = TableData "G/L Account" = rm,
                  TableData "Project Account Ledger Entry" = r,
                  TableData "Project Account Budget Entry" = rd;

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
        field(4; "Project Account Type"; Option)
        {
            Caption = 'Project Account Type';
            OptionCaption = 'Project Account,Heading,Total,Begin-Total,End-Total';
            OptionMembers = "Project Account",Heading,Total,"Begin-Total","End-Total";
        }
        field(6; "Operational Amount"; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry"."Operational Amount" WHERE ("Project Account No." = FIELD ("No."),
                                                                                         "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                         "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                         "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                         "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                         "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Operational Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Operational Amount Fix"; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry"."Operational Amount Fix" WHERE ("Project Account No." = FIELD ("No."),
                                                                                             "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                             "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                             "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Operational Amount Fix';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Operational Amount Var"; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry"."Operational Amount Var" WHERE ("Project Account No." = FIELD ("No."),
                                                                                             "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                             "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                             "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Operational Amount Var';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Tax Amount"; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry"."Tax Amount" WHERE ("Project Account No." = FIELD ("No."),
                                                                                 "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Tax Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Tax Amount Fix"; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry"."Tax Amount Fix" WHERE ("Project Account No." = FIELD ("No."),
                                                                                     "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                     "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                     "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                     "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                     "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Tax Amount Fix';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Tax Amount Var"; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry"."Tax Amount Var" WHERE ("Project Account No." = FIELD ("No."),
                                                                                     "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                     "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                     "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                     "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                     "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Tax Amount Var';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Budgeted Amount"; Decimal)
        {
            CalcFormula = Sum ("Project Account Budget Entry".Amount WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                           "Project Account No." = FIELD ("No."),
                                                                           "Project Account No." = FIELD (FILTER (Totaling)),
                                                                           "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                           "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                           "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                           Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Budgeted Amount Fix"; Decimal)
        {
            CalcFormula = Sum ("Project Account Budget Entry"."Amount Fix" WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                                 "Project Account No." = FIELD ("No."),
                                                                                 "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                 "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                 Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount Fix';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Budgeted Amount Var"; Decimal)
        {
            CalcFormula = Sum ("Project Account Budget Entry"."Amount Var" WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                                 "Project Account No." = FIELD ("No."),
                                                                                 "Project Account No." = FIELD (FILTER (Totaling)),
                                                                                 "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                                 Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount Var';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(16; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
            ValidateTableRelation = false;
        }
        field(21; Indentation; Integer)
        {
            Caption = 'Indentation';
        }
        field(22; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
            ValidateTableRelation = false;
        }
        field(23; "Budgeted Quantity"; Decimal)
        {
            CalcFormula = Sum ("Project Account Budget Entry".Quantity WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                             "Project Account No." = FIELD ("No."),
                                                                             "Project Account No." = FIELD (FILTER (Totaling)),
                                                                             "Reference Unit Code" = FIELD ("Reference Unit Filter"),
                                                                             "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                             Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(27; Totaling; Text[250])
        {
            Caption = 'Totaling';
        }
        field(29; Quantity; Decimal)
        {
            CalcFormula = Sum ("Project Account Ledger Entry".Quantity WHERE ("Project Account No." = FIELD ("No."),
                                                                             "Project Account No." = FIELD (FILTER (Totaling)),
                                                                             "Reference Unit Code" = FIELD ("Reference Unit Filter"),
                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                             "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                             "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; Tax; Boolean)
        {
            Caption = 'Tax';
            InitValue = true;
        }
        field(31; Operational; Boolean)
        {
            Caption = 'Operational';
            InitValue = true;
        }
        field(32; Comment; Boolean)
        {
            CalcFormula = Exist ("Cost Accounting Comment Line" WHERE ("Table Name" = CONST ("Project Account"),
                                                                      "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Distribution Cost Account No."; Code[20])
        {
            Caption = 'Distribution Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(34; "Distribute Performance"; Boolean)
        {
            Caption = 'Distribute Performance';
        }
        field(35; "Distribute Overhead"; Boolean)
        {
            Caption = 'Distribute Overhead';
        }
        field(36; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
        field(37; "Business Unit Filter"; Code[10])
        {
            Caption = 'Business Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(38; "Reference Unit Filter"; Code[10])
        {
            Caption = 'Reference Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Reference Unit";
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
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, Blocked, "Project Account Type", "Distribution Cost Account No.", "Distribute Performance", "Distribute Overhead")
        {
        }
    }
}

