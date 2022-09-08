table 5013814 "Sales Line Splitting"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW16.00.03:T012 18.10.11 DEMSR.SSZ
    //   #Created
    // #DMW17.00:A001 18.05.12 DEMSR.SSZ
    //   #Redesigned
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Sales Line Splitting';

    fields
    {
        field(1; "Document Type"; Option)
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
        field(5; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Quantity; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(20; "Init Line"; Boolean)
        {
            Caption = 'Init Line';
        }
        field(100; "Quantity from Sales Line"; Decimal)
        {
            CalcFormula = Lookup ("Sales Line".Quantity WHERE ("Document Type" = FIELD ("Document Type"),
                                                              "Document No." = FIELD ("Document No."),
                                                              "Line No." = FIELD ("Line No.")));
            Caption = 'Quantity from Sales Line';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document Type", "Document No.", "Line No.", "Init Line")
        {
            SumIndexFields = Quantity;
        }
    }

    fieldgroups
    {
    }
}

