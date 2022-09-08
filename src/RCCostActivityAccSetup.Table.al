table 5000300 "RC Cost+Activity Acc. Setup"
{
    Caption = 'Role Center Cost and Activity Accounting Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; BABCostAccScheduleName; Code[10])
        {
            Caption = 'CostAccScheduleName';
            TableRelation = "Cost Account Schedule Name";
        }
        field(3; BABCostAccColumnLayoutName; Code[10])
        {
            Caption = 'Cost Account Column Layout Name';
            TableRelation = "CostAcc.Sched.Column Lay. Name";
        }
        field(4; DBCostAccScheduleName; Code[10])
        {
            Caption = 'CostAccScheduleName';
            TableRelation = "Cost Account Schedule Name";
        }
        field(5; DBCostAccColumnLayoutName; Code[10])
        {
            Caption = 'Cost Account Column Layout Name';
            TableRelation = "CostAcc.Sched.Column Lay. Name";
        }
        field(10; "Use MyFilters"; Boolean)
        {
            Caption = 'Use MyFilters';
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

