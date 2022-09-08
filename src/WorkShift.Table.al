table 99000750 "Work Shift"
{
    // :PMW14.02:78:1
    //   # New fields 5012400 "Number of Setup Personnel"
    //   # New fields 5012401 "Number of Run Personnel"

    Caption = 'Work Shift';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5012400; "Number of Setup Personnel"; Decimal)
        {
            BlankZero = true;
            Caption = 'Number of Setup Personnel';
            DecimalPlaces = 0 : 2;
            Description = ':PMW14.02:78:1';
        }
        field(5012401; "Number of Run Personnel"; Decimal)
        {
            BlankZero = true;
            Caption = 'Number of Run Personnel';
            DecimalPlaces = 0 : 2;
            Description = ':PMW14.02:78:1';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

