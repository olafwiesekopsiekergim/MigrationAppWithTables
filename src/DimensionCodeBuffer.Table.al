table 367 "Dimension Code Buffer"
{
    Caption = 'Dimension Code Buffer';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Totaling; Text[250])
        {
            Caption = 'Totaling';
        }
        field(4; "Period Start"; Date)
        {
            Caption = 'Period Start';
        }
        field(5; "Period End"; Date)
        {
            Caption = 'Period End';
        }
        field(6; Visible; Boolean)
        {
            Caption = 'Visible';
            InitValue = true;
        }
        field(7; Indentation; Integer)
        {
            Caption = 'Indentation';
        }
        field(8; "Show in Bold"; Boolean)
        {
            Caption = 'Show in Bold';
        }
        field(9; Amount; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Analysis View Entry".Amount WHERE ("Analysis View Code" = CONST (''),
                                                                  "Dimension 1 Value Code" = FIELD ("Dimension 1 Value Filter"),
                                                                  "Dimension 2 Value Code" = FIELD ("Dimension 2 Value Filter"),
                                                                  "Dimension 3 Value Code" = FIELD ("Dimension 3 Value Filter"),
                                                                  "Dimension 4 Value Code" = FIELD ("Dimension 4 Value Filter")));
            Caption = 'Amount';
            FieldClass = FlowField;
        }
        field(10; "Dimension 1 Value Filter"; Code[20])
        {
            Caption = 'Dimension 1 Value Filter';
            FieldClass = FlowFilter;
        }
        field(11; "Dimension 2 Value Filter"; Code[20])
        {
            Caption = 'Dimension 2 Value Filter';
            FieldClass = FlowFilter;
        }
        field(12; "Dimension 3 Value Filter"; Code[20])
        {
            Caption = 'Dimension 3 Value Filter';
            FieldClass = FlowFilter;
        }
        field(13; "Dimension 4 Value Filter"; Code[20])
        {
            Caption = 'Dimension 4 Value Filter';
            FieldClass = FlowFilter;
        }
        field(7101; Quantity; Decimal)
        {
            CalcFormula = Sum ("Analysis View Entry".Amount WHERE ("Analysis View Code" = CONST (''),
                                                                  "Dimension 1 Value Code" = FIELD ("Dimension 1 Value Filter"),
                                                                  "Dimension 2 Value Code" = FIELD ("Dimension 2 Value Filter"),
                                                                  "Dimension 3 Value Code" = FIELD ("Dimension 3 Value Filter"),
                                                                  "Dimension 4 Value Code" = FIELD ("Dimension 4 Value Filter")));
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Period Start")
        {
        }
    }

    fieldgroups
    {
    }
}

