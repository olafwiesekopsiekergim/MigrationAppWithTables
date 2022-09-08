table 5649 "FA Posting Group Buffer"
{
    Caption = 'FA Posting Group Buffer';

    fields
    {
        field(1; "FA Posting Group"; Code[10])
        {
            Caption = 'FA Posting Group';
        }
        field(2; "Posting Type"; Option)
        {
            Caption = 'Posting Type';
            OptionCaption = 'Acq,Depr,WD,Appr,C1,C2,DeprExp,Maint,Disp,GL,BV,DispAcq,DispDepr,DispWD,DispAppr,DispC1,DispC2,BalWD,BalAppr,BalC1,BalC2';
            OptionMembers = Acq,Depr,WD,Appr,C1,C2,DeprExp,Maint,Disp,GL,BV,DispAcq,DispDepr,DispWD,DispAppr,DispC1,DispC2,BalWD,BalAppr,BalC1,BalC2;
        }
        field(3; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(4; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(5; "Account Name"; Text[50])
        {
            Caption = 'Account Name';
        }
        field(6; "FA FieldCaption"; Text[50])
        {
            Caption = 'FA FieldCaption';
        }
    }

    keys
    {
        key(Key1; "FA Posting Group", "Posting Type", "Account No.")
        {
            Clustered = true;
        }
        key(Key2; "Account No.")
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }
}

