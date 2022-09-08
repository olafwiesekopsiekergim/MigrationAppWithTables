table 42014834 "Servotion Arch Serv. Doc. Log"
{
    Caption = 'Archive Service Document Log';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = IF ("Document Type" = CONST (Quote)) "Service Header"."No." WHERE ("Document Type" = CONST (Quote))
            ELSE
            IF ("Document Type" = CONST (Order)) "Service Header"."No." WHERE ("Document Type" = CONST (Order))
            ELSE
            IF ("Document Type" = CONST (Invoice)) "Service Header"."No." WHERE ("Document Type" = CONST (Invoice))
            ELSE
            IF ("Document Type" = CONST ("Credit Memo")) "Service Header"."No." WHERE ("Document Type" = CONST ("Credit Memo"))
            ELSE
            IF ("Document Type" = CONST (Shipment)) "Service Shipment Header"
            ELSE
            IF ("Document Type" = CONST ("Posted Invoice")) "Service Invoice Header"
            ELSE
            IF ("Document Type" = CONST ("Posted Credit Memo")) "Service Cr.Memo Header";
            ValidateTableRelation = false;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Event No."; Integer)
        {
            Caption = 'Event No.';
        }
        field(4; "Service Item Line No."; Integer)
        {
            Caption = 'Service Item Line No.';
        }
        field(5; After; Text[50])
        {
            Caption = 'After';
        }
        field(6; Before; Text[50])
        {
            Caption = 'Before';
        }
        field(7; "Change Date"; Date)
        {
            Caption = 'Change Date';
        }
        field(8; "Change Time"; Time)
        {
            Caption = 'Change Time';
        }
        field(9; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Shipment,Posted Invoice,Posted Credit Memo';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo",Shipment,"Posted Invoice","Posted Credit Memo";
        }
        field(42012823; "User Filter"; Code[50])
        {
            Caption = 'User Filter';
            Description = 'MobileNAV';
            FieldClass = FlowFilter;
        }
        field(42012824; "Page No. Filter"; Integer)
        {
            Caption = 'Page No. Filter';
            Description = 'MobileNAV';
            FieldClass = FlowFilter;
        }
        field(42012826; RecGUID; Guid)
        {
            Caption = 'RecGUID';
            Description = 'MobileNAV';
        }
        field(42012827; "Last DateTime Modified Ticks"; Decimal)
        {
            CalcFormula = Lookup ("MobileNAV Offline Admin."."Last DateTime Modified Ticks" WHERE ("User ID" = FIELD ("User Filter"),
                                                                                                  "Page No." = FIELD ("Page No. Filter"),
                                                                                                  "Record GUID" = FIELD (RecGUID)));
            Caption = 'Last DateTime Modified Ticks';
            Description = 'MobileNAV';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

