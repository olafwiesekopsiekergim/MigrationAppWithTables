table 1250 "Bank Statement Matching Buffer"
{
    Caption = 'Bank Statement Matching Buffer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; Quality; Integer)
        {
            Caption = 'Quality';
        }
        field(4; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor';
            OptionMembers = "G/L Account",Customer,Vendor;
        }
        field(5; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(10; "One to Many Match"; Boolean)
        {
            Caption = 'One to Many Match';
        }
        field(11; "No. of Entries"; Integer)
        {
            Caption = 'No. of Entries';
        }
        field(12; "Total Remaining Amount"; Decimal)
        {
            Caption = 'Total Remaining Amount';
        }
        field(13; "Related Party Matched"; Option)
        {
            Caption = 'Related Party Matched';
            OptionCaption = 'Not Considered,Fully,Partially,No';
            OptionMembers = "Not Considered",Fully,Partially,No;
        }
    }

    keys
    {
        key(Key1; "Line No.", "Entry No.", "Account Type", "Account No.")
        {
            Clustered = true;
        }
        key(Key2; Quality, "No. of Entries")
        {
        }
    }

    fieldgroups
    {
    }
}

