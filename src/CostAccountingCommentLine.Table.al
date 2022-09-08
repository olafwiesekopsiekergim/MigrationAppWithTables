table 5000008 "Cost Accounting Comment Line"
{
    Caption = 'Cost Accounting Comment Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Dimension,Cost Account,Reference Unit,,Project Account,Allocation,Allocation Archive';
            OptionMembers = Dimension,"Cost Account","Reference Unit",,"Project Account",Allocation,"Allocation Archive";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("Cost Account")) "Cost Account"
            ELSE
            IF ("Table Name" = CONST ("Reference Unit")) "Reference Unit"
            ELSE
            IF ("Table Name" = CONST ("Project Account")) "Project Account";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(7; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            TableRelation = Dimension;
        }
        field(8; "Dimension Value Code"; Code[20])
        {
            Caption = 'Dimension Value Code';
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
        }
        field(9; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Dimension Code", "Dimension Value Code", "Version No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

