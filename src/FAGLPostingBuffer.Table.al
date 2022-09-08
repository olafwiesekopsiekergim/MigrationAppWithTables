table 5637 "FA G/L Posting Buffer"
{
    Caption = 'FA G/L Posting Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = "G/L Account";
        }
        field(3; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(4; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(5; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(6; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(7; "FA Entry Type"; Option)
        {
            Caption = 'FA Entry Type';
            OptionCaption = ' ,Fixed Asset,Maintenance';
            OptionMembers = " ","Fixed Asset",Maintenance;
        }
        field(8; "FA Entry No."; Integer)
        {
            Caption = 'FA Entry No.';
        }
        field(9; "Automatic Entry"; Boolean)
        {
            Caption = 'Automatic Entry';
        }
        field(10; "FA Posting Group"; Code[10])
        {
            Caption = 'FA Posting Group';
            TableRelation = "FA Posting Group";
        }
        field(11; "FA Allocation Type"; Option)
        {
            Caption = 'FA Allocation Type';
            OptionCaption = 'Acquisition,Depreciation,Write-Down,Appreciation,Custom 1,Custom 2,Disposal,Maintenance,Gain,Loss,Book Value';
            OptionMembers = Acquisition,Depreciation,"Write-Down",Appreciation,"Custom 1","Custom 2",Disposal,Maintenance,Gain,Loss,"Book Value";
        }
        field(12; "FA Allocation Line No."; Integer)
        {
            Caption = 'FA Allocation Line No.';
        }
        field(15; "Original General Journal Line"; Boolean)
        {
            Caption = 'Original General Journal Line';
        }
        field(16; "Net Disposal"; Boolean)
        {
            Caption = 'Net Disposal';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

