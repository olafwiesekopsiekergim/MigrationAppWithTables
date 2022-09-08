table 5000066 "Allocation Line Archive"
{
    Caption = 'Allocation Line Archive';
    DataCaptionFields = "Allocation Header Code", "Line No.";

    fields
    {
        field(1; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            TableRelation = "Allocation Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Issuing Shortcut Dim. 1 Code"; Code[20])
        {
            Caption = 'Issuing Shortcut Dim. 1 Code';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(4; "Issuing Cost Account No."; Code[20])
        {
            Caption = 'Issuing Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(5; "Credit Shortcut Dim. 1 Code"; Code[20])
        {
            Caption = 'Credit Shortcut Dim. 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(6; "Credit Cost Account No."; Code[20])
        {
            Caption = 'Credit Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(9; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(10; "Reference Cost Account No."; Code[20])
        {
            Caption = 'Reference Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(12; "Reference Project Account No."; Code[20])
        {
            Caption = 'Reference Project Account No.';
            TableRelation = "Project Account";
        }
        field(13; "Project Reference Unit Code"; Code[10])
        {
            Caption = 'Project Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(14; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(15; "Version No."; Integer)
        {
            Caption = 'Version No.';
            Editable = false;
        }
        field(100; "Issuing Shortcut Dim. 2 Code"; Code[20])
        {
            Caption = 'Issuing Shortcut Dim. 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(101; "Issuing Project Account No."; Code[20])
        {
            Caption = 'Issuing Project Account No.';
            TableRelation = "Project Account";
        }
        field(102; "Credit Shortcut Dim. 2 Code"; Code[20])
        {
            Caption = 'Credit Shortcut Dim. 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(103; "Credit Project Account No."; Code[20])
        {
            Caption = 'Credit Project Account No.';
            TableRelation = "Project Account";
        }
        field(200; "Cost Rate"; Option)
        {
            Caption = 'Cost Rate';
            OptionCaption = ' ,Unit Cost Performance Source,Direct Cost Performance Source,Overhead Cost Performance Source';
            OptionMembers = " ","Unit Cost Performance Source","Direct Cost Performance Source","Overhead Cost Performance Source";
        }
    }

    keys
    {
        key(Key1; "Allocation Header Code", "Line No.", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

