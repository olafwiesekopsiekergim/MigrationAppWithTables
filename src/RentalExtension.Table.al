table 5072651 "Rental Extension"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001  04.05.2009  DEMSR.KHS   Object created
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   reset FieldClass property to default for Rental Start Date / Rental End Date
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental Extension';

    fields
    {
        field(1; "Extension No."; Integer)
        {
            Caption = 'Extension No.';
        }
        field(2; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(60; "New End Date"; Date)
        {
            Caption = 'New End Date';
        }
        field(70; Comment; Text[50])
        {
            Caption = 'Extension Comment';
        }
        field(90; Type; Option)
        {
            CalcFormula = Lookup ("Sales Line".Type WHERE ("Document Type" = FIELD ("Document Type"),
                                                          "Document No." = FIELD ("Document No."),
                                                          "Line No." = FIELD ("Line No.")));
            Caption = 'Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(100; "No."; Code[20])
        {
            CalcFormula = Lookup ("Sales Line"."No." WHERE ("Document Type" = FIELD ("Document Type"),
                                                           "Document No." = FIELD ("Document No."),
                                                           "Line No." = FIELD ("Line No.")));
            Caption = 'No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Rental Start Date"; Date)
        {
            Caption = 'Rental Start Date';
            Editable = false;
        }
        field(120; "Rental End Date"; Date)
        {
            Caption = 'Rental End Date';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Extension No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

