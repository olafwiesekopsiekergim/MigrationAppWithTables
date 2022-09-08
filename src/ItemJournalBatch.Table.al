table 233 "Item Journal Batch"
{
    // P0001 24.02.16 DEBIE.ARE New fields 50045 "RMD Status", 50046 "RMD Auftragsdatum", 50047 "RMD Lieferdatum",
    //   50048 "RMD Ihre Referenz", 50049 "RMD Externe Belegnummer", 50050 "RMD BuBl-Zeilen Bedienercode",
    //   50051 "RMD Status Auftrag", 50052 "RMD Rückinfo an Düperthal", 50053 "RMD Sammelsendung",
    //   50054 "RMD Deb.-KD-Nr. bei Spedition". New Key "RMD Status"
    // 
    // :DMW13.60.03:1:01 #New field for Enclosure: 5013400; 5013410 (link between Transferer-Worksheet and Purchase Order)
    //  # new key: "Purchase Document Type","Purchase Document No."
    // :DMW15.01:59:01 #Created SQLIndes, filled in KeyGroups
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New field (see description column)

    Caption = 'Item Journal Batch';
    DataCaptionFields = Name, Description;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            NotBlank = true;
            TableRelation = "Item Journal Template";
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(5; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(6; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(21; "Template Type"; Option)
        {
            CalcFormula = Lookup("Item Journal Template".Type WHERE(Name = FIELD("Journal Template Name")));
            Caption = 'Template Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Item,Transfer,Phys. Inventory,Revaluation,Consumption,Output,Capacity,Prod. Order';
            OptionMembers = Item,Transfer,"Phys. Inventory",Revaluation,Consumption,Output,Capacity,"Prod. Order";
        }
        field(22; Recurring; Boolean)
        {
            CalcFormula = Lookup("Item Journal Template".Recurring WHERE(Name = FIELD("Journal Template Name")));
            Caption = 'Recurring';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50045; "RMD Status"; Option)
        {
            Caption = 'RMD Status';
            Description = 'P0001';
            OptionMembers = " ",freigegeben,"übertragen","rückgemeldet","fehlerhaft rückgemeldet";
        }
        field(50046; "RMD Auftragsdatum"; Date)
        {
            Caption = 'RMD Auftragsdatum';
            Description = 'P0001';
        }
        field(50047; "RMD Lieferdatum"; Date)
        {
            Caption = 'RMD Lieferdatum';
            Description = 'P0001';
        }
        field(50048; "RMD Ihre Referenz"; Text[30])
        {
            Caption = 'RMD Ihre Referenz';
            Description = 'P0001';
        }
        field(50049; "RMD Externe Belegnummer"; Text[30])
        {
            Caption = 'RMD Externe Belegnummer';
            Description = 'P0001';
        }
        field(50050; "RMD BuBl-Zeilen Bedienercode"; Code[10])
        {
            Caption = 'RMD BuBl-Zeilen Bedienercode';
            Description = 'P0001';
        }
        field(50051; "RMD Status Auftrag"; Option)
        {
            Description = 'P0001';
            OptionMembers = normal,"Abruf gesperrt","Vorkasse gesperrt",Gesamtauftrag,Musterauftrag,Sammelrechnung,Montageauftrag,Vorabrechnung,Einlagerung,Sonderkommission,Feinabstimmung;
        }
        field(50052; "RMD Rückinfo an Düperthal"; Boolean)
        {
            Caption = 'RMD Rückinfo an Düperthal';
            Description = 'P0001';
        }
        field(50053; "RMD Sammelsendung"; Boolean)
        {
            Caption = 'RMD Sammelsendung';
            Description = 'P0001';
        }
        field(50054; "RMD Deb.-KD-Nr. bei Spedition"; Text[30])
        {
            Caption = 'RMD Deb.-KD-Nr. bei Spedition';
            Description = 'P0001';
        }
        field(5013400; "Purchase Document Type"; Option)
        {
            Caption = 'Purchase Document Type';
            Description = ':DMW13.60.03:1:01';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(5013410; "Purchase Document No."; Code[20])
        {
            Caption = 'Purchase Document No.';
            Description = ':DMW13.60.03:1:01';
            TableRelation = "Purchase Header"."No." WHERE("Document Type" = FIELD("Purchase Document Type"));
        }
        field(5307940; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Description = 'CCMS';
            TableRelation = Location;
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", Name)
        {
            Clustered = true;
        }

        key(Key3; "RMD Status")
        {
        }
    }

    fieldgroups
    {
    }
}

