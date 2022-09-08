table 5001964 "Registration Ledger Entry"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'Registration Ledger Entry Z4';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = ' ,Customer,Vendor';
            OptionMembers = " ",Customer,Vendor;
        }
        field(5; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer;
        }
        field(8; "Country Code"; Code[3])
        {
            Caption = 'Country Code';
            TableRelation = "Bank Country Code";
        }
        field(9; "Shortname Country"; Code[7])
        {
            Caption = 'Shortname Country';
            Editable = false;
        }
        field(10; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(11; Type; Option)
        {
            Caption = 'Document Type (Registraion Line)';
            OptionCaption = ' ,Incoming Payment (Service),Outgoing Payment (Service),Incoming Payment (Capital Movements),Outgoing Payment (Capital Movements),Incoming Payment (Transitl),Outgoing Payment (Transit)';
            OptionMembers = " ","1","2","3","4","5","6";
        }
        field(12; "Index No."; Code[3])
        {
            Caption = 'Index No.';
            TableRelation = "Service Code" WHERE ("Document Type" = FIELD (Type));
        }
        field(13; "Service Description"; Text[140])
        {
            Caption = 'Service Description';
        }
        field(15; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(23; ISIN; Code[2])
        {
            Caption = 'ISIN';
            TableRelation = "Index of Goods";
        }
        field(30; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(31; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(32; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "Gen. Journal Line"."Line No." WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                  "Journal Batch Name" = FIELD ("Journal Batch Name"));
        }
        field(50; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
        }
        field(51; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
        }
        field(52; "Payment File Created"; Boolean)
        {
            Caption = 'Payment created';
            Editable = false;
        }
        field(53; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(54; "Z4 File Created"; Boolean)
        {
            Caption = 'Z4 File created';
            Editable = false;
        }
        field(55; "Z4 File Creation Date"; Date)
        {
            Caption = 'Z4 File Creation Date';
        }
        field(57; "Sum Entries"; Decimal)
        {
            Caption = 'Sum Entries';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(58; "Below Announcement Limit"; Boolean)
        {
            Caption = 'Below Announcement Limit';
        }
        field(59; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
        }
        field(1000; "Ledger Entry No."; Integer)
        {
            Caption = 'Ledger Entry No.';
        }
    }

    keys
    {
        key(Key1; "Ledger Entry No.")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Z4 File Created", "Payment No.")
        {
        }
        key(Key3; "Payment No.", "Payment Order No.", "Country Code", "Account Type", "Account No.", Type, "Index No.", ISIN, "Posting Date", "System-Created Entry", "Z4 File Created")
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }
}

