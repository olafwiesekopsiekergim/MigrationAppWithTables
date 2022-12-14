table 5005273 "Issued Deliv. Reminder Line"
{
    Caption = 'Issued Deliv. Reminder Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Issued Deliv. Reminder Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(4; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account (G/L),Item,,Fixed Asset';
            OptionMembers = " ","Account (G/L)",Item,,"Fixed Asset";
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST("Account (G/L)")) "G/L Account"
            ELSE
            IF (Type = CONST(Item)) Item
            ELSE
            IF (Type = CONST(3)) Resource
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset";
        }
        field(7; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(8; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(9; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(10; "Reorder Quantity"; Decimal)
        {
            Caption = 'Reorder Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(12; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Reminder Level"; Integer)
        {
            Caption = 'Reminder Level';
            MinValue = 0;
        }
        field(14; "Order Date"; Date)
        {
            Caption = 'Order Date';
            Editable = false;
        }
        field(15; "Expected Receipt Date"; Date)
        {
            Caption = 'Expected Receipt Date';
            Editable = false;
        }
        field(16; "Days overdue"; Integer)
        {
            Caption = 'Days overdue';
        }
        field(17; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
        }
        field(18; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(19; "Requested Receipt Date"; Date)
        {
            Caption = 'Requested Receipt Date';
            Editable = false;
        }
        field(20; "Promised Receipt Date"; Date)
        {
            Caption = 'Promised Receipt Date';
            Editable = false;
        }
        field(21; "Del. Rem. Date Field"; Option)
        {
            Caption = 'Del. Rem. Date Field';
            Editable = false;
            OptionCaption = ' ,Requested Receipt Date,Promised Receipt Date,Expected Receipt Date';
            OptionMembers = " ","Requested Receipt Date","Promised Receipt Date","Expected Receipt Date";
            ValuesAllowed = "Requested Receipt Date", "Promised Receipt Date", "Expected Receipt Date";
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

