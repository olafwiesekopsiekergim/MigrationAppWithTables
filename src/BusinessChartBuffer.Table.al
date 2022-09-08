table 485 "Business Chart Buffer"
{
    // #PXW17.00:T202 16.01.13 DEMSR.KHS
    //   Field added: 5012700 "PX Work Center Filter"
    // 
    // #CAW17.00:301 16.08.12 DEMSR.KHS
    //   Add fields:
    //     Calculation Filter 1 Value
    //     Calculation Filter 2 Value
    //     Calculation Filter 3 Value
    //     Calculation Filter 4 Value
    // 
    // #TDCW19.00:T101 02.10.15 DEMSR.KHS
    //   Set Function "Business Chart Buffer" to Local = No

    Caption = 'Business Chart Buffer';

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(2; "Chart Type"; Option)
        {
            Caption = 'Chart Type';
            OptionCaption = 'Point,,Bubble,Line,,StepLine,,,,,Column,StackedColumn,StackedColumn100,Area,,StackedArea,StackedArea100,Pie,Doughnut,,,Range,,,,Radar,,,,,,,,Funnel';
            OptionMembers = Point,,Bubble,Line,,StepLine,,,,,Column,StackedColumn,StackedColumn100,"Area",,StackedArea,StackedArea100,Pie,Doughnut,,,Range,,,,Radar,,,,,,,,Funnel;
        }
        field(3; "Data Type"; Option)
        {
            Caption = 'Data Type';
            OptionCaption = 'String,Integer,Decimal,DateTime';
            OptionMembers = String,"Integer",Decimal,DateTime;
        }
        field(4; XML; BLOB)
        {
            Caption = 'XML';
        }
        field(5; "Drill-Down X Index"; Integer)
        {
            Caption = 'Drill-Down X Index';
        }
        field(6; "Drill-Down Y Value"; Decimal)
        {
            Caption = 'Drill-Down Y Value';
        }
        field(7; "Drill-Down Measure Index"; Integer)
        {
            Caption = 'Drill-Down Measure Index';
        }
        field(8; "Period Length"; Option)
        {
            Caption = 'Period Length';
            OptionCaption = 'Day,Week,Month,Quarter,Year,Accounting Period,None';
            OptionMembers = Day,Week,Month,Quarter,Year,"Accounting Period","None";
        }
        field(9; "Period Filter Start Date"; Date)
        {
            Caption = 'Period Filter Start Date';
        }
        field(10; "Period Filter End Date"; Date)
        {
            Caption = 'Period Filter End Date';
        }
        field(5012650; "Calculation Filter 1 Value"; Text[250])
        {
            Caption = 'Calculation Filter 1 Value';
            Description = '#CAW17.00:301';
            FieldClass = FlowFilter;
        }
        field(5012651; "Calculation Filter 2 Value"; Text[250])
        {
            Caption = 'Calculation Filter 2 Value';
            Description = '#CAW17.00:301';
            FieldClass = FlowFilter;
        }
        field(5012652; "Calculation Filter 3 Value"; Text[250])
        {
            Caption = 'Calculation Filter 3 Value';
            Description = '#CAW17.00:301';
            FieldClass = FlowFilter;
        }
        field(5012653; "Calculation Filter 4 Value"; Text[250])
        {
            Caption = 'Calculation Filter 4 Value';
            Description = '#CAW17.00:301';
            FieldClass = FlowFilter;
        }
        field(5012700; "PX Work Center Filter"; Text[250])
        {
            Caption = 'PX Work Center Filter';
            Description = '#PXW17.00:T202';
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

