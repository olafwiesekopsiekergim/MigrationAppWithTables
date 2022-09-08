table 5157820 "Payment Transaction Entry"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.10.12   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Transaction Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Ledger Type"; Option)
        {
            Caption = 'Ledger Type';
            OptionCaption = 'Reservation,Refund,Capturing,Cancellation';
            OptionMembers = Reservation,Refund,Capturing,Cancellation;
        }
        field(3; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(4; "Payment Transaction Entry No."; Integer)
        {
            Caption = 'Payment Transaction Entry No.';
            TableRelation = "Payment Transaction";
        }
        field(5; "Message Type"; Option)
        {
            Caption = 'Message Type';
            OptionCaption = 'Information,Warning,Error';
            OptionMembers = Information,Warning,Error;
        }
        field(6; "Message Text"; Text[250])
        {
            Caption = 'Message Text';
        }
        field(7; "Date / Time"; DateTime)
        {
            Caption = 'Date / Time';
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(10; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
            MinValue = 0;
        }
        field(11; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(12; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(13; "Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount (LCY)';
            Editable = false;
        }
        field(14; "Source ID"; Integer)
        {
            Caption = 'Source ID';
        }
        field(15; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(16; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Payment Transaction Entry No.")
        {
            SumIndexFields = Amount, "Amount (LCY)";
        }
    }

    fieldgroups
    {
    }
}

