table 5012584 "Contingent Group Item Spec."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T250 15.10.10 DEMSR.KHS
    //   Object created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Contingent Group Item Specification';

    fields
    {
        field(1; "Contingent Group Code"; Code[20])
        {
            Caption = 'Contingent Group Code';
            NotBlank = true;
            TableRelation = "Contingent Group";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Item,Contingent Item Group';
            OptionMembers = Item,"Contingent Group";
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item WHERE ("Contingent Shipment Allowed" = CONST (true))
            ELSE
            IF (Type = CONST ("Contingent Group")) "Contingent Item Group";
        }
        field(30; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact WHERE ("Contingent Group Code" = FIELD ("Contingent Group Code"));
        }
        field(40; "Contingent Type"; Code[20])
        {
            Caption = 'Contingent Type';
            TableRelation = "Contingent Type";
        }
        field(50; "Print Text"; Text[250])
        {
            Caption = 'Print Text';
        }
        field(60; "Max. Qty. to Ship"; Decimal)
        {
            Caption = 'Max. Qty. to Ship';
        }
        field(70; Interval; Option)
        {
            Caption = 'Interval';
            OptionCaption = ' ,per Year,per Quarter,per Month,per Week,per Day';
            OptionMembers = " ","per Year","per Quarter","per Month","per Week","per Day";
        }
        field(80; "Sell with Zero Price"; Boolean)
        {
            Caption = 'Sell with Zero Price';
        }
    }

    keys
    {
        key(Key1; "Contingent Group Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

