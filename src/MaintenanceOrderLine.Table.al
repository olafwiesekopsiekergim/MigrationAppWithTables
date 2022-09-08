table 5012506 "Maintenance Order Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PLANTMAIN:PMW15.00:19:1
    //   # Object created
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.KHS
    //   Dimension Set ID added
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   OptionCaption for Document Type corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Maintenance Order Line';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Maint. Order Template,Maint. Order,Maint. Order Archive';
            OptionMembers = "Maint. Order Template","Maint. Order","Maint. Order Archive";
        }
        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            Editable = false;
        }
        field(5; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            Editable = false;
        }
        field(6; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
            Editable = false;
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item,Resource';
            OptionMembers = " ","G/L Account",Item,Resource;
        }
        field(8; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Resource)) Resource;
        }
        field(9; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; Quantity; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(14; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(15; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
        }
        field(16; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Resource)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            "Unit of Measure";
        }
        field(17; "Applies-to Entry"; Integer)
        {
            Caption = 'Applies-to Entry';
            TableRelation = IF (Type = CONST (Item)) "Item Ledger Entry"."Entry No." WHERE ("Item No." = FIELD ("No."),
                                                                                         "Variant Code" = FIELD ("Variant Code"),
                                                                                         Positive = CONST (true),
                                                                                         Open = CONST (true));
        }
        field(18; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(19; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(20; "Posted-by Entry No."; Integer)
        {
            Caption = 'Posted-by Entry No.';
            Editable = false;
            TableRelation = IF (Type = CONST (Item)) "Item Ledger Entry"."Entry No."
            ELSE
            IF (Type = CONST (Resource)) "Res. Ledger Entry"."Entry No."
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Entry"."Entry No.";
        }
        field(21; Amount; Decimal)
        {
            BlankZero = true;
            Caption = 'Amount';
        }
        field(22; Price; Decimal)
        {
            BlankZero = true;
            Caption = 'Price';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

