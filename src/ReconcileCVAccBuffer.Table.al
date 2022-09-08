table 384 "Reconcile CV Acc Buffer"
{
    Caption = 'Reconcile CV Acc Buffer';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(2; "Currency code"; Code[10])
        {
            Caption = 'Currency code';
            TableRelation = Currency;
        }
        field(3; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
        }
        field(6; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(7; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Table ID", "Currency code", "Posting Group", "Field No.")
        {
            Clustered = true;
        }
        key(Key2; "G/L Account No.")
        {
        }
    }

    fieldgroups
    {
    }
}

