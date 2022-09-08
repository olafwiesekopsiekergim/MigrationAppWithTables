table 5012505 "Maintenance Order"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PLANTMAIN:PMW15.00:19:1
    //   Object created
    // 
    // :PMW16.00:155:1
    //   Connections to sequence planning
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   Form variable changed to page
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   OptionCaption for Document Type corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Maintenance Order';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Maint. Order Template,Maint. Order,Maint. Order Archive';
            OptionMembers = "Maint. Order Template","Maint. Order","Maint. Order Archive";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Planning,Released,Finished';
            OptionMembers = Planning,Released,Finished;
        }
        field(4; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(5; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(6; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(7; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(8; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(9; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(10; "Next Maintenance Date"; Date)
        {
            Caption = 'Next Maintenance Date';
        }
        field(11; "Last Maintenance Date"; Date)
        {
            Caption = 'Last Maintenance Date';
        }
        field(12; "Maintenance Interval"; Code[10])
        {
            Caption = 'Maintenance Interval';
            DateFormula = true;
        }
        field(13; "Machine No."; Code[20])
        {
            Caption = 'Machine No.';
            TableRelation = Machine."No.";
        }
        field(14; "Machine Description"; Text[30])
        {
            Caption = 'Machine Description';
        }
        field(15; "Machine Description 2"; Text[30])
        {
            Caption = 'Machine Description 2';
        }
        field(16; "Serial No."; Text[30])
        {
            Caption = 'Serial No.';
        }
        field(17; "Created-by Template No."; Code[20])
        {
            Caption = 'Created-by Template No.';
            Editable = false;
            TableRelation = "Maintenance Order"."No." WHERE ("Document Type" = CONST ("Maint. Order Template"));
        }
        field(18; "Person Responsible"; Code[10])
        {
            Caption = 'Person Responsible';
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(19; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor."No.";
        }
        field(20; Comment; Boolean)
        {
            CalcFormula = Exist ("Maintenance Comment Line" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Damage Reason"; Code[10])
        {
            Caption = 'Damage Reason';
            TableRelation = "Damage Reason".Code;
        }
        field(22; "Damage Type"; Code[10])
        {
            Caption = 'Damage Type';
            TableRelation = "Damage Type".Code;
        }
        field(30; "Prod. Order Status"; Option)
        {
            Caption = 'Prod. Order Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(40; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE (Status = FIELD ("Prod. Order Status"));
        }
        field(70; "Start Date Sequence Planning"; Date)
        {
            CalcFormula = Lookup ("Prod. Order Line"."Start Date Sequence Planning" WHERE (Status = FIELD ("Prod. Order Status"),
                                                                                          "Prod. Order No." = FIELD ("Prod. Order No.")));
            Caption = 'Start Date Sequence Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Start Time Sequence Planning"; Time)
        {
            CalcFormula = Lookup ("Prod. Order Line"."Start Time Sequence Planning" WHERE (Status = FIELD ("Prod. Order Status"),
                                                                                          "Prod. Order No." = FIELD ("Prod. Order No.")));
            Caption = 'Start Time Sequence Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "End Date Sequence Planning"; Date)
        {
            CalcFormula = Lookup ("Prod. Order Line"."End Date Sequence Planning" WHERE (Status = FIELD ("Prod. Order Status"),
                                                                                        "Prod. Order No." = FIELD ("Prod. Order No.")));
            Caption = 'End Date Sequence Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "End Time Sequence Planning"; Time)
        {
            CalcFormula = Lookup ("Prod. Order Line"."End Time Sequence Planning" WHERE (Status = FIELD ("Prod. Order Status"),
                                                                                        "Prod. Order No." = FIELD ("Prod. Order No.")));
            Caption = 'End Time Sequence Planning';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(120; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(130; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(140; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(150; "Maintenance Job Type No."; Code[20])
        {
            Caption = 'Maintenance Job Type No.';
            TableRelation = "Maintenance-/Setup Job Type"."No.";
        }
        field(160; Coordinated; Boolean)
        {
            Caption = 'Coordinated';
            Editable = false;
        }
        field(170; "Original Starting Date"; Date)
        {
            Caption = 'Original Starting Date';
            Editable = false;
        }
        field(180; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center"."No." WHERE ("Sequence Planning" = CONST (true));
        }
        field(190; "Fixed in Sequence"; Boolean)
        {
            Caption = 'Fixed in Sequence';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.")
        {
            Clustered = true;
        }
        key(Key2; "Created-by Template No.")
        {
        }
    }

    fieldgroups
    {
    }
}

