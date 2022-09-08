table 152 "Resource Group"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project

    Caption = 'Resource Group';
    DataCaptionFields = "No.", Name;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(22; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(23; Capacity; Decimal)
        {
            CalcFormula = Sum ("Res. Capacity Entry".Capacity WHERE ("Resource Group No." = FIELD ("No."),
                                                                    Date = FIELD ("Date Filter")));
            Caption = 'Capacity';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(24; "Qty. on Order (Job)"; Decimal)
        {
            CalcFormula = Sum ("Job Planning Line"."Quantity (Base)" WHERE (Status = CONST (Order),
                                                                           "Schedule Line" = CONST (true),
                                                                           Type = CONST (Resource),
                                                                           "Resource Group No." = FIELD ("No."),
                                                                           "Planning Date" = FIELD ("Date Filter")));
            Caption = 'Qty. on Order (Job)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Qty. Quoted (Job)"; Decimal)
        {
            CalcFormula = Sum ("Job Planning Line"."Quantity (Base)" WHERE (Status = CONST (Quote),
                                                                           "Schedule Line" = CONST (true),
                                                                           Type = CONST (Resource),
                                                                           "Resource Group No." = FIELD ("No."),
                                                                           "Planning Date" = FIELD ("Date Filter")));
            Caption = 'Qty. Quoted (Job)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Unit of Measure Filter"; Code[10])
        {
            Caption = 'Unit of Measure Filter';
            FieldClass = FlowFilter;
            TableRelation = "Unit of Measure";
        }
        field(27; "Usage (Qty.)"; Decimal)
        {
            CalcFormula = Sum ("Res. Ledger Entry".Quantity WHERE ("Entry Type" = CONST (Usage),
                                                                  Chargeable = FIELD ("Chargeable Filter"),
                                                                  "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                  "Resource Group No." = FIELD ("No."),
                                                                  "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Usage (Cost)"; Decimal)
        {
            AutoFormatType = 2;
            CalcFormula = Sum ("Res. Ledger Entry"."Total Cost" WHERE ("Entry Type" = CONST (Usage),
                                                                      Chargeable = FIELD ("Chargeable Filter"),
                                                                      "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                      "Resource Group No." = FIELD ("No."),
                                                                      "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; "Usage (Price)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Res. Ledger Entry"."Total Price" WHERE ("Entry Type" = CONST (Usage),
                                                                       Chargeable = FIELD ("Chargeable Filter"),
                                                                       "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                       "Resource Group No." = FIELD ("No."),
                                                                       "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Usage (Price)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Sales (Qty.)"; Decimal)
        {
            CalcFormula = - Sum ("Res. Ledger Entry".Quantity WHERE ("Entry Type" = CONST (Sale),
                                                                   "Resource Group No." = FIELD ("No."),
                                                                   "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                   "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Sales (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Sales (Cost)"; Decimal)
        {
            AutoFormatType = 2;
            CalcFormula = - Sum ("Res. Ledger Entry"."Total Cost" WHERE ("Entry Type" = CONST (Sale),
                                                                       "Resource Group No." = FIELD ("No."),
                                                                       "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                       "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Sales (Cost)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Sales (Price)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Res. Ledger Entry"."Total Price" WHERE ("Entry Type" = CONST (Sale),
                                                                        "Resource Group No." = FIELD ("No."),
                                                                        "Unit of Measure Code" = FIELD ("Unit of Measure Filter"),
                                                                        "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Sales (Price)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Chargeable Filter"; Boolean)
        {
            Caption = 'Chargeable Filter';
            FieldClass = FlowFilter;
        }
        field(34; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(35; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(36; "No. of Resources Assigned"; Integer)
        {
            CalcFormula = Count (Resource WHERE ("Resource Group No." = FIELD ("No.")));
            Caption = 'No. of Resources Assigned';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5900; "Qty. on Service Order"; Decimal)
        {
            CalcFormula = Sum ("Service Order Allocation"."Allocated Hours" WHERE (Posted = CONST (false),
                                                                                  "Resource Group No." = FIELD ("No."),
                                                                                  "Allocation Date" = FIELD ("Date Filter"),
                                                                                  Status = CONST (Active)));
            Caption = 'Qty. on Service Order';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(5292332; "Job No. Filter"; Code[20])
        {
            Caption = 'Job No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No. Filter"; Integer)
        {
            Caption = 'Job Line Unique No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(5292334; "Job Process No. Filter"; Code[20])
        {
            Caption = 'Job Process No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
            TableRelation = "PRPL - Job Line Process";
        }
        field(5292335; "Quantity Posted"; Decimal)
        {
            CalcFormula = Sum ("Job Ledger Entry"."Quantity (Base)" WHERE ("Entry Type" = CONST (Usage),
                                                                          "Resource Group No." = FIELD ("No."),
                                                                          "Posting Date" = FIELD ("Date Filter"),
                                                                          "Job No." = FIELD ("Job No. Filter"),
                                                                          "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                          "Travel Code" = CONST ('')));
            Caption = 'Quantity Posted';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292750; Planning; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Schedule Channel" = CONST (Calendar),
                                                                                   "Person Group No." = FIELD ("No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Job No." = FIELD ("Job No. Filter"),
                                                                                   "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                                   "Job Process No." = FIELD ("Job Process No. Filter"),
                                                                                   "Schedule Type" = FILTER (<> Simulated)));
            Caption = 'Planning';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292751; Simulation; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Schedule Channel" = CONST (Calendar),
                                                                                   "Person Group No." = FIELD ("No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Job No." = FIELD ("Job No. Filter"),
                                                                                   "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                                   "Job Process No." = FIELD ("Job Process No. Filter"),
                                                                                   "Schedule Type" = CONST (Simulated)));
            Caption = 'Simulation';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292752; Planned; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Schedule Channel" = CONST (Calendar),
                                                                                   "Person Group No." = FIELD ("No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Job No." = FIELD ("Job No. Filter"),
                                                                                   "Job Line Unique No." = FIELD ("Job Line Unique No. Filter"),
                                                                                   "Job Process No." = FIELD ("Job Process No. Filter"),
                                                                                   "Schedule Type" = CONST (Planned)));
            Caption = 'Planned';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292753; "Quantity in Time Entry"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Quantity (Base)" WHERE ("Source Channel" = CONST ("Time Entry"),
                                                                          "Resource Group No." = FIELD ("No."),
                                                                          "Posting Date" = FIELD ("Date Filter"),
                                                                          "Job No." = FIELD ("Job No. Filter"),
                                                                          "Job Line Unique No." = FIELD ("Job Line Unique No. Filter")));
            Caption = 'Quantity in Time Entry';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Journal Line';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

