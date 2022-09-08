table 5370527 "Open G/L Exch. Rate Adjm. Reg."
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn.OGL  25.02.2015  OGL      akq        Created
    // ================================================================================

    Caption = 'Open G/L - Exch. Rate Adjmt. Reg.';

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(2; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(3; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(4; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(5; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(6; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(7; "Adjusted Base"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Adjusted Base';
        }
        field(8; "Adjusted Base (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Adjusted Base (LCY)';
        }
        field(9; "Adjusted Amt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Adjusted Amt. (LCY)';
        }
        field(10; "Adjusted Base (Add.-Curr.)"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Adjusted Base (Add.-Curr.)';
        }
        field(11; "Adjusted Amt. (Add.-Curr.)"; Decimal)
        {
            AccessByPermission = TableData Currency = R;
            AutoFormatType = 1;
            Caption = 'Adjusted Amt. (Add.-Curr.)';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

