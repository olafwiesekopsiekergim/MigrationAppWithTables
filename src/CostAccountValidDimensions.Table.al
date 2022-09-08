table 5000022 "Cost Account-Valid Dimensions"
{
    Caption = 'Cost Account-Valid Dimensions';
    DataCaptionFields = "Cost Account No.", "Cost Account Name";

    fields
    {
        field(1; "Dimension Value Code"; Code[20])
        {
            Caption = 'Dimension Value Code';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
        }
        field(2; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            NotBlank = true;
            TableRelation = "Cost Account";
        }
        field(3; "Cost Account Name"; Text[50])
        {
            Caption = 'Cost Account Name';
            Editable = false;
        }
        field(4; "Dimension Value Name"; Text[50])
        {
            Caption = 'Dimension Value Name';
        }
        field(8; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            OptionCaption = 'Fix,Variable,Mixed %,Mixed Amount';
            OptionMembers = Fix,Variable,"Mixed %","Mixed Amount";
        }
        field(9; "Fix %"; Integer)
        {
            Caption = 'Fix %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(10; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
    }

    keys
    {
        key(Key1; "Cost Account No.", "Dimension Code", "Dimension Value Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

