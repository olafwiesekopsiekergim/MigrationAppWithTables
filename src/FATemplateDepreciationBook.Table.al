table 5483222 "FA Template Depreciation Book"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // FA   01.01.17   Fixed Asset
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'FA Template Depreciation Book';

    fields
    {
        field(1; "FA Template No."; Code[20])
        {
            Caption = 'FA Template No.';
            NotBlank = true;
            TableRelation = "Fixed Asset Template";
        }
        field(2; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            NotBlank = true;
            TableRelation = "Depreciation Book";
        }
        field(3; "Depreciation Method"; Option)
        {
            Caption = 'Depreciation Method';
            OptionCaption = 'Straight-Line,Declining-Balance 1,Declining-Balance 2,DB1/SL,DB2/SL,User-Defined,Manual';
            OptionMembers = "Straight-Line","Declining-Balance 1","Declining-Balance 2","DB1/SL","DB2/SL","User-Defined",Manual;
        }
        field(5; "Straight-Line %"; Decimal)
        {
            Caption = 'Straight-Line %';
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(6; "No. of Depreciation Years"; Decimal)
        {
            BlankZero = true;
            Caption = 'No. of Depreciation Years';
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(7; "No. of Depreciation Months"; Decimal)
        {
            BlankZero = true;
            Caption = 'No. of Depreciation Months';
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(8; "Fixed Depr. Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Fixed Depr. Amount';
            MinValue = 0;
        }
        field(9; "Declining-Balance %"; Decimal)
        {
            Caption = 'Declining-Balance %';
            DecimalPlaces = 2 : 8;
            MaxValue = 100;
            MinValue = 0;
        }
        field(10; "Depreciation Table Code"; Code[10])
        {
            Caption = 'Depreciation Table Code';
            TableRelation = "Depreciation Table Header";
        }
        field(11; "Final Rounding Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Final Rounding Amount';
            MinValue = 0;
        }
        field(12; "Ending Book Value"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Ending Book Value';
            MinValue = 0;
        }
        field(13; "FA Posting Group"; Code[10])
        {
            Caption = 'FA Posting Group';
            TableRelation = "FA Posting Group";
        }
        field(40; "FA Exchange Rate"; Decimal)
        {
            Caption = 'FA Exchange Rate';
            DecimalPlaces = 4 : 4;
            MinValue = 0;
        }
        field(41; "Fixed Depr. Amount below Zero"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            Caption = 'Fixed Depr. Amount below Zero';
            MinValue = 0;
        }
        field(42; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(44; "Use FA Ledger Check"; Boolean)
        {
            Caption = 'Use FA Ledger Check';
            InitValue = true;
        }
        field(46; "Depr. below Zero %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Depr. below Zero %';
            DecimalPlaces = 2 : 8;
            MinValue = 0;
        }
        field(52; "Accum. Depr. % (Custom 1)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Accum. Depr. % (Custom 1)';
            DecimalPlaces = 2 : 8;
            MaxValue = 100;
            MinValue = 0;
        }
        field(53; "Depr. This Year % (Custom 1)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Depr. This Year % (Custom 1)';
            DecimalPlaces = 2 : 8;
            MaxValue = 100;
            MinValue = 0;
        }
        field(54; "Property Class (Custom 1)"; Option)
        {
            Caption = 'Property Class (Custom 1)';
            OptionCaption = ' ,Personal Property,Real Property';
            OptionMembers = " ","Personal Property","Real Property";
        }
        field(55; Description; Text[30])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(58; "FA Add.-Currency Factor"; Decimal)
        {
            Caption = 'FA Add.-Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(59; "Use Half-Year Convention"; Boolean)
        {
            Caption = 'Use Half-Year Convention';
        }
        field(60; "Use DB% First Fiscal Year"; Boolean)
        {
            Caption = 'Use DB% First Fiscal Year';
        }
        field(63; "Ignore Def. Ending Book Value"; Boolean)
        {
            Caption = 'Ignore Def. Ending Book Value';
        }
    }

    keys
    {
        key(Key1; "FA Template No.", "Depreciation Book Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

