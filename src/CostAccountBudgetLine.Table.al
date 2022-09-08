table 5000081 "Cost Account Budget Line"
{
    Caption = 'Cost Account Budget Line';
    DataCaptionFields = "Shortcut Dimension 1 Code", "Cost Account No.", "Reference Unit Code";

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
        }
        field(3; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(4; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Reference Unit';
            OptionMembers = " ",Item,"Reference Unit";
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("Reference Unit")) "Reference Unit";
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Budget Name"; Code[10])
        {
            Caption = 'Budget Name';
            TableRelation = "Cost Accounting Budget Name";
        }
        field(10; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(12; "Cost Rate Fix"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Cost Rate Fix';
        }
        field(13; "Cost Rate Var"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Cost Rate Var';
        }
        field(18; "Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Fix';
        }
        field(19; "Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Var';
        }
        field(20; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(21; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
        }
        field(22; "Budget Type"; Option)
        {
            Caption = 'Budget Type';
            OptionCaption = 'Cost,Performance';
            OptionMembers = Cost,Performance;
        }
        field(23; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(24; "Number of Periods"; Integer)
        {
            Caption = 'Number of Periods';
        }
        field(25; "Period Length"; Code[10])
        {
            Caption = 'Period Length';
            DateFormula = true;
        }
        field(31; "Budget Dimension 1 Code"; Code[20])
        {
            Caption = 'Budget Dimension 1 Code';
        }
        field(32; "Budget Dimension 2 Code"; Code[20])
        {
            Caption = 'Budget Dimension 2 Code';
        }
        field(33; "Budget Dimension 3 Code"; Code[20])
        {
            Caption = 'Budget Dimension 3 Code';
        }
        field(34; "Budget Dimension 4 Code"; Code[20])
        {
            Caption = 'Budget Dimension 4 Code';
        }
        field(35; "Shortcut Dimension 1 Name"; Text[50])
        {
            CalcFormula = Lookup ("Dimension Value".Name WHERE (Code = FIELD ("Shortcut Dimension 1 Code"),
                                                               "Global Dimension No." = CONST (1)));
            Caption = 'Shortcut Dimension 1 Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Shortcut Dimension 1 Code")
        {
        }
        key(Key3; "Reference Unit Code")
        {
        }
    }

    fieldgroups
    {
    }
}

