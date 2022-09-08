table 5001980 "Application Search Setup"
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

    Caption = 'Application Search Setup';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Length String"; Integer)
        {
            Caption = 'Length String';
        }
        field(3; Prefix; Code[10])
        {
            Caption = 'Prefix';
        }
        field(4; "Search Account Type"; Option)
        {
            Caption = 'Search Account Type';
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(6; "Search Field"; Option)
        {
            Caption = 'Search Field';
            OptionCaption = 'Account No.,Document No.,External Document No.,Order No.,Reminder No. ';
            OptionMembers = "Account No.","Document No.","External Document No.","Order No.","Reminder No. ";
        }
        field(7; Priority; Integer)
        {
            Caption = 'Priority';
            InitValue = 999;
            MaxValue = 999;
            MinValue = 1;
        }
        field(8; Restriction; Text[20])
        {
            Caption = 'Restriction';
        }
        field(9; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(10; "Regard Reminder Fee"; Boolean)
        {
            Caption = 'Regard Reminder Fee';
        }
        field(12; "End on Match"; Boolean)
        {
            Caption = 'End on Match';
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

