table 5034650 "8D Report Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T101 30.03.15 DEMSR.KHS
    //   Create Object

    Caption = '8D Report Header';

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
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(20; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(30; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(40; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(100; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(110; "Item Description"; Text[50])
        {
            Caption = 'Item Description';
        }
        field(140; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(200; "Quantity Reported"; Decimal)
        {
            Caption = 'Quantity Reported';
            DecimalPlaces = 0 : 5;
        }
        field(210; "Quantity Returned"; Decimal)
        {
            Caption = 'Quantity Returned';
            DecimalPlaces = 0 : 5;
        }
        field(300; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';
        }
        field(310; "Customer Reference"; Code[20])
        {
            Caption = 'Customer Reference';
            TableRelation = Customer;
        }
        field(400; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Created,Analysis,Finished,Rejected';
            OptionMembers = Created,Analysis,Finished,Rejected;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

