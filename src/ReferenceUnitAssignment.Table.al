table 5000092 "Reference Unit Assignment"
{
    Caption = 'Reference Unit Assignment';

    fields
    {
        field(1; "Schedule Name"; Code[10])
        {
            Caption = 'Schedule Name';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(4; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            NotBlank = true;
            TableRelation = "Reference Unit";
        }
        field(5; "Dimension Value Name"; Text[50])
        {
            Caption = 'Dimension Value Name';
        }
    }

    keys
    {
        key(Key1; "Schedule Name", "Line No.", "Global Dimension 1 Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

