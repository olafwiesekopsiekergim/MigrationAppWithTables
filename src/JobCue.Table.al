table 9057 "Job Cue"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // PRBQ01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|boq manager

    Caption = 'Job Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Jobs w/o Resource"; Integer)
        {
            CalcFormula = Count(Job WHERE("Scheduled Res. Qty." = FILTER(0)));
            Caption = 'Jobs w/o Resource';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Upcoming Invoices"; Integer)
        {
            CalcFormula = Count(Job WHERE(Status = FILTER(<> Completed),
                                           "Next Invoice Date" = FIELD("Date Filter")));
            Caption = 'Upcoming Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Invoices Due - Not Created"; Integer)
        {
            CalcFormula = Count(Job WHERE(Status = CONST(Order),
                                           "Next Invoice Date" = FIELD("Date Filter2")));
            Caption = 'Invoices Due - Not Created';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "WIP Not Posted"; Integer)
        {
            CalcFormula = Count(Job WHERE("WIP Entries Exist" = CONST(true)));
            Caption = 'WIP Not Posted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Completed - WIP Not Calculated"; Integer)
        {
            CalcFormula = Count(Job WHERE(Status = FILTER(Completed),
                                           "WIP Completion Calculated" = CONST(false),
                                           "WIP Completion Posted" = CONST(false)));
            Caption = 'Completed - WIP Not Calculated';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Available Resources"; Integer)
        {
            CalcFormula = Count(Resource WHERE("Qty. on Order (Job)" = FILTER(0),
                                                "Qty. Quoted (Job)" = FILTER(0),
                                                "Qty. on Service Order" = FILTER(0),
                                                "Date Filter" = FIELD("Date Filter")));
            Caption = 'Available Resources';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Unassigned Resource Groups"; Integer)
        {
            CalcFormula = Count("Resource Group" WHERE("No. of Resources Assigned" = FILTER(0)));
            Caption = 'Unassigned Resource Groups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(21; "Date Filter2"; Date)
        {
            Caption = 'Date Filter2';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(5292332; "Login Person No."; Code[20])
        {
            Caption = 'Login Person No.';
            Description = 'FF, TR Resource';
            FieldClass = FlowFilter;
            TableRelation = Resource;
        }
        field(5292333; "Login Salesp./Purchaser"; Code[20])
        {
            Caption = 'Login Salesp./Purchaser';
            Description = 'FF, TR Salesperson/Purchaser';
            FieldClass = FlowFilter;
            TableRelation = "Salesperson/Purchaser";
        }
        field(5292334; "Date Filter Today"; Date)
        {
            Caption = 'Date Filter Today';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(5292335; "Date Filter Week"; Date)
        {
            Caption = 'Date Filter Week';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(5292336; "-- Job"; Integer)
        {
            Caption = '-- Job';
            Enabled = false;
        }
        field(5292337; "My Responsibility"; Integer)
        {
            CalcFormula = Count(Job WHERE("Person Responsible" = FIELD("Login Person No.")));
            Caption = 'My Responsibility';
            Description = 'CF Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292338; "My Responsibility 2"; Integer)
        {
            CalcFormula = Count(Job WHERE("Person Responsible 2" = FIELD("Login Person No.")));
            Caption = 'My Responsibility 2';
            Description = 'CF Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292339; "My Job Teams"; Integer)
        {
            CalcFormula = Count("PR - Job Line Person" WHERE("Person No." = FIELD("Login Person No.")));
            Caption = 'My Teams';
            Description = 'CF Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292340; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(5292341; "-- Sales Order"; Integer)
        {
            Caption = '-- Sales Order';
            Enabled = false;
        }
        field(5292342; "My Sales Quotes"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Quote),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser")));
            Caption = 'My Sales Quotes';
            Description = 'CF Sales Header';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292343; "My Sales Orders"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Order),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser")));
            Caption = 'My Sales Orders';
            Description = 'CF Sales Header';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292344; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(5292345; "My Scheduling Today"; Integer)
        {
            CalcFormula = Count("PRPL - Job Schedule Entry" WHERE("Schedule Type" = FILTER(Planned | Fixed),
                                                                   "Person No." = FIELD("Login Person No."),
                                                                   Start = FIELD("Date Filter Today")));
            Caption = 'My Scheduling Today';
            Description = 'CF Scheduled Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292346; "My Week Planning"; Integer)
        {
            CalcFormula = Count("PRPL - Job Schedule Entry" WHERE("Schedule Type" = FILTER(Planned | Fixed),
                                                                   "Person No." = FIELD("Login Person No."),
                                                                   Start = FIELD("Date Filter Week")));
            Caption = 'My Week Planning';
            Description = 'CF Scheduled Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292347; "My Procurement Planning"; Integer)
        {
            CalcFormula = Count("PR - Job Line Procurement" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                                   "Procurement Status" = CONST(Planning)));
            Caption = 'My Procurement Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292348; "My Shipment Planning"; Integer)
        {
            CalcFormula = Count("PR - Job Line Shipment Plan" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                                     "Shipment Status" = CONST(Planning)));
            Caption = 'My Shipment Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292349; "-- Procurement"; Integer)
        {
            Caption = '-- Procurement';
            Enabled = false;
        }
        field(5292350; "My Tasks"; Integer)
        {
            CalcFormula = Count("PR - Job Line Procurement" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                                   "Procurement Status" = CONST(Release),
                                                                   "Procurement Channel" = CONST("Time Entry")));
            Caption = 'My Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292351; "My Purchase Orders"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = CONST(Order),
                                                         "Purchaser Code" = FIELD("Login Salesp./Purchaser")));
            Caption = 'My Purchase Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292352; "My Inventory Requests"; Integer)
        {
            CalcFormula = Count("Job Journal Batch" WHERE("Person Responsible" = FIELD("Login Person No.")));
            Caption = 'My Inventory Requests';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292353; "-- Usage"; Integer)
        {
            Caption = '-- Usage';
            Enabled = false;
        }
        field(5292354; "-- Shipment"; Integer)
        {
            Caption = '-- Shipment';
            Enabled = false;
        }
        field(5292355; "My Job Shipments"; Integer)
        {
            CalcFormula = Count("PR - Job Shipment Header" WHERE("Person Responsible" = FIELD("Login Person No.")));
            Caption = 'My Job Shipments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292356; "-- Invoicing"; Integer)
        {
            Caption = '-- Invoicing';
            Enabled = false;
        }
        field(5292357; "My Sales Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Invoice),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser")));
            Caption = 'My Sales Invoices';
            Description = 'CF Sales Header';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292358; "My Sales Credit Memos"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST("Credit Memo"),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser")));
            Caption = 'My Sales Credit Memos';
            Description = 'CF Sales Header';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292359; "-- WIP"; Integer)
        {
            Caption = '-- WIP';
            Enabled = false;
        }
        field(5292360; "My Jobs with unposted WIP"; Integer)
        {
            CalcFormula = Count(Job WHERE("Person Responsible" = FIELD("Login Person No."),
                                           "WIP Not Posted" = CONST(true)));
            Caption = 'My Jobs with unposted WIP';
            Description = 'CF Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292651; Jobs; Integer)
        {
            CalcFormula = Count(Job WHERE("Person Responsible" = FIELD("Login Person No."),
                                           "Structure Type" = CONST(" "),
                                           "Job Link Main Job No." = FIELD("Project Filter"),
                                           "Is Project" = CONST(false)));
            Caption = 'Jobs';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292652; "Process and Controllings"; Integer)
        {
            CalcFormula = Count(Job WHERE("Person Responsible" = FIELD("Login Person No."),
                                           "Structure Type" = CONST(PaC),
                                           "Job Link Main Job No." = FIELD("Project Filter"),
                                           "Is Project" = CONST(false)));
            Caption = 'Process and Controllings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292653; "Sales Quotes"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Quote),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser"),
                                                      "Main Job No." = FIELD("Project Filter")));
            Caption = 'Sales Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292654; "Sales Orders"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Order),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser"),
                                                      "Main Job No." = FIELD("Project Filter")));
            Caption = 'Sales Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292655; "Purchase Quotes"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = CONST(Quote),
                                                         "Purchaser Code" = FIELD("Login Salesp./Purchaser"),
                                                         "Main Job No." = FIELD("Project Filter")));
            Caption = 'Purchase Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292656; "Purchase Orders"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = CONST(Order),
                                                         "Purchaser Code" = FIELD("Login Salesp./Purchaser"),
                                                         "Main Job No." = FIELD("Project Filter")));
            Caption = 'Purchase Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292657; "Posted Purchase Invoices"; Integer)
        {
            CalcFormula = Count("Purch. Inv. Header" WHERE("Purchaser Code" = FIELD("Login Salesp./Purchaser"),
                                                            "Main Job No." = FIELD("Project Filter")));
            Caption = 'Posted Purchase Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292658; Tasks; Integer)
        {
            CalcFormula = Count("PR - Job Line Procurement" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                                   "Procurement Status" = CONST(Release),
                                                                   "Procurement Channel" = CONST("Time Entry"),
                                                                   "Main Job No." = FIELD("Project Filter")));
            Caption = 'Tasks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292659; "Procurement Planning"; Integer)
        {
            CalcFormula = Count("PR - Job Line Procurement" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                                   "Procurement Status" = CONST(Planning),
                                                                   "Main Job No." = FIELD("Project Filter")));
            Caption = 'Procurement Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292660; "Inventory Requests"; Integer)
        {
            CalcFormula = Count("Job Journal Batch" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                           "Main Job No." = FIELD("Project Filter")));
            Caption = 'Inventory Requests';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292661; "Job Shipments"; Integer)
        {
            CalcFormula = Count("PR - Job Shipment Header" WHERE("Person Responsible" = FIELD("Login Person No."),
                                                                  "Main Job No." = FIELD("Project Filter")));
            Caption = 'Job Shipments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292662; "Sales Invoices"; Integer)
        {
            CalcFormula = Count("Sales Header" WHERE("Document Type" = CONST(Invoice),
                                                      "Salesperson Code" = FIELD("Login Salesp./Purchaser"),
                                                      "Main Job No." = FIELD("Project Filter")));
            Caption = 'Sales Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292663; "Posted Sales Invoices"; Integer)
        {
            CalcFormula = Count("Sales Invoice Header" WHERE("Salesperson Code" = FIELD("Login Salesp./Purchaser"),
                                                              "Main Job No." = FIELD("Project Filter")));
            Caption = 'Posted Sales Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292664; Projects; Integer)
        {
            CalcFormula = Count(Job WHERE("Person Responsible" = FIELD("Login Person No."),
                                           "Is Project" = CONST(true),
                                           "No." = FIELD("Project Filter")));
            Caption = 'Projects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292670; "Project Filter"; Code[20])
        {
            Caption = 'Project Filter';
            Editable = false;
            FieldClass = FlowFilter;
            TableRelation = Job WHERE("Is Project" = CONST(true));
        }
        field(5292675; "Outstanding Purchase Quotes"; Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = FILTER(Quote),
                                                         Status = FILTER(Released),
                                                         "Purchaser Code" = FIELD("Login Salesp./Purchaser"),
                                                         "Main Job No." = FIELD("Project Filter"),
                                                         "Expected Quote Date" = FIELD("Date Filter2")));
            Caption = 'Outstanding Purchase Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292680; Opportunity; Integer)
        {
            CalcFormula = Count(Opportunity WHERE("Salesperson Code" = FIELD("Login Salesp./Purchaser"),
                                                   "Project No." = FIELD("Project Filter"),
                                                   Closed = CONST(false)));
            Caption = 'Opportunity';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = Opportunity;
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

