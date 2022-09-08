table 5001948 "Posted Registration Set"
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

    Caption = 'Posted Registration Set';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(2; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            Editable = false;
            TableRelation = Vendor;
        }
        field(3; "Invoice No."; Code[35])
        {
            Caption = 'Invoice No.';
            Editable = false;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo';
            OptionMembers = " ",Payment,Invoice,"Credit Memo";
        }
        field(5; "Trading Type"; Option)
        {
            Caption = 'Trading Type';
            Editable = false;
            OptionCaption = ',Transit trade,Service,Capital trade';
            OptionMembers = ,"Transit trade",Service,"Capital trade";
        }
        field(6; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(7; "Country Code"; Code[3])
        {
            Caption = 'Country Code';
            Editable = false;
            TableRelation = "Bank Country Code";
        }
        field(8; "Shortname Country"; Code[7])
        {
            Caption = 'Shortname Country';
            Editable = false;
        }
        field(9; Amount; Decimal)
        {
            Caption = 'Amount';
            Editable = false;
        }
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = ' ,,Service,,Capital Transaction';
            OptionMembers = " ",,Service,,"Capital Transaction";
        }
        field(11; "Index No."; Code[3])
        {
            Caption = 'Index No.';
            Editable = false;
            TableRelation = "Service Table";
        }
        field(21; "Passaging Transit"; Boolean)
        {
            Caption = 'Passaging Transit';
            Editable = false;
        }
        field(22; "Itemname Trading Goods"; Code[27])
        {
            Caption = 'Itemname Trading Goods';
            Editable = false;
        }
        field(23; "Capitel No. Goods"; Code[2])
        {
            Caption = 'Capitel No. Goods';
            Editable = false;
        }
        field(24; "Broken Transit"; Boolean)
        {
            Caption = 'Broken Transit';
            Editable = false;
        }
        field(25; "Info Transit unsalable Inv"; Boolean)
        {
            Caption = 'Info Transit unsalable Inv';
            Editable = false;
        }
        field(26; "Info Transit unsalable forei."; Boolean)
        {
            Caption = 'Info Transit unsalable forei.';
            Editable = false;
        }
        field(27; "Due Date Proceeds Transit"; Code[4])
        {
            Caption = 'Due Date Proceeds Transit';
            Editable = false;
        }
        field(28; "Add. Information Transit"; Text[40])
        {
            Caption = 'Add. Information Transit';
            Editable = false;
        }
        field(30; "Service Description"; Text[140])
        {
            Caption = 'Service Description';
            Editable = false;
        }
        field(31; "Customer Country Transit"; Code[7])
        {
            Caption = 'Customer Country Transit';
        }
        field(32; "Customer Country Code"; Code[3])
        {
            Caption = 'Customer Country Code';
            Editable = false;
            TableRelation = "Bank Country Code";
        }
        field(33; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(50; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
        }
        field(51; "Payment Order No."; Integer)
        {
            Caption = 'Payment Order No.';
        }
        field(52; "Registration Amount"; Decimal)
        {
            Caption = 'Registration Amount';
        }
    }

    keys
    {
        key(Key1; "Payment No.", "Document No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Vendor No.", "Invoice No.", Type)
        {
        }
        key(Key3; "Document No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

