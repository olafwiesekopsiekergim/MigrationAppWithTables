table 5820 "Cost Element Buffer"
{
    Caption = 'Cost Element Buffer';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Direct Cost,Revaluation,Rounding,Indirect Cost,Variance,Total';
            OptionMembers = "Direct Cost",Revaluation,Rounding,"Indirect Cost",Variance,Total;
        }
        field(2; "Variance Type"; Option)
        {
            Caption = 'Variance Type';
            OptionCaption = ' ,Purchase,Material,Capacity,Capacity Overhead,Manufacturing Overhead,Subcontracted';
            OptionMembers = " ",Purchase,Material,Capacity,"Capacity Overhead","Manufacturing Overhead",Subcontracted;
        }
        field(3; "Actual Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Actual Cost';
        }
        field(4; "Actual Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Actual Cost (ACY)';
        }
        field(5; "Rounding Residual"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rounding Residual';
        }
        field(6; "Rounding Residual (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Rounding Residual (ACY)';
        }
        field(7; "Expected Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Cost';
        }
        field(8; "Expected Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Cost (ACY)';
        }
        field(9; "Invoiced Quantity"; Decimal)
        {
            Caption = 'Invoiced Quantity';
        }
        field(10; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
        }
        field(11; "Inbound Completely Invoiced"; Boolean)
        {
            Caption = 'Inbound Completely Invoiced';
        }
        field(12; "Last Valid Value Entry No"; Integer)
        {
            Caption = 'Last Valid Value Entry No';
        }
    }

    keys
    {
        key(Key1; Type, "Variance Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

