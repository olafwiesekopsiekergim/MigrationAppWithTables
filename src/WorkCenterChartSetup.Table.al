table 5012725 "Work Center Chart Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW17.00:T202 16.01.13 DEMSR.KHS
    //   "Create Business Charts for Work Center": Object created
    // 
    // #PXW17.00.00.02:T501 07.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PXW17.10.00.02:T501 25.02.14 DEMSR.IST
    //   Record must be read before update of settings
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Work Center Chart Setup';

    fields
    {
        field(1; "User ID"; Text[132])
        {
            Caption = 'User ID';
        }
        field(2; "Period Length"; Option)
        {
            Caption = 'Period Length';
            OptionCaption = 'Day,Week,Month,Quarter,Year';
            OptionMembers = Day,Week,Month,Quarter,Year;
        }
        field(3; "View Type"; Option)
        {
            Caption = 'Show Values';
            OptionCaption = 'Load,Setup';
            OptionMembers = Load,Setup;
        }
        field(4; "Use Work Date as Base"; Boolean)
        {
            Caption = 'Use Work Date as Base';
        }
        field(5; "Value to Calculate"; Option)
        {
            Caption = 'Value to Calculate';
            OptionCaption = 'All Values,Capacity,Allocated,Setup,Run';
            OptionMembers = "All Values",Capacity,Allocated,Setup,Run;
        }
        field(6; "Chart Type"; Option)
        {
            Caption = 'Chart Type';
            OptionCaption = 'Point,Bubble,Line,Step Line,Column,Stacked Column,Stacked Column (%),Area,Stacked Area,Stacked Area (%),Pie,Doughnut,Range,Radar,Funnel';
            OptionMembers = Point,Bubble,Line,StepLine,Column,"Stacked Column","Stacked Column (%)","Area","Stacked Area","Stacked Area (%)",Pie,Doughnut,Range,Radar,Funnel;
        }
        field(10; "Work Center Filter"; Text[250])
        {
            Caption = 'Work Center Filter';
        }
        field(11; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(12; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(13; "No. of Periods"; Integer)
        {
            Caption = 'No. of Periods';
            InitValue = 12;
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

