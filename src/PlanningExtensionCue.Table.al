table 5012701 "Planning Extension Cue"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:108 11.02.09 DEMSR.IST
    //   Object created
    // 
    // #PXW16.00.01.02:T500 02.03.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PXW17.00:T101 11.09.12 DEMSR.IST
    //   Field 21 "User ID Filter" expanded to Code50
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :PMW16.00:141:1
    //   New field 5012400 "Prod. Structures under Dev."
    //   New field 5012401 "Manuf. Strucs under Dev."
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards

    Caption = 'Planning Extension Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Planned Prod. Orders - All"; Integer)
        {
            CalcFormula = Count ("Production Order" WHERE (Status = CONST (Planned)));
            Caption = 'Planned Production Orders - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Firm Plan. Prod. Orders - All"; Integer)
        {
            CalcFormula = Count ("Production Order" WHERE (Status = CONST ("Firm Planned")));
            Caption = 'Firm Planned Production Orders - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Released Prod. Orders - All"; Integer)
        {
            CalcFormula = Count ("Production Order" WHERE (Status = CONST (Released)));
            Caption = 'Released Production Orders - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Prod. BOMs under Development"; Integer)
        {
            CalcFormula = Count ("Production BOM Header" WHERE (Status = CONST ("Under Development")));
            Caption = 'Prod. BOMs under Development';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Routings under Development"; Integer)
        {
            CalcFormula = Count ("Routing Header" WHERE (Status = CONST ("Under Development")));
            Caption = 'Routings under Development';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Purchase Orders"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = CONST (Order),
                                                         "Assigned User ID" = FIELD ("User ID Filter")));
            Caption = 'Purchase Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Prod. Orders Routings-in Queue"; Integer)
        {
            CalcFormula = Count ("Prod. Order Routing Line" WHERE ("Starting Date" = FIELD ("Date Filter"),
                                                                  "Routing Status" = FILTER (" " | Planned)));
            Caption = 'Prod. Orders Routings - in Queue';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Prod. Orders Routings-in Prog."; Integer)
        {
            CalcFormula = Count ("Prod. Order Routing Line" WHERE ("Ending Date" = FIELD ("Date Filter"),
                                                                  "Routing Status" = FILTER ("In Progress")));
            Caption = 'Prod. Orders Routings - in Progress';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Invt. Picks to Production"; Integer)
        {
            CalcFormula = Count ("Warehouse Activity Header" WHERE (Type = CONST (Pick),
                                                                   "Source Document" = CONST ("Prod. Consumption")));
            Caption = 'Invt. Picks to Production';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Invt. Put-aways from Prod."; Integer)
        {
            CalcFormula = Count ("Warehouse Activity Header" WHERE (Type = CONST (Pick),
                                                                   "Source Document" = CONST ("Prod. Output")));
            Caption = 'Invt. Put-aways from Prod.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Released Prod. Orders - Today"; Integer)
        {
            CalcFormula = Count ("Production Order" WHERE (Status = CONST (Released),
                                                          "Starting Date" = FIELD ("Date Filter")));
            Caption = 'Released Prod. Orders - Today';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(21; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            FieldClass = FlowFilter;
        }
        field(30; "Planningpool w/o Work Center"; Integer)
        {
            CalcFormula = Count ("Prod. Order Line" WHERE ("Maintenance-/Setup Job" = CONST (false),
                                                          Status = FILTER (Simulated .. Released),
                                                          "Sequence Work Center No." = FILTER ('')));
            Caption = 'Without Sequence Work Center';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Sequence Planning Work Centers"; Integer)
        {
            CalcFormula = Count ("Work Center" WHERE ("Sequence Planning" = CONST (true),
                                                     "Work Center Type" = CONST ("Sequence Planning")));
            Caption = 'Sequence Planning Work Centers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012400; "Prod. Structures under Dev."; Integer)
        {
            CalcFormula = Count ("Production Structure Header" WHERE (Status = CONST ("Under Development")));
            Caption = 'Production Structures under Development';
            Description = ':PMW16.00:141:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012401; "Manuf. Strucs under Dev."; Integer)
        {
            CalcFormula = Count ("Production Structure Header" WHERE ("Production Structure Type" = CONST ("Manufacturing Structure"),
                                                                     Status = CONST ("Under Development")));
            Caption = 'Manufacturing Structures under Development';
            Description = ':PMW16.00:141:1';
            Editable = false;
            FieldClass = FlowField;
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

