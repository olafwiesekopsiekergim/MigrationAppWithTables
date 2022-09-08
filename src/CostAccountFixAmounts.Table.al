table 5000023 "Cost Account-Fix Amounts"
{
    Caption = 'Cost Account-Fix Amounts';

    fields
    {
        field(1; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            NotBlank = true;
            TableRelation = "Cost Account";
        }
        field(2; "Cost Account Name"; Text[50])
        {
            Caption = 'Cost Account Name';
        }
        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            NotBlank = true;
        }
        field(4; "Fix Amount"; Decimal)
        {
            Caption = 'Fix Amount';
        }
    }

    keys
    {
        key(Key1; "Cost Account No.", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

