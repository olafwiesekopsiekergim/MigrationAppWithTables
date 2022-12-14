table 5005274 "Delivery Reminder Ledger Entry"
{
    Caption = 'Delivery Reminder Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(2; "Reminder No."; Code[20])
        {
            Caption = 'Reminder No.';
        }
        field(3; "Reminder Line No."; Integer)
        {
            Caption = 'Reminder Line No.';
        }
        field(10; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(11; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(12; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
        }
        field(13; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account (G/L),Item';
            OptionMembers = " ","Account (G/L)",Item;
        }
        field(14; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(15; "Reorder Quantity"; Decimal)
        {
            Caption = 'Reorder Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(17; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(21; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(22; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(23; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(24; "Reminder Level"; Integer)
        {
            Caption = 'Reminder Level';
        }
        field(30; "Purch. Expected Receipt Date"; Date)
        {
            Caption = 'Purch. Expected Receipt Date';
        }
        field(31; "Days overdue"; Integer)
        {
            Caption = 'Days overdue';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Order No.", "Order Line No.", "Posting Date")
        {
        }
        key(Key3; "Reminder No.", "Reminder Line No.")
        {
        }
        key(Key4; "Reminder No.", "Posting Date")
        {
        }
        key(Key5; "Vendor No.", "Posting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

