table 5034584 "Item Test Prop. Insp. Severity"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R290 24.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Captions added
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Test Prop. Insp. Severity';

    fields
    {
        field(10; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'Inventory,Purchase Order,Purchase Receipt,Sales Order,,Sales Return Order,Sales Return Receipt,Production Order,Operation,Order specific,Component';
            OptionMembers = Inventory,"Purchase Order","Purchase Receipt","Sales Order",,"Sales Return Order","Sales Return Receipt","Production Order",Operation,"Order specific",Component;
        }
        field(20; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = FILTER ("Purchase Order" | "Purchase Receipt")) Vendor
            ELSE
            IF ("Source Type" = FILTER ("Sales Order" | "Sales Return Receipt" | "Sales Return Order")) Customer
            ELSE
            IF ("Source Type" = CONST ("Order specific")) "Sales Line"."Document No.";
        }
        field(30; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            TableRelation = IF ("Source Type" = CONST ("Order specific")) "Sales Line"."Line No." WHERE ("Document No." = FIELD ("Source No."));
        }
        field(40; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(50; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(60; "Test Property Set Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            TableRelation = "Test Property Set";
        }
        field(70; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            TableRelation = "Test Property";
        }
        field(80; "Inspection Severity Code"; Code[20])
        {
            Caption = 'Inspection Severity Code';
            TableRelation = "Inspection Severity";
        }
        field(90; "Test Each Used"; Boolean)
        {
            Caption = 'Test Each Used';
            Editable = false;
        }
        field(100; "Test Property Description"; Text[50])
        {
            CalcFormula = Lookup ("Test Property".Description WHERE (Code = FIELD ("Test Property Code")));
            Caption = 'Test Property Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source No.", "Source Line No.", "Item No.", "Item Category Code", "Test Property Set Code", "Test Property Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

