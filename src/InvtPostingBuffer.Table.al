table 48 "Invt. Posting Buffer"
{
    Caption = 'Invt. Posting Buffer';

    fields
    {
        field(1; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'Inventory (Interim),Invt. Accrual (Interim),Inventory,WIP Inventory,Inventory Adjmt.,Direct Cost Applied,Overhead Applied,Purchase Variance,COGS,COGS (Interim),Material Variance,Capacity Variance,Subcontracted Variance,Cap. Overhead Variance,Mfg. Overhead Variance';
            OptionMembers = "Inventory (Interim)","Invt. Accrual (Interim)",Inventory,"WIP Inventory","Inventory Adjmt.","Direct Cost Applied","Overhead Applied","Purchase Variance",COGS,"COGS (Interim)","Material Variance","Capacity Variance","Subcontracted Variance","Cap. Overhead Variance","Mfg. Overhead Variance";
        }
        field(2; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
        }
        field(3; "Inventory Posting Group"; Code[20])
        {
            Caption = 'Inventory Posting Group';
        }
        field(4; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
        }
        field(5; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(6; "Amount (ACY)"; Decimal)
        {
            Caption = 'Amount (ACY)';
        }
        field(7; "Interim Account"; Boolean)
        {
            Caption = 'Interim Account';
        }
        field(8; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(9; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(10; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
        }
        field(11; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
        }
        field(12; Negative; Boolean)
        {
            Caption = 'Negative';
        }
        field(13; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(14; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'Inventory (Interim),Invt. Accrual (Interim),Inventory,WIP Inventory,Inventory Adjmt.,Direct Cost Applied,Overhead Applied,Purchase Variance,COGS,COGS (Interim),Material Variance,Capacity Variance,Subcontracted Variance,Cap. Overhead Variance,Mfg. Overhead Variance';
            OptionMembers = "Inventory (Interim)","Invt. Accrual (Interim)",Inventory,"WIP Inventory","Inventory Adjmt.","Direct Cost Applied","Overhead Applied","Purchase Variance",COGS,"COGS (Interim)","Material Variance","Capacity Variance","Subcontracted Variance","Cap. Overhead Variance","Mfg. Overhead Variance";
        }
        field(15; "Job No."; Code[20])
        {
            Caption = 'Job No.';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Posting Date", "Account Type", "Location Code", "Inventory Posting Group", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "Dimension Set ID", Negative, "Bal. Account Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

