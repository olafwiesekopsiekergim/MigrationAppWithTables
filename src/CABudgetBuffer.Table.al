table 5000085 "CA Budget Buffer"
{
    Caption = 'CA Budget Buffer';

    fields
    {
        field(1; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(2; "Dimension Value Code 1"; Code[20])
        {
            Caption = 'Dimension Value Code 1';
        }
        field(3; "Dimension Value Code 2"; Code[20])
        {
            Caption = 'Dimension Value Code 2';
        }
        field(4; "Dimension Value Code 3"; Code[20])
        {
            Caption = 'Dimension Value Code 3';
        }
        field(5; "Dimension Value Code 4"; Code[20])
        {
            Caption = 'Dimension Value Code 4';
        }
        field(6; "Dimension Value Code 5"; Code[20])
        {
            Caption = 'Dimension Value Code 5';
        }
        field(7; "Dimension Value Code 6"; Code[20])
        {
            Caption = 'Dimension Value Code 6';
        }
        field(8; "Dimension Value Code 7"; Code[20])
        {
            Caption = 'Dimension Value Code 7';
        }
        field(9; "Dimension Value Code 8"; Code[20])
        {
            Caption = 'Dimension Value Code 8';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(11; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(12; "Amount Fix"; Decimal)
        {
            Caption = 'Amount Fix';
        }
        field(13; "Amount Var"; Decimal)
        {
            Caption = 'Amount Var';
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(15; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
        }
        field(16; "Amount Type"; Option)
        {
            Caption = 'Amount Type';
            OptionCaption = ' ,Fix,Var,Quantity';
            OptionMembers = " ",Fix,"Var",Quantity;
        }
    }

    keys
    {
        key(Key1; "Account No.", "Dimension Value Code 1", "Dimension Value Code 2", "Dimension Value Code 3", "Dimension Value Code 4", "Dimension Value Code 5", "Dimension Value Code 6", "Dimension Value Code 7", "Dimension Value Code 8", Date, "Amount Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

