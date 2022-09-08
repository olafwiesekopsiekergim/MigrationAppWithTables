table 5001981 "Application Search Company"
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

    Caption = 'Application Search Company';

    fields
    {
        field(1; Company; Text[30])
        {
            Caption = 'Company';
            TableRelation = Company.Name;
        }
        field(2; "Allocation G/L Account No."; Code[20])
        {
            Caption = 'Allocation G/L Account No.';
            TableRelation = "G/L Account"."No.";
        }
        field(3; "Allocation Global Dimension 1"; Code[20])
        {
            Caption = 'Allocation Global Dimension 1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
    }

    keys
    {
        key(Key1; Company)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

