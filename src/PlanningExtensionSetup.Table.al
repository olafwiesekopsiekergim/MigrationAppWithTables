table 5012700 "Planning Extension Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:111 28.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW16.00:104 29.01.09 DEMSR.IG
    //   New field 2 "Maintenance-/Setup Job No." added
    //   New field 3 "Item for Maint.-/Setup Job" added
    //   New field 4 "Maint.-/Setup Job Routing No." added
    //   New field 5 "Maint.-/Setup Job in Delaylist" added
    //   New field 6 "Fixed Maint.-Job Type No." added
    //   New field 7 "Min. Duration fixed Maint.-Job" added
    //   New field 8 "Min. Duration UOM Code" added
    // 
    // #PXW16.00:107 04.02.09 DEMSR.IG
    //   New field 9 "Startperiod Utiliz. Display"
    //   New field 10 "Startperiod Plan Table"
    //   New field 11 "Delimiter Plan Table"
    //   New field 12 "Setup Hours per Day"
    // 
    // #PXW16.00:101 04.02.09 DEMSR.IG
    //   New field 20 "No Plan. Flex. on Seq. Plan."
    // 
    // #PXW16.00.01:100 14.10.09 DEMSR.IST
    //   New field 21 "Customer Mfg. Dimension Code" added
    // 
    // #PXW16.00.01:105 22.10.09 DEMSR.IST
    //   New field 22 "Update Multilevel Prod. Orders"
    // 
    // #PXW17.00:T502 14.09.12 DEMSR.IST
    //   "Startperiod Utiliz. Display" changed to "Start Period Utiliz. Display"
    //   "Startperiod Plan Table" changed to "Start Period Plan Table"
    //   Caption of "Maint.-/Setup Job in Delaylist" changed to "Maint.-/Setup Job in Delay List"
    //   "Min. Duration fixed Maint.-Job" changed to "Min. Duration Fixed Maint.-Job"
    // 
    // #PXW17.00:T200 12.11.12 DESMR.IST
    //   New field 23 "Upd. Prod. Order Line Due Date"
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW17.10.01.01:T500 02.12.14 DEMSR.IST
    //   New field "Omit reversed Orders in Sched."
    // 
    // #PXW18.00.01:T104 18.06.15 DEMSR.IST
    //   New field "No Pick for Reversed PO Lines"

    Caption = 'Planning Extension Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Maintenance-/Setup Job No."; Code[20])
        {
            Caption = 'Maintenance-/Setup Job No.';
            Description = '#PXW16.00:104';
            TableRelation = "No. Series";
        }
        field(3; "Item for Maint.-/Setup Job"; Code[20])
        {
            Caption = 'Item for Maint.-/Setup Job';
            Description = '#PXW16.00:104';
            TableRelation = Item;
        }
        field(4; "Maint.-/Setup Job Routing No."; Code[20])
        {
            Caption = 'Maint.-/Setup Job Routing No.';
            Description = '#PXW16.00:104';
            TableRelation = "Routing Header";
        }
        field(5; "Maint.-/Setup Job in DelayList"; Boolean)
        {
            Caption = 'Maint.-/Setup Job in Delay List';
            Description = '#PXW16.00:104';
        }
        field(6; "Fixed Maint.-Job Type No."; Code[20])
        {
            Caption = 'Fixed Maint.-Job Type No.';
            Description = '#PXW16.00:104';
            TableRelation = "Maintenance-/Setup Job Type";
        }
        field(7; "Min. Duration Fixed Maint.-Job"; Decimal)
        {
            Caption = 'Min. Duration Fixed Maint.-Job';
            DecimalPlaces = 0 : 2;
            Description = '#PXW16.00:104';
        }
        field(8; "Min. Duration UOM Code"; Code[10])
        {
            Caption = 'Min. Duration UOM Code';
            Description = '#PXW16.00:104';
            TableRelation = "Capacity Unit of Measure";
        }
        field(9; "Start Period Utiliz. Display"; Option)
        {
            Caption = 'Start Period Utiliz. Display';
            Description = '#PXW16.00:107';
            OptionCaption = 'Day,Week,Month,Quarter,Year,Accounting Period';
            OptionMembers = Day,Week,Month,Quarter,Year,"Accounting Period";
        }
        field(10; "Start Period Plan Table"; Option)
        {
            Caption = 'Start Period Plan Table';
            Description = '#PXW16.00:107';
            OptionCaption = 'Day,Week,Month,Quarter,Year,Accounting Period';
            OptionMembers = Day,Week,Month,Quarter,Year,"Accounting Period";
        }
        field(11; "Delimiter Plan Table"; Code[1])
        {
            Caption = 'Delimiter Plan Table';
            Description = '#PXW16.00:107';
        }
        field(12; "Setup Hours per Day"; Decimal)
        {
            Caption = 'Setup Hours per Day';
            Description = '#PXW16.00:107';
        }
        field(20; "No Plan. Flex. on Seq. Plan."; Boolean)
        {
            Caption = 'No Plan. Flex. on Seq. Plan.';
            Description = '#PXW16.00:101';
        }
        field(21; "Customer Mfg. Dimension Code"; Code[20])
        {
            Caption = 'Customer Mfg. Dimension Code';
            Description = '#PXW16.00.01:100';
            TableRelation = "Manufacturing Dimension".Code;
        }
        field(22; "Update Multilevel Prod. Orders"; Boolean)
        {
            Caption = 'Update Multilevel Prod. Orders';
            Description = '#PXW16.00.01:105';
        }
        field(23; "Upd. Prod. Order Line Due Date"; Boolean)
        {
            Caption = 'Upd. Prod. Order Line Due Date';
            Description = '#PXW17.00:T200';
        }
        field(24; "Omit Reversed Orders in Sched."; Boolean)
        {
            Caption = 'Omit Reversed Orders in Schedule';
            Description = '#PXW17.10.01.01:T500';
        }
        field(25; "No Pick for Reversed PO Lines"; Boolean)
        {
            Caption = 'No Pick for Reversed Prod. Order Lines';
            Description = '#PXW18.00.01:T104';
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

