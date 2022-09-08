table 5000073 "Allocation Buffer"
{
    Caption = 'Allocation Buffer';

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'CostAccount,ProjAccount';
            OptionMembers = CostAccount,ProjAccount;
        }
        field(2; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
        }
        field(3; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
        }
        field(4; "Operational Amount Var"; Decimal)
        {
            Caption = 'Operational Amount Var';
        }
        field(5; "Operational Amount Fix"; Decimal)
        {
            Caption = 'Operational Amount Fix';
        }
        field(6; "Debit Cost Account No."; Code[20])
        {
            Caption = 'Debit Cost Account No.';
        }
        field(7; "Debit Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Debit Global Dimension 1 Code';
        }
        field(8; "Debit Project Account No."; Code[20])
        {
            Caption = 'Debit Project Account No.';
        }
        field(9; "Debit Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Debit Global Dimension 2 Code';
        }
        field(10; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(11; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
        }
        field(12; "Tax Amount Var"; Decimal)
        {
            Caption = 'Tax Amount Var';
        }
        field(13; "Tax Amount Fix"; Decimal)
        {
            Caption = 'Tax Amount Fix';
        }
        field(14; PostingType; Option)
        {
            Caption = 'PostingType';
            OptionCaption = 'Debit,Credit';
            OptionMembers = Debit,Credit;
        }
        field(15; AllocLineNo; Integer)
        {
            Caption = 'AllocLineNo';
        }
        field(16; AllocAssignLineNo; Integer)
        {
            Caption = 'AllocAssignLineNo';
        }
        field(17; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(18; "Bal. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Bal. Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(19; "Bal. Cost Account No."; Code[20])
        {
            Caption = 'Bal. Cost Account No.';
            TableRelation = "Cost Account";
        }
    }

    keys
    {
        key(Key1; "Source Type", "Allocation Header Code", AllocLineNo, AllocAssignLineNo)
        {
            Clustered = true;
            SumIndexFields = "Operational Amount Var", "Operational Amount Fix", "Tax Amount Var", "Tax Amount Fix";
        }
        key(Key2; "Source Type", "Allocation Header Code", "Cost Account No.", "Global Dimension 1 Code")
        {
            SumIndexFields = "Operational Amount Var", "Operational Amount Fix", "Tax Amount Var", "Tax Amount Fix";
        }
    }

    fieldgroups
    {
    }
}

