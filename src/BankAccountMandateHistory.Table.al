table 5157915 "Bank Account Mandate History"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    // -----------------------------------------------------

    Caption = 'Bank Account Mandate History';

    fields
    {
        field(1; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate Id';
        }
        field(2; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            NotBlank = true;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            NotBlank = true;
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
        }
        field(6; IBAN; Code[50])
        {
            Caption = 'IBAN';
            Editable = false;
        }
        field(7; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
            Editable = false;
        }
        field(10; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
        }
        field(11; "Mandate Type"; Option)
        {
            Caption = 'SEPA Type';
            Description = '';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(12; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            OptionCaption = 'One-off Payment,Recurrent Payment';
            OptionMembers = "One-off Payment","Recurrent Payment";
        }
        field(14; "Mandate On Behalf of Owner"; Boolean)
        {
            Caption = 'On Behalf of Owner';
        }
        field(15; "Mandate Is Electronic"; Boolean)
        {
            Caption = 'e-Mandate';
        }
        field(16; "Mandate Last Used"; Date)
        {
            Caption = 'Last Used';
        }
        field(17; "Mandate Status"; Option)
        {
            BlankZero = true;
            Caption = 'Status of Mandate';
            OptionCaption = ' ,First,Recurring,Final';
            OptionMembers = " ",FRST,RCUR,FNAL;
        }
        field(20; "Maximum Amount"; Decimal)
        {
            Caption = 'Maximum Amount';
        }
        field(21; "Maximum Usage"; Integer)
        {
            Caption = 'Maximum Usage';
        }
        field(22; "Valid from Date"; Date)
        {
            Caption = 'Valid from Date';
        }
        field(23; "Valid to Date"; Date)
        {
            Caption = 'Valid to Date';
        }
        field(24; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(25; Identifier; Text[50])
        {
            Caption = 'Identifier';
        }
        field(26; Sender; Text[100])
        {
            Caption = 'Sender';
        }
        field(27; Orderer; Text[100])
        {
            Caption = 'Orderer';
        }
        field(28; Owner; Text[50])
        {
            Caption = 'Owner';
        }
        field(29; Usage; Integer)
        {
            Caption = 'Usage';
        }
        field(30; "Payment Proposal Name"; Code[10])
        {
            Caption = 'Payment Proposal Name';
            TableRelation = "Payment Proposal"."Journal Batch Name";
        }
        field(31; "Payment Proposal Date"; Date)
        {
            Caption = 'Payment Proposal Date';
        }
    }

    keys
    {
        key(Key1; "Mandate ID", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

