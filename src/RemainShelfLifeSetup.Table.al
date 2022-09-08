table 5012428 "Remain. Shelf Life Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.03:T101 14.07.11 DEMSR.IST
    //   Object created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Remain. Shelf Life Setup';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(2; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(3; "Sales Type"; Option)
        {
            Caption = 'Sales Type';
            OptionCaption = 'Customer,Customer Group,All Customers';
            OptionMembers = Customer,"Customer Group","All Customers";
        }
        field(4; "Sales Code"; Code[20])
        {
            Caption = 'Sales Code';
            TableRelation = IF ("Sales Type" = CONST ("Customer Group")) "Customer Group"
            ELSE
            IF ("Sales Type" = CONST (Customer)) Customer;
        }
        field(5; "Remaining Shelf Time"; DateFormula)
        {
            Caption = 'Remaining Shelf Time';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Item Category Code", "Sales Type", "Sales Code")
        {
            Clustered = true;
        }
        key(Key2; "Sales Type", "Sales Code")
        {
        }
    }

    fieldgroups
    {
    }
}

