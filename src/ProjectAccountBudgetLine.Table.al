table 5000211 "Project Account Budget Line"
{
    Caption = 'Project Account Budget Line';
    Permissions = TableData "Project Account Budget Entry" = rimd;

    fields
    {
        field(1; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(2; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            NotBlank = true;
            TableRelation = "Project Account";
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(6; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(7; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(8; "Price Fix"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Price Fix';
        }
        field(9; "Price Var"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Price Var';
        }
        field(10; "Net Change Type"; Option)
        {
            Caption = 'Net Change Type';
            OptionCaption = 'Cost,Revenues';
            OptionMembers = Cost,Revenues;
        }
        field(11; Quantity; Decimal)
        {
            CalcFormula = Sum ("Project Account Budget Entry".Quantity WHERE ("Global Dimension 2 Code" = FIELD ("Global Dimension 2 Code"),
                                                                             "Project Account No." = FIELD ("Project Account No."),
                                                                             "Reference Unit Code" = FIELD ("Reference Unit Code"),
                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Code"),
                                                                             "Budget Name" = FIELD ("Budget Name"),
                                                                             Date = FIELD ("Date Filter")));
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(12; "Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Project Account Budget Entry"."Amount Fix" WHERE ("Global Dimension 2 Code" = FIELD ("Global Dimension 2 Code"),
                                                                                 "Project Account No." = FIELD ("Project Account No."),
                                                                                 "Reference Unit Code" = FIELD ("Reference Unit Code"),
                                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Code"),
                                                                                 "Budget Name" = FIELD ("Budget Name"),
                                                                                 Date = FIELD ("Date Filter")));
            Caption = 'Amount Fix';
            FieldClass = FlowField;
        }
        field(13; "Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Project Account Budget Entry"."Amount Var" WHERE ("Global Dimension 2 Code" = FIELD ("Global Dimension 2 Code"),
                                                                                 "Project Account No." = FIELD ("Project Account No."),
                                                                                 "Reference Unit Code" = FIELD ("Reference Unit Code"),
                                                                                 "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Code"),
                                                                                 "Budget Name" = FIELD ("Budget Name"),
                                                                                 Date = FIELD ("Date Filter")));
            Caption = 'Amount Var';
            FieldClass = FlowField;
        }
        field(14; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(15; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(21; "Budget Name"; Code[10])
        {
            Caption = 'Budget Name';
            TableRelation = "Cost Accounting Budget Name";
        }
        field(22; "Budget Dimension 1 Code"; Code[20])
        {
            Caption = 'Budget Dimension 1 Code';
        }
        field(23; "Budget Dimension 2 Code"; Code[20])
        {
            Caption = 'Budget Dimension 2 Code';
        }
        field(24; "Budget Dimension 3 Code"; Code[20])
        {
            Caption = 'Budget Dimension 3 Code';
        }
        field(25; "Budget Dimension 4 Code"; Code[20])
        {
            Caption = 'Budget Dimension 4 Code';
        }
        field(26; "Budget Base (Quantity)"; Decimal)
        {
            Caption = 'Budget Base (Quantity)';
            DecimalPlaces = 0 : 5;
        }
        field(28; "Number of Periods"; Integer)
        {
            Caption = 'Number of Periods';
        }
        field(29; "Period Length"; Code[10])
        {
            Caption = 'Period Length';
            DateFormula = true;
        }
    }

    keys
    {
        key(Key1; "Global Dimension 2 Code", "Project Account No.", "Global Dimension 1 Code", "Reference Unit Code", "Budget Name")
        {
            Clustered = true;
        }
        key(Key2; "Budget Name")
        {
        }
    }

    fieldgroups
    {
    }
}

