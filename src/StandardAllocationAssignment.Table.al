table 5000069 "Standard Allocation Assignment"
{
    Caption = 'Standard Allocation Assignment';
    DataCaptionFields = "Standard Alloc. Assign. Code";
    PasteIsValid = false;

    fields
    {
        field(1; "Standard Alloc. Assign. Code"; Code[10])
        {
            Caption = 'Standard Allocation Assignment Code';
            TableRelation = "Standard Alloc. Assign. Code";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(5; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(6; "Assignment Quantity"; Decimal)
        {
            Caption = 'Assignment Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(9; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(10; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(11; "Assignment %"; Decimal)
        {
            Caption = 'Assignment %';
            DecimalPlaces = 2 : 2;
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(34; "Date Filter Code"; Option)
        {
            Caption = 'Date Filter Code';
            OptionCaption = ' ,Week,Last Week,Month,Last Month,Month of Last Year,Year,Last Year,Period,Last Period,Period of Last Year,Fiscal Year,Last Fiscal Year';
            OptionMembers = " ",Week,"Last Week",Month,"Last Month","Month of Last Year",Year,"Last Year",Period,"Last Period","Period of Last Year","Fiscal Year","Last Fiscal Year";
        }
    }

    keys
    {
        key(Key1; "Standard Alloc. Assign. Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

