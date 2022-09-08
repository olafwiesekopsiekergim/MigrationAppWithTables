table 5005358 "Phys. Inventory Comment Line"
{
    Caption = 'Phys. Inventory Comment Line';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Order,Recording,Posted Order,Posted Recording';
            OptionMembers = "Order",Recording,"Posted Order","Posted Recording";
        }
        field(2; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            TableRelation = IF ("Document Type" = CONST (Order)) "Phys. Inventory Order Header"
            ELSE
            IF ("Document Type" = CONST (Recording)) "Phys. Invt. Recording Header"."Order No."
            ELSE
            IF ("Document Type" = CONST ("Posted Order")) "Post. Phys. Invt. Order Header"
            ELSE
            IF ("Document Type" = CONST ("Posted Recording")) "Posted Phys. Invt. Rec. Header"."Order No.";
        }
        field(3; "Recording No."; Integer)
        {
            Caption = 'Recording No.';
            TableRelation = IF ("Document Type" = CONST (Recording)) "Phys. Invt. Recording Header"."Recording No." WHERE ("Order No." = FIELD ("Order No."))
            ELSE
            IF ("Document Type" = CONST ("Posted Recording")) "Posted Phys. Invt. Rec. Header"."Recording No." WHERE ("Order No." = FIELD ("Order No."));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(11; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(12; Comment; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Order No.", "Recording No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

