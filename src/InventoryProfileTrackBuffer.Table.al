table 99000854 "Inventory Profile Track Buffer"
{
    Caption = 'Inventory Profile Track Buffer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(3; "Demand Line No."; Integer)
        {
            Caption = 'Demand Line No.';
        }
        field(4; "Sequence No."; Integer)
        {
            Caption = 'Sequence No.';
        }
        field(21; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(23; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(72; "Quantity Tracked"; Decimal)
        {
            Caption = 'Quantity Tracked';
        }
        field(73; "Surplus Type"; Option)
        {
            Caption = 'Surplus Type';
            OptionCaption = 'None,Forecast,BlanketOrder,SafetyStock,ReorderPoint,MaxInventory,FixedOrderQty,MaxOrder,MinOrder,OrderMultiple,DampenerQty,PlanningFlexibility,Undefined,EmergencyOrder';
            OptionMembers = "None",Forecast,BlanketOrder,SafetyStock,ReorderPoint,MaxInventory,FixedOrderQty,MaxOrder,MinOrder,OrderMultiple,DampenerQty,PlanningFlexibility,Undefined,EmergencyOrder;
        }
        field(75; "Warning Level"; Option)
        {
            Caption = 'Warning Level';
            OptionCaption = ',Emergency,Exception,Attention';
            OptionMembers = ,Emergency,Exception,Attention;
        }
    }

    keys
    {
        key(Key1; "Line No.", Priority, "Demand Line No.", "Sequence No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = "Quantity Tracked";
        }
    }

    fieldgroups
    {
    }
}

