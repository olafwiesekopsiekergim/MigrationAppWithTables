table 5404 "Item Unit of Measure"
{
    // :PMW14.02:90:1
    //   # New field 5012400 "Trading Unit Type"
    //   # New field 5012401 "Trading Unit Code"
    //   # New function "CheckTradingUnitCode"
    //   # OnInsert, call function "CheckTradingUnitCode"
    //   # OnModify, call function "CheckTradingUnitCode"
    //   # OnDelete, call function "CheckTradingUnitCode"
    //   # OnRename, call function "CheckTradingUnitCode"
    // 
    // :PMW14.02:94:1
    //   # Qty. per Unit of Measure - OnValidate, call "CalcAddItemUnitsFromUOM"
    // 
    // :PMW14.02.01:118:1
    //   # Due to the table relation in the production structure an item unit of measure cannot be renamed
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // :PMW15.01.01:108:1
    //   # ENU Caption of 5012401 "Trading Unit Code" field corrected
    // 
    // :PMW16.00:166:1
    //   Usage of changed codeunits
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.01:T506 02.12.13 DEMSR.IST
    //   Lic. Permission on Trading Unit Management corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // 2022-03-04 MNDU7.0 MAJORT
    //   - FlowFields added for filtering of MNItemUnitOfMeasure page

    Caption = 'Item Unit of Measure';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(3; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(7300; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(7301; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(7302; Height; Decimal)
        {
            Caption = 'Height';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(7303; Cubage; Decimal)
        {
            Caption = 'Cubage';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(7304; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(50000; Blocked; Boolean)
        {
            CalcFormula = Lookup (Item.Blocked WHERE ("No." = FIELD ("Item No.")));
            FieldClass = FlowField;
        }
        field(50001; "Spare Part"; Boolean)
        {
            CalcFormula = Lookup (Item."Spare Part" WHERE ("No." = FIELD ("Item No.")));
            FieldClass = FlowField;
        }
        field(5012400; "Trading Unit Type"; Option)
        {
            Caption = 'Trading Unit Type';
            Description = ':PMW14.02:90:1';
            Editable = false;
            OptionCaption = ' ,Item,Variant';
            OptionMembers = " ",Item,Variant;
        }
        field(5012401; "Trading Unit Code"; Code[20])
        {
            Caption = 'Trading Unit Code';
            Description = ':PMW14.02:90:1';
            Editable = false;
            TableRelation = IF ("Trading Unit Type" = CONST (Item)) Item
            ELSE
            IF ("Trading Unit Type" = CONST (Variant)) "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
    }

    keys
    {
        key(Key1; "Item No.", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Qty. per Unit of Measure")
        {
        }
        key(Key3; "Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Qty. per Unit of Measure")
        {
        }
    }
}

