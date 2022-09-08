table 208 "Job Posting Group"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project

    Caption = 'Job Posting Group';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "WIP Costs Account"; Code[20])
        {
            Caption = 'WIP Costs Account';
            TableRelation = "G/L Account";
        }
        field(3; "WIP Accrued Costs Account"; Code[20])
        {
            Caption = 'WIP Accrued Costs Account';
            TableRelation = "G/L Account";
        }
        field(4; "Job Costs Applied Account"; Code[20])
        {
            Caption = 'Job Costs Applied Account';
            TableRelation = "G/L Account";
        }
        field(5; "Job Costs Adjustment Account"; Code[20])
        {
            Caption = 'Job Costs Adjustment Account';
            TableRelation = "G/L Account";
        }
        field(6; "G/L Expense Acc. (Contract)"; Code[20])
        {
            Caption = 'G/L Expense Acc. (Contract)';
            TableRelation = "G/L Account";
        }
        field(7; "Job Sales Adjustment Account"; Code[20])
        {
            Caption = 'Job Sales Adjustment Account';
            TableRelation = "G/L Account";
        }
        field(8; "WIP Accrued Sales Account"; Code[20])
        {
            Caption = 'WIP Accrued Sales Account';
            TableRelation = "G/L Account";
        }
        field(9; "WIP Invoiced Sales Account"; Code[20])
        {
            Caption = 'WIP Invoiced Sales Account';
            TableRelation = "G/L Account";
        }
        field(10; "Job Sales Applied Account"; Code[20])
        {
            Caption = 'Job Sales Applied Account';
            TableRelation = "G/L Account";
        }
        field(11; "Recognized Costs Account"; Code[20])
        {
            Caption = 'Recognized Costs Account';
            TableRelation = "G/L Account";
        }
        field(12; "Recognized Sales Account"; Code[20])
        {
            Caption = 'Recognized Sales Account';
            TableRelation = "G/L Account";
        }
        field(13; "Item Costs Applied Account"; Code[20])
        {
            Caption = 'Item Costs Applied Account';
            TableRelation = "G/L Account";
        }
        field(14; "Resource Costs Applied Account"; Code[20])
        {
            Caption = 'Resource Costs Applied Account';
            TableRelation = "G/L Account";
        }
        field(15; "G/L Costs Applied Account"; Code[20])
        {
            Caption = 'G/L Costs Applied Account';
            TableRelation = "G/L Account";
        }
        field(5292332; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5292333; "WIP Value"; Code[20])
        {
            Caption = 'WIP Value';
            TableRelation = "G/L Account";
        }
        field(5292334; "WIP Impending Losses"; Code[20])
        {
            Caption = 'WIP Impending Losses';
            TableRelation = "G/L Account";
        }
        field(5292335; "WIP Prospective Cost"; Code[20])
        {
            Caption = 'WIP Prospective Cost';
            TableRelation = "G/L Account";
        }
        field(5292336; "WIP Cost of Sales"; Code[20])
        {
            Caption = 'WIP Cost of Sales';
            TableRelation = "G/L Account";
        }
        field(5292337; "WIP IS Adjustment"; Code[20])
        {
            Caption = 'WIP IS Adjustment';
            TableRelation = "G/L Account";
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
        fieldgroup(Brick; "Code")
        {
        }
    }
}

