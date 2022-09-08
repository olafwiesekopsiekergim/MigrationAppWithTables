table 99000764 "Routing Line"
{
    // #PXW16.00:101 28.01.09 DEMSR.IST
    //   New field 5012700 "Work Center Type" added
    //   Set "Work Center Type" in function "WorkCenterTransferFields"
    // 
    // #PXW18.00.01:T101 19.05.15 DEMSR.IST
    //   New field 5012701 "Sequence Planning"
    // 
    // #CAW16.00.01:T101 07.07.11 DEMSR.IST
    //   New field 5012650 "Calculation Group Code" added
    //   Transfer "Calculation Group Code" from Work Center/Machine Center
    // 
    // :PMW13.71:1:1
    //   Tool management
    // 
    // :PMW16.00:155:1
    //   Redesign of Sequence Planning --> #PXW16.00:101
    // 
    // :PMW16.00:167:1
    //   Option of field "Work Center Type" expanded with Tool and Insert
    // 
    // :DMW13.60.03:1:01 #neues Feld: Kalkulationsgruppe
    //  # neue Felder: "Konstruktionsnr." und "Konstruktionszeilennr."; Key angelegt
    // 
    // :DMW13.70.01:1:01 #neues Feld Quelltyp: woher kommen die Arbeitsgänge: "Beleg Stückliste" oder Konstruktion
    //  # Felder: "Konstruktionsnr." und "Konstruktionszeilennr." umbenannt in
    //  #         "Quellnr." und "Quellzeilennr."
    // :DMW14.04:1:01 #  corrected Table Relation in Field "Calculation Group"
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW16.00.00.01:6:01 #TableRelation in field "Calculation Group" corrected
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted calculation fields
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T107 20.10.14 DEMSR.SSZ
    //   #new fields: "Subcontracting Currency", "Unit Cost per (FCY)"
    // 
    // #DMW19.00:T101 02.10.15 DEMSR.KHS
    //   Set function "DeleteRelations" to Local = No
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM/VR
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)

    Caption = 'Routing Line';

    fields
    {
        field(1; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            NotBlank = true;
            TableRelation = "Routing Header";
        }
        field(2; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(4; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            NotBlank = true;
        }
        field(5; "Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
        }
        field(6; "Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Work Center,Machine Center, ';
            OptionMembers = "Work Center","Machine Center"," ";
        }
        field(8; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(9; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            Editable = false;
            TableRelation = "Work Center";
        }
        field(10; "Work Center Group Code"; Code[10])
        {
            Caption = 'Work Center Group Code';
            Editable = false;
            TableRelation = "Work Center Group";
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(13; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(14; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(15; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(16; "Fixed Scrap Quantity"; Decimal)
        {
            Caption = 'Fixed Scrap Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(17; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Scrap Factor %"; Decimal)
        {
            Caption = 'Scrap Factor %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(19; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(20; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(21; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(22; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(27; "Minimum Process Time"; Decimal)
        {
            Caption = 'Minimum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(28; "Maximum Process Time"; Decimal)
        {
            Caption = 'Maximum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(30; "Concurrent Capacities"; Decimal)
        {
            Caption = 'Concurrent Capacities';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
        }
        field(31; "Send-Ahead Quantity"; Decimal)
        {
            Caption = 'Send-Ahead Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(34; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(35; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(40; "Unit Cost per"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost per';
            MinValue = 0;
        }
        field(41; Recalculate; Boolean)
        {
            Caption = 'Recalculate';
            Editable = false;
        }
        field(45; Comment; Boolean)
        {
            CalcFormula = Exist ("Routing Comment Line" WHERE ("Routing No." = FIELD ("Routing No."),
                                                              "Version Code" = FIELD ("Version Code"),
                                                              "Operation No." = FIELD ("Operation No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Sequence No. (Forward)"; Integer)
        {
            Caption = 'Sequence No. (Forward)';
            Editable = false;
        }
        field(51; "Sequence No. (Backward)"; Integer)
        {
            Caption = 'Sequence No. (Backward)';
            Editable = false;
        }
        field(52; "Fixed Scrap Qty. (Accum.)"; Decimal)
        {
            Caption = 'Fixed Scrap Qty. (Accum.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(53; "Scrap Factor % (Accumulated)"; Decimal)
        {
            Caption = 'Scrap Factor % (Accumulated)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5012405; "Tool attached to Operation No."; Code[10])
        {
            Caption = 'Tool attached to Operation No.';
            Description = ':PMW13.71:1:1';
            Editable = false;
        }
        field(5012406; "Main Tool"; Boolean)
        {
            Caption = 'Main Tool';
            Description = ':PMW13.71:1:1';
        }
        field(5012409; "Insert att. to Operation No."; Code[10])
        {
            Caption = 'Insert att. to Operation No.';
            Description = ':PMW14.02.01:103:1';
            Editable = false;
        }
        field(5012410; "Main Insert"; Boolean)
        {
            Caption = 'Main Insert';
            Description = ':PMW14.02.01:103:1';
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00.01:T101';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(5012700; "Work Center Type"; Option)
        {
            Caption = 'Work Center Type';
            Description = '#PXW16.00:101';
            Editable = false;
            OptionCaption = ' ,Sequence Planning,Tool,Insert';
            OptionMembers = " ","Sequence Planning",Tool,Insert;
        }
        field(5012701; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = '#PXW18.00.01:T101';
            Editable = true;
        }
        field(5013405; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':DMW13.70.01:1:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Beleg Stückliste",Konstruktion;
        }
        field(5013410; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013420; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013468; "Subcontractor Currency"; Code[10])
        {
            Caption = 'Subcontractor Currency';
            Description = '#DMW18.00.01:T107';
            Editable = false;
            TableRelation = Currency;
        }
        field(5013469; "Unit Cost per (FCY)"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Unit Cost per (FCY)';
            Description = '#DMW18.00.01:T107';
            MinValue = 0;
        }
        field(5034550; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#NAV20100:A1000 20.04.07 DEWUE.SE';
            TableRelation = "Test Plan"."No." WHERE (Type = CONST (Item));
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Routing No.", "Version Code", "Operation No.")
        {
            Clustered = true;
        }
        key(Key2; "Routing No.", "Version Code", "Sequence No. (Forward)")
        {
        }
        key(Key3; "Routing No.", "Version Code", "Sequence No. (Backward)")
        {
        }
        key(Key4; "Work Center No.")
        {
        }
        key(Key5; Type, "No.")
        {
        }
        key(Key6; "Routing Link Code")
        {
        }
        key(Key7; "Source No.", "Source Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

