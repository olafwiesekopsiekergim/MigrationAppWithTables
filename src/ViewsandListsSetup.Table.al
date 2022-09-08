table 5157863 "Views and Lists Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // VAL  01.11.08   Views and Lists
    //                 - Object created
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001419  07.12.2016  gbedv.ast   Set Initial Data

    Caption = 'Views and Lists Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Use Section Lining"; Boolean)
        {
            Caption = 'Use Section Lining';
            InitValue = true;
        }
        field(3; "Show Bal. Account"; Boolean)
        {
            Caption = 'Show Bal. Account';
            InitValue = true;
        }
        field(4; "Search Bal. Account"; Option)
        {
            Caption = 'Search Bal. Account';
            OptionCaption = 'Via Transaction No.,Via Document No.';
            OptionMembers = "via Transaction","via Document";
        }
        field(5; "Show with FA Postings"; Option)
        {
            Caption = 'Show with FA Postings';
            OptionCaption = 'FA Name,Bal. Account';
            OptionMembers = "FA Name","Bal. Account";
        }
        field(6; "Cust. Ext. Doc. No. Changeable"; Boolean)
        {
            Caption = 'Cust. Ext. Doc. No. Changeable';
        }
        field(7; "Vend. Ext. Doc. No. Changeable"; Boolean)
        {
            Caption = 'Vend. Ext. Doc. No. Changeable';
        }
        field(8; "G/L Ext. Doc. No. Changeable"; Boolean)
        {
            Caption = 'G/L Ext. Doc. No. Changeable';
        }
        field(9; "Cust. Description Changeable"; Boolean)
        {
            Caption = 'Cust. Description Changeable';
        }
        field(10; "Vend. Description Changeable"; Boolean)
        {
            Caption = 'Vend. Description Changeable';
        }
        field(11; "G/L Description Changeable"; Boolean)
        {
            Caption = 'G/L Description Changeable';
        }
        field(12; "Hyperlink Color"; Boolean)
        {
            Caption = 'Hyperlink colored';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

