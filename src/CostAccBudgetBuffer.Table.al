table 5000084 "Cost Acc. Budget Buffer"
{
    Caption = 'Cost Acc. Budget Buffer';
    DataCaptionFields = "Code";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
        field(4; "Cost Account Filter"; Code[20])
        {
            Caption = 'Cost Account Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Account";
            ValidateTableRelation = false;
        }
        field(5; "Business Unit Filter"; Code[10])
        {
            Caption = 'Business Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(6; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(7; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(8; "Budget Dimension 1 Filter"; Code[20])
        {
            Caption = 'Budget Dimension 1 Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Budget Dimension 2 Filter"; Code[20])
        {
            Caption = 'Budget Dimension 2 Filter';
            FieldClass = FlowFilter;
        }
        field(10; "Budget Dimension 3 Filter"; Code[20])
        {
            Caption = 'Budget Dimension 3 Filter';
            FieldClass = FlowFilter;
        }
        field(11; "Budget Dimension 4 Filter"; Code[20])
        {
            Caption = 'Budget Dimension 4 Filter';
            FieldClass = FlowFilter;
        }
        field(12; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            ClosingDates = true;
            FieldClass = FlowFilter;
        }
        field(13; "Budgeted Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Cost Account Budget Entry".Amount WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                        "Cost Account No." = FIELD ("Cost Account Filter"),
                                                                        "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                        "Budget Dimension 1 Code" = FIELD ("Budget Dimension 1 Filter"),
                                                                        "Budget Dimension 2 Code" = FIELD ("Budget Dimension 2 Filter"),
                                                                        "Budget Dimension 3 Code" = FIELD ("Budget Dimension 3 Filter"),
                                                                        "Budget Dimension 4 Code" = FIELD ("Budget Dimension 4 Filter"),
                                                                        Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount';
            FieldClass = FlowField;
        }
        field(14; "Budgeted Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Cost Account Budget Entry"."Amount Fix" WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                              "Cost Account No." = FIELD ("Cost Account Filter"),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                              "Budget Dimension 1 Code" = FIELD ("Budget Dimension 1 Filter"),
                                                                              "Budget Dimension 2 Code" = FIELD ("Budget Dimension 2 Filter"),
                                                                              "Budget Dimension 3 Code" = FIELD ("Budget Dimension 3 Filter"),
                                                                              "Budget Dimension 4 Code" = FIELD ("Budget Dimension 4 Filter"),
                                                                              Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount Fix';
            FieldClass = FlowField;
        }
        field(15; "Budgeted Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Cost Account Budget Entry"."Amount Var" WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                              "Cost Account No." = FIELD ("Cost Account Filter"),
                                                                              "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                              "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                              "Budget Dimension 1 Code" = FIELD ("Budget Dimension 1 Filter"),
                                                                              "Budget Dimension 2 Code" = FIELD ("Budget Dimension 2 Filter"),
                                                                              "Budget Dimension 3 Code" = FIELD ("Budget Dimension 3 Filter"),
                                                                              "Budget Dimension 4 Code" = FIELD ("Budget Dimension 4 Filter"),
                                                                              Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Amount Var';
            FieldClass = FlowField;
        }
        field(16; "Budgeted Quantity"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Performance Budget Entry".Quantity WHERE ("Budget Name" = FIELD ("Budget Filter"),
                                                                         "Reference Unit Code" = FIELD ("Reference Unit Filter"),
                                                                         "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                         "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                         "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                         "Budget Dimension 1 Code" = FIELD ("Budget Dimension 1 Filter"),
                                                                         "Budget Dimension 2 Code" = FIELD ("Budget Dimension 2 Filter"),
                                                                         "Budget Dimension 3 Code" = FIELD ("Budget Dimension 3 Filter"),
                                                                         "Budget Dimension 4 Code" = FIELD ("Budget Dimension 4 Filter"),
                                                                         Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Quantity';
            FieldClass = FlowField;
        }
        field(17; "Reference Unit Filter"; Code[10])
        {
            Caption = 'Reference Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Reference Unit";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

