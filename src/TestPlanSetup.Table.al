table 5034566 "Test Plan Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #NAV20100:A1000   09.10.07 DERIM.CS
    //   Disable Field Block Testing Destination
    // 
    // #QMW16.00.02:T301 25.08.10 DEMSR.KHS
    //   Inspection Levels added to Test Plan Setup
    // 
    // #QMW16.00.03:R471 11.07.11 DEMSR.KHS
    //   New Option "Order-Specific" in Source Type
    //   New field "Source Line No." added
    //   Primary Key extended by "Source Line No."
    //   New function: CustomizeTestPlan
    // 
    // #QMW16.00.03:R472 12.07.11 DEMSR.KHS
    //   New Option "Component" in Source Type
    //   Add TableRelation on Customer to Source No. for Component
    // 
    // #QMW16.00.03:T512 06.10.11 DEMSR.KHS
    //   Option Captions changed in Test Order Option
    // 
    // #QMW17.00.00.01:T509 05.04.13 DEMSR.KHS
    //   Switch off Create Test Order for Subcontracting
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW16.00.02:T271 18.11.10 DEMSR.KHS
    //   Integration of Trading Unit from PM into QM
    //   Item Test Order Option extended "Test on Lot No.Trading Unit"
    // 
    // #PMW17.10.00.02:T506 21.05.14 DEMSR.KHS
    //   Change Test Order Option capt

    Caption = 'Test Plan Setup';

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = '#QMW16.00.03:R471,#QMW16.00.03:R472,#QMW17.00';
            OptionCaption = 'Inventory,Purchase Order,Purchase Receipt,Sales Order,Sales Shipment,Sales Return Order,Sales Return Receipt,Production Order,Operation,Stability Test,Order-specific,Component';
            OptionMembers = Inventory,"Purchase Order","Purchase Receipt","Sales Order","Sales Shipment","Sales Return Order","Sales Return Receipt","Production Order",Operation,"Stability Test","Order-specific",Component;
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(3; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(4; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = FILTER ("Purchase Order" | "Purchase Receipt")) Vendor
            ELSE
            IF ("Source Type" = FILTER ("Sales Order" | "Sales Return Receipt" | "Sales Return Order" | Component)) Customer
            ELSE
            IF ("Source Type" = CONST ("Order-specific")) "Sales Line"."Document No.";
        }
        field(5; "Item Test Order Option"; Option)
        {
            Caption = 'Item Test Order Option';
            Description = '#QMW16.00.03:T512,#PMW16.00.02:T271';
            OptionCaption = 'No Test,Test on Item Level,Test on Lot No. Trading Unit,Test on Serial No.,,,,,,,,,,Test on Trading Unit';
            OptionMembers = "No Test","Test on Item Level","Test on Lot No. Trading Unit","Test on Serial No.",,,,,,,,,,"Test on Trading Unit";
        }
        field(6; "Sampling Method"; Option)
        {
            Caption = 'Sampling Method';
            OptionCaption = ' ,Oeser/Strohecker,DIN ISO 2859';
            OptionMembers = " ","Oeser/Strohecker","DIN ISO 2859";
        }
        field(7; "Inspection Severity Code"; Code[20])
        {
            Caption = 'Inspection Severity Code';
            TableRelation = "Inspection Severity";
        }
        field(8; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            TableRelation = "Test Plan";
        }
        field(9; "Block Testing Destination"; Boolean)
        {
            Caption = 'Block Testing Destination';
        }
        field(20; "Inspection Level Code"; Code[20])
        {
            Caption = 'Inspection Level';
            Description = '#QMW16.00.02:T301';
            TableRelation = "Inspection Level";
        }
        field(30; "Adjust Lot Status on Test"; Boolean)
        {
            Caption = 'Adjust Lot Status on Test';
        }
        field(50; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = '#QMW16.00.03:R471';
            TableRelation = IF ("Source Type" = CONST ("Order-specific")) "Sales Line"."Line No." WHERE ("Document No." = FIELD ("Source No."));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(100; "Insp. Severity on Test Prop."; Boolean)
        {
            CalcFormula = Exist ("Item Test Prop. Insp. Severity" WHERE ("Source Type" = FIELD ("Source Type"),
                                                                        "Source No." = FIELD ("Source No."),
                                                                        "Source Line No." = FIELD ("Source Line No."),
                                                                        "Item No." = FIELD ("Item No."),
                                                                        "Item Category Code" = FIELD ("Item Category Code")));
            Caption = 'Insp. Severity on Test Prop.';
            Description = '#QMW16.00.03:R290';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "No Test Order on Subcontr."; Boolean)
        {
            Caption = 'No Test Order on Subcontr.';
            Description = '#QMW17.00.00.01:T509';
        }
    }

    keys
    {
        key(Key1; "Source Type", "Item No.", "Item Category Code", "Source No.", "Source Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}

