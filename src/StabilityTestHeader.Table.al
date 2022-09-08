table 5034641 "Stability Test Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R462 12.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.00:406 11.12.12 DEMSR.KHS
    //   Fill Def. Test Plan Version on Val. of Test Plan
    //   Text012 changed from "You can not select this Test Plan. The Valid To Date %1 is smaller than the Test Date %2."
    //     to "You can not select this %1. The %2 %3 is smaller than the %4 %5."
    //   TableRelation of field ""Default Test Plan Version" corrected
    //   FIND skipped on Lookup of Test Plan No.
    // 
    // #QMW17.00.00.01:T512 15.04.13 DEMSR.KHS
    //   Enable manual Input of Lot No. and Serial No. in Stability Test
    // 
    // #PMW16.00.03:T251 30.09.11 DEMSR.KHS
    //   Add/Correct Trading Unit based Testing:
    //   New Fields: Lot No. Trading Unit
    //               Trading Unit No.
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   remove single primary key fields from TableRelations
    //   correct indentation
    //   Remove obsolete record names
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Stability Test Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(10; "Inventory Condition Code"; Code[20])
        {
            Caption = 'Inventory Condition Code';
            TableRelation = "Inventory Condition";
        }
        field(15; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(16; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(20; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            TableRelation = "Lot No. Information"."Lot No." WHERE ("Item No." = FIELD ("Item No."),
                                                                   "Variant Code" = FIELD ("Variant Code"));
        }
        field(22; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            TableRelation = "Serial No. Information"."Serial No." WHERE ("Item No." = FIELD ("Item No."),
                                                                         "Variant Code" = FIELD ("Variant Code"),
                                                                         "Lot No." = FIELD ("Lot No."));
        }
        field(25; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Editable = false;
            TableRelation = "Test Order";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(30; "Test Order Test Date"; Date)
        {
            CalcFormula = Lookup ("Test Order"."Test Date" WHERE ("No." = FIELD ("Test Order No.")));
            Caption = 'Test Order Test Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,In Process,Cancelled,Finished';
            OptionMembers = New,Certified,"In Process",Cancelled,Finished;
        }
        field(40; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(50; "Test Schedule Code"; Code[10])
        {
            Caption = 'Test Schedule Code';
            TableRelation = "Stability Test Schedule Header";
        }
        field(60; "Default Test Plan No."; Code[20])
        {
            Caption = 'Default Test Plan No.';
            TableRelation = "Test Plan";
        }
        field(70; "Default Test Plan Version"; Code[20])
        {
            Caption = 'Default Test Plan Version';
            TableRelation = "Test Plan".Version WHERE ("No." = FIELD ("Default Test Plan No."));
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = '#PMW16.00.03:T251';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = '#PMW16.00.03:T251';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Inventory Condition Code")
        {
        }
    }

    fieldgroups
    {
    }
}

