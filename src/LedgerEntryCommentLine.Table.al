table 5157862 "Ledger Entry Comment Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // VAL  01.11.08   Views and Lists
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Ledger Entry Comment Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Customer,Vendor,G/L Account,Item,Gen. Journal Line';
            OptionMembers = Customer,Vendor,"G/L Account",Item,"Gen. Journal Line";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Table Name" = CONST (Customer)) Customer
            ELSE
            IF ("Table Name" = CONST (Vendor)) Vendor
            ELSE
            IF ("Table Name" = CONST (Item)) Item;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(7; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; Printed; Boolean)
        {
            Caption = 'Printed';
        }
        field(9; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(11; "Remaining Amount"; Decimal)
        {
            Caption = 'Remaining Amount';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Entry No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Printed, "Table Name", "No.", "Entry No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

