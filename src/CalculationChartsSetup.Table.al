table 5012667 "Calculation Charts Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW17.00:301 08.10.12 DEMSR.KHS
    //   Object created
    // 
    // #CAW17.00.00.01:T501 06.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #CAW17.10.00.02:T101 30.01.14 DEMSR.KHS
    //   Different Setup for Charts
    //     New field: Chart Size
    //     Change of Primary Key: "User ID","Chart Size"
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Calculation Charts Setup';

    fields
    {
        field(1; "User ID"; Text[132])
        {
            Caption = 'User ID';
        }
        field(2; "Chart Size"; Option)
        {
            Description = '#CAW17.10.00.02:T101';
            OptionCaption = 'FactBox,Full Size';
            OptionMembers = FactBox,"Full Size";
        }
        field(3; "Show Calc. Groups"; Option)
        {
            Caption = 'Show Calc. Groups';
            OptionCaption = 'All Groups,Item,Capacity';
            OptionMembers = "All Groups",Item,Capacity;
        }
        field(4; "Use Chart on Calculation"; Boolean)
        {
            Caption = 'Use Chart on Calculation';
        }
        field(5; "Value to Calculate"; Option)
        {
            Caption = 'Value to Calculate';
            OptionCaption = 'Amount (LCY),Amount,Time';
            OptionMembers = "Amount (LCY)",Amount,Time;
        }
        field(6; "Chart Type"; Option)
        {
            Caption = 'Chart Type';
            OptionCaption = 'Point,Bubble,Line,Step Line,Column,Stacked Column,Stacked Column (%),Area,Stacked Area,Stacked Area (%),Pie,Doughnut,Range,Radar,Funnel';
            OptionMembers = Point,Bubble,Line,StepLine,Column,"Stacked Column","Stacked Column (%)","Area","Stacked Area","Stacked Area (%)",Pie,Doughnut,Range,Radar,Funnel;
        }
        field(7; "Latest Order Document Date"; Date)
        {
            CalcFormula = Max ("Sales Header"."Document Date" WHERE ("Document Type" = CONST (Order)));
            Caption = 'Latest Order Document Date';
            FieldClass = FlowField;
        }
        field(8; "Chart Type (Single)"; Option)
        {
            Caption = 'Chart Type (Single)';
            OptionCaption = 'Point,Bubble,Line,Step Line,Column,Stacked Column,Stacked Column (%),Area,Stacked Area,Stacked Area (%),Pie,Doughnut,Range,Radar,Funnel';
            OptionMembers = Point,Bubble,Line,StepLine,Column,"Stacked Column","Stacked Column (%)","Area","Stacked Area","Stacked Area (%)",Pie,Doughnut,Range,Radar,Funnel;
        }
        field(9; "Show Calc. Groups (Single)"; Option)
        {
            Caption = 'Show Calc. Groups (Single)';
            OptionCaption = 'All Groups,Item,Capacity';
            OptionMembers = "All Groups",Item,Capacity;
        }
        field(10; "Value to Calculate (Single)"; Option)
        {
            Caption = 'Value to Calculate (Single)';
            OptionCaption = 'Amount (LCY),Amount';
            OptionMembers = "Amount (LCY)",Amount;
        }
    }

    keys
    {
        key(Key1; "User ID", "Chart Size")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

