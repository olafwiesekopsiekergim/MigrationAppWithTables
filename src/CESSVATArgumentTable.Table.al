table 5351555 "CESS - VAT Argument Table"
{
    Caption = 'CESS - VAT Argument Table';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(1000; VariantRecordID; RecordID)
        {
            Caption = 'VariantRecordID';
        }
        field(1001; HideDialog; Boolean)
        {
            Caption = 'HideDialog';
        }
        field(1002; CheckWithConfirmationNote; Boolean)
        {
            Caption = 'CheckWithConfirmationNote';
        }
        field(2000; VATRegValEntryNo; Integer)
        {
            Caption = 'VATRegValEntryNo';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

