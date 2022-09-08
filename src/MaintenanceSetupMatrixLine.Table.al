table 5012707 "Maintenance-/Setup Matrix Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:105 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW16.00.01:103 20.10.09 DEMSR.IST
    //   New field 100 "Entry No."
    //   Primary key changed to "Entry No."
    //   New key "Work Center No."
    //   New field 8 "From Mfg. Dim. Code"
    //   New field 9 "From Mfg. Dim. Value Code"
    //   New field 10 "To Mfg. Dim. Code"
    //   New field 11 "To Mfg. Dim. Value Code"
    //   New key <From Item No.,From Variant Code,From Item Category Code,From Mfg. Dim. Code,From Mfg. Dim. Value Code,
    //            To Item No.,To Variant Code,To Item Category Code,To Mfg. Dim. Code,To Mfg. Dim. Value Code,Starting Date>
    //   New function "CheckUniqueCombination"
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :PMW16.00:167:1
    //   New field 5012400 "From Tool No."
    //   New field 5012401 "To Tool No."
    //   Key expanded with "From Tool No." and "To Tool No."
    // 
    // #PMW16.00.01:115 30.10.09 DEMSR.IST
    //   Check unique combination with tools

    Caption = 'Maintenance-/Setup Matrix Line';

    fields
    {
        field(1; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center";
        }
        field(2; "From Item No."; Code[20])
        {
            Caption = 'From Item No.';
            TableRelation = Item;
        }
        field(3; "To Item No."; Code[20])
        {
            Caption = 'To Item No.';
            TableRelation = Item;
        }
        field(4; "From Variant Code"; Code[10])
        {
            Caption = 'From Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("From Item No."));
        }
        field(5; "To Variant Code"; Code[10])
        {
            Caption = 'To Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("To Item No."));
        }
        field(6; "From Item Category Code"; Code[10])
        {
            Caption = 'From Item Category Code';
            TableRelation = "Item Category";
        }
        field(7; "To Item Category Code"; Code[10])
        {
            Caption = 'To Item Category Code';
            TableRelation = "Item Category";
        }
        field(8; "From Mfg. Dim. Code"; Code[20])
        {
            Caption = 'From Mfg. Dimension Code';
            TableRelation = "Manufacturing Dimension".Code WHERE ("Fixed Field Allocation" = CONST (" "));
        }
        field(9; "From Mfg. Dim. Value Code"; Code[20])
        {
            Caption = 'From Mfg. Dimension Value Code';
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Manufacturing Dimension Code" = FIELD ("From Mfg. Dim. Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "To Mfg. Dim. Code"; Code[20])
        {
            Caption = 'To Mfg. Dimension Code';
            TableRelation = "Manufacturing Dimension".Code WHERE ("Fixed Field Allocation" = CONST (" "));
        }
        field(11; "To Mfg. Dim. Value Code"; Code[20])
        {
            Caption = 'To Mfg. Dimension Value Code';
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Manufacturing Dimension Code" = FIELD ("To Mfg. Dim. Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(15; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(16; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(20; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(21; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(22; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(23; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(30; "Maint.-/Setup Job Type No."; Code[20])
        {
            Caption = 'Maint.-/Setup Job Type No.';
            TableRelation = "Maintenance-/Setup Job Type";
        }
        field(100; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(5012400; "From Tool No."; Code[20])
        {
            Caption = 'From Tool No.';
            Description = ':PMW16.00:167:1';
            TableRelation = "Work Center" WHERE ("Work Center Type" = CONST (Tool));
        }
        field(5012401; "To Tool No."; Code[20])
        {
            Caption = 'To Tool No.';
            Description = ':PMW16.00:167:1';
            TableRelation = "Work Center" WHERE ("Work Center Type" = CONST (Tool));
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Work Center No.")
        {
        }
        key(Key3; "From Item No.", "From Variant Code", "From Item Category Code", "From Mfg. Dim. Code", "From Mfg. Dim. Value Code", "To Item No.", "To Variant Code", "To Item Category Code", "To Mfg. Dim. Code", "To Mfg. Dim. Value Code", "From Tool No.", "To Tool No.", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

