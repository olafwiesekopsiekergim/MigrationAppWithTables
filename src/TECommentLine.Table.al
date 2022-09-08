table 5050270 "TE-Comment Line"
{
    Caption = 'TE-Comment Line';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(3; "Part Account No."; Integer)
        {
            Caption = 'Part Account No.';
        }
        field(4; "Part Account Line No."; Integer)
        {
            Caption = 'Part Account Line No.';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(6; Date; Date)
        {
            Caption = 'Date';
        }
        field(7; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(8; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(9; Return; Boolean)
        {
            Caption = 'Return';
        }
        field(10; "Comment Type"; Option)
        {
            Caption = 'Comment Type';
            OptionCaption = 'Normal,Driving,EMail,Rentalcar,Flight,Train,Airport-Transfer,Request,Hotel';
            OptionMembers = Normal,Driving,EMail,Rentalcar,Flight,Train,"Airport-Transfer",Request,Hotel;
        }
    }

    keys
    {
        key(Key1; "Table ID", "Account No.", "Part Account No.", "Part Account Line No.", "Comment Type", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Comment Type", "Table ID", "Account No.", "Part Account No.", "Part Account Line No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

