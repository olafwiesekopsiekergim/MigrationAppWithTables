table 5012710 "Manufacturing Dimension Value"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW16.00.01:100 14.10.09 DEMSR.IST
    //   Check Customer Mfg. Dimension
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.01:T103 11.06.15 DEMSR.IST
    //   New field "Item Variant Mfg. Dim. No."
    // 
    // :PMW16.00:167:1
    //   New field 5012400 "Tool Mfg. Dimension No."
    //   New field 5012401 "Insert Mfg. Dimension No."
    //   New key <Code, "Tool Mfg. Dimension No.">
    //   New key <Code, "Insert Mfg. Dimension No.">
    // 
    // #PMW17.00.00.04:T502 02.10.13 DEMSR.KHS
    //   Add Key Group PM in Keys:
    //     Code,"Tool Mfg. Dimension No."
    //     Code,"Insert Mfg. Dimension No."

    Caption = 'Manufacturing Dimension Value';

    fields
    {
        field(1; "Manufacturing Dimension Code"; Code[20])
        {
            Caption = 'Manufacturing Dimension Code';
            NotBlank = true;
            TableRelation = "Manufacturing Dimension";
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; Priority; Integer)
        {
            Caption = 'Priority';
            MinValue = 1;
        }
        field(10; "Item Mfg. Dimension No."; Integer)
        {
            Caption = 'Item Mfg. Dimension No.';
        }
        field(11; "Work Center Mfg. Dimension No."; Integer)
        {
            Caption = 'Work Center Mfg. Dimension No.';
        }
        field(12; "Prod. Order Line Mfg. Dim. No."; Integer)
        {
            Caption = 'Prod. Order Line Mfg. Dim. No.';
        }
        field(13; "Item Variant Mfg. Dim. No."; Integer)
        {
            Caption = 'Item Variant Mfg. Dimension No.';
            Description = '#PXW18.00.01:T103';
        }
        field(5012400; "Tool Mfg. Dimension No."; Integer)
        {
            Caption = 'Tool Mfg. Dimension No.';
        }
        field(5012401; "Insert Mfg. Dimension No."; Integer)
        {
            Caption = 'Insert Mfg. Dimension No.';
        }
    }

    keys
    {
        key(Key1; "Manufacturing Dimension Code", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Manufacturing Dimension Code", Priority)
        {
        }
        key(Key3; "Code", "Item Mfg. Dimension No.")
        {
        }
        key(Key4; "Code", "Work Center Mfg. Dimension No.")
        {
        }
        key(Key5; "Code", "Prod. Order Line Mfg. Dim. No.")
        {
        }
        key(Key6; "Code", "Tool Mfg. Dimension No.")
        {
        }
        key(Key7; "Code", "Insert Mfg. Dimension No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Name)
        {
        }
    }
}

