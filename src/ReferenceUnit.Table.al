table 5000003 "Reference Unit"
{
    Caption = 'Reference Unit';
    DataCaptionFields = "Code", Name;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Blocked; Boolean)
        {
            Caption = 'Blocked';
            InitValue = false;
        }
        field(4; Comment; Boolean)
        {
            CalcFormula = Exist ("Cost Accounting Comment Line" WHERE ("Table Name" = CONST ("Reference Unit"),
                                                                      "No." = FIELD (Code)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Operational Fix"; Decimal)
        {
            Caption = 'Operational Fix';
        }
        field(6; "Operational Var"; Decimal)
        {
            Caption = 'Operational Var';
        }
        field(8; "Reference Cost Account No."; Code[20])
        {
            Caption = 'Reference Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(9; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Globale Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(10; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(14; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
        field(15; Quantity; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Account Ledger Entry".Quantity WHERE ("Reference Unit Code" = FIELD (Code),
                                                                          "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                          "Bal. Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                          "Entry Type" = CONST (Performance),
                                                                          "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                          "Posting Date" = FIELD ("Date Filter"),
                                                                          "Debit Global Dimension 1 Code" = FIELD ("Debit Global Dim. 1 Filter")));
            Caption = 'Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Project Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Project Account Ledger Entry".Quantity WHERE ("Reference Unit Code" = FIELD (Code),
                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                             "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Project Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Budgeted Project Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Project Account Budget Entry".Quantity WHERE ("Reference Unit Code" = FIELD (Code),
                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                             "Budget Name" = FIELD ("Budget Filter"),
                                                                             Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Project Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Budgeted Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Performance Budget Entry".Quantity WHERE ("Reference Unit Code" = FIELD (Code),
                                                                         "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                         "Budget Name" = FIELD ("Budget Filter"),
                                                                         Date = FIELD ("Date Filter")));
            Caption = 'Budgeted Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(28; "Tax Fix"; Decimal)
        {
            Caption = 'Tax Fix';
        }
        field(29; "Tax Var"; Decimal)
        {
            Caption = 'Tax Var';
        }
        field(30; "Business Unit Filter"; Code[10])
        {
            Caption = 'Business Unit Filter';
            FieldClass = FlowFilter;
        }
        field(31; "Debit Quantity"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Cost Account Ledger Entry".Quantity WHERE ("Reference Unit Code" = FIELD (Code),
                                                                          "Debit Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                          "Bal. Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                          "Entry Type" = CONST (Performance),
                                                                          "Business Unit Code" = FIELD ("Business Unit Filter"),
                                                                          "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Debit Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Debit Global Dim. 1 Filter"; Code[20])
        {
            Caption = 'Debit Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
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
        fieldgroup(DropDown; "Code", Name, Blocked)
        {
        }
    }
}

