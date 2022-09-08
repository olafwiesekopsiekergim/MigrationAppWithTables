table 5000301 "Cost Acc. Sched. Chart Setup"
{
    Caption = 'CA Account Schedules Chart Setup';

    fields
    {
        field(1; "User ID"; Text[132])
        {
            Caption = 'User ID';
            Editable = false;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(4; "MyLists Area"; Option)
        {
            Caption = 'My Lists Area';
            OptionCaption = ' ,Cost Types,Cost Centers,Cost Units,Reference Units';
            OptionMembers = " ","Cost Types","Cost Centers","Cost Units","Reference Units";
        }
        field(10; "Account Schedule Name"; Code[10])
        {
            Caption = 'Account Schedule Name';
            TableRelation = "Cost Account Schedule Name".Name;
        }
        field(20; "Column Layout Name"; Code[10])
        {
            Caption = 'Column Layout Name';
            TableRelation = "CostAcc.Sched.Column Lay. Name".Name;
        }
        field(30; "Base X-Axis on"; Option)
        {
            Caption = 'Base X-Axis on';
            OptionCaption = 'Period,Acc. Sched. Line,Acc. Sched. Column';
            OptionMembers = Period,"Acc. Sched. Line","Acc. Sched. Column";
        }
        field(31; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(32; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(41; "Period Length"; Option)
        {
            Caption = 'Period Length';
            OptionCaption = 'Day,Week,Month,Quarter,Year';
            OptionMembers = Day,Week,Month,Quarter,Year;
        }
        field(42; "No. of Periods"; Integer)
        {
            Caption = 'No. of Periods';
            InitValue = 12;
        }
        field(43; "Amount Type"; Option)
        {
            Caption = 'Amount Type';
            OptionCaption = 'Net Change,Balance at Date';
            OptionMembers = "Net Change","Balance at Date";
        }
        field(50; "Last Viewed"; Boolean)
        {
            Caption = 'Last Viewed';
            Editable = false;
        }
        field(51; "Look Ahead"; Boolean)
        {
            Caption = 'Look Ahead';
        }
    }

    keys
    {
        key(Key1; "User ID", Name, "MyLists Area")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

