table 5000095 "Cost Account (Analysis View)"
{
    Caption = 'Cost Account (Analysis View)';
    DataCaptionFields = "No.", Name;
    Permissions = TableData "Cost Account Ledger Entry" = r,
                  TableData "Cost Account Budget Entry" = r;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; "Search Name"; Code[30])
        {
            Caption = 'Search Name';
        }
        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
            InitValue = false;
        }
        field(5; "Cost Account Type"; Option)
        {
            Caption = 'Cost Account Type';
            OptionCaption = 'Cost Account,Heading,Total,Begin-Total,End-Total';
            OptionMembers = "Cost Account",Heading,Total,"Begin-Total","End-Total";
        }
        field(6; Comment; Boolean)
        {
            CalcFormula = Exist ("Cost Accounting Comment Line" WHERE ("Table Name" = CONST ("Cost Account"),
                                                                      "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(8; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            OptionCaption = 'Fix,Variable,Mixed %,Mixed Amount';
            OptionMembers = Fix,Variable,"Mixed %","Mixed Amount";
        }
        field(9; "Fix %"; Integer)
        {
            Caption = 'Fix %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(10; "New Page"; Boolean)
        {
            Caption = 'New Page';
        }
        field(11; "No. of Blank Lines"; Integer)
        {
            Caption = 'No. of Blank Lines';
            MinValue = 0;
        }
        field(12; Indentation; Integer)
        {
            Caption = 'Indentation';
            MinValue = 0;
        }
        field(13; Print; Boolean)
        {
            Caption = 'Print';
        }
        field(14; Operational; Boolean)
        {
            Caption = 'Operational';
            InitValue = true;
        }
        field(15; Tax; Boolean)
        {
            Caption = 'Tax';
            InitValue = true;
        }
        field(16; "Alloc. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Alloc. Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(17; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(18; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(19; "Reference Unit Filter"; Code[10])
        {
            Caption = 'Reference Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Reference Unit";
        }
        field(24; "Business Unit Filter"; Code[10])
        {
            Caption = 'Business Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(25; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
        field(26; Totaling; Text[250])
        {
            Caption = 'Totaling';
            TableRelation = "Cost Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(27; "Operational Amount"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Acc. Analysis View Entry"."Operational Amount" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                          "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                          "Cost Account No." = FIELD ("No."),
                                                                                          "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                          "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                          "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                          "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                          "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                          "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Operational Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Operational Amount Fix"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Acc. Analysis View Entry"."Operational Amount Fix" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                              "Cost Account No." = FIELD ("No."),
                                                                                              "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                              "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                              "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                              "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                              "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                              "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Operational Amount Fix';
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; "Operational Amount Var"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Acc. Analysis View Entry"."Operational Amount Var" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                              "Cost Account No." = FIELD ("No."),
                                                                                              "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                              "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                              "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                              "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                              "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                              "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Operational Amount Var';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Tax Amount"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Acc. Analysis View Entry"."Tax Amount" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                  "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                  "Cost Account No." = FIELD ("No."),
                                                                                  "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                  "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                  "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                  "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                  "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                  "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Tax Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Tax Amount Fix"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Acc. Analysis View Entry"."Tax Amount Fix" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                      "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                      "Cost Account No." = FIELD ("No."),
                                                                                      "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                      "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                      "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                      "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                      "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                      "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Tax Amount Fix';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Tax Amount Var"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Acc. Analysis View Entry"."Tax Amount Var" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                      "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                      "Cost Account No." = FIELD ("No."),
                                                                                      "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                      "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                      "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                      "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                      "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                      "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Tax Amount Var';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Budgeted Amount"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("CA Analysis View Budget Entry".Amount WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                            "Budget Name" = FIELD ("Budget Filter"),
                                                                            "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                            "Cost Account No." = FIELD ("No."),
                                                                            "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                            "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                            "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                            "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                            "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                            "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount';
            FieldClass = FlowField;
        }
        field(34; "Budgeted Amount Fix"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("CA Analysis View Budget Entry"."Amount Fix" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                  "Budget Name" = FIELD ("Budget Filter"),
                                                                                  "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                  "Cost Account No." = FIELD ("No."),
                                                                                  "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                  "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                  "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                  "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                  "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                  "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount Fix';
            FieldClass = FlowField;
        }
        field(35; "Budgeted Amount Var"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("CA Analysis View Budget Entry"."Amount Var" WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                                  "Budget Name" = FIELD ("Budget Filter"),
                                                                                  "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                                  "Cost Account No." = FIELD ("No."),
                                                                                  "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                                  "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                                  "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                                  "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                                  "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                                  "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount Var';
            FieldClass = FlowField;
        }
        field(36; "Budgeted Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("CA Analysis View Budget Entry".Quantity WHERE ("Analysis View Code" = FIELD ("Analysis View Filter"),
                                                                              "Budget Name" = FIELD ("Budget Filter"),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Cost Account No." = FIELD ("No."),
                                                                              "Cost Account No." = FIELD (FILTER (Totaling)),
                                                                              "Reference Unit Code" = FIELD ("Reference Unit Filter"),
                                                                              "Dimension 1 Value Code" = FIELD ("Dimension 1 Filter"),
                                                                              "Dimension 2 Value Code" = FIELD ("Dimension 2 Filter"),
                                                                              "Dimension 3 Value Code" = FIELD ("Dimension 3 Filter"),
                                                                              "Dimension 4 Value Code" = FIELD ("Dimension 4 Filter"),
                                                                              "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Budgeted Quantity';
            FieldClass = FlowField;
        }
        field(37; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(38; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(66; "Analysis View Filter"; Code[20])
        {
            Caption = 'Analysis View Filter';
            FieldClass = FlowFilter;
        }
        field(67; "Dimension 1 Filter"; Code[20])
        {
            Caption = 'Dimension 1 Filter';
            FieldClass = FlowFilter;
        }
        field(68; "Dimension 2 Filter"; Code[20])
        {
            Caption = 'Dimension 2 Filter';
            FieldClass = FlowFilter;
        }
        field(69; "Dimension 3 Filter"; Code[20])
        {
            Caption = 'Dimension 3 Filter';
            FieldClass = FlowFilter;
        }
        field(70; "Dimension 4 Filter"; Code[20])
        {
            Caption = 'Dimension 4 Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Line No.", "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

