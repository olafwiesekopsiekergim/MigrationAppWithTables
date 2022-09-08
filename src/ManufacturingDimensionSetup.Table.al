table 5012708 "Manufacturing Dimension Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.01:T103 10.06.2015 DEMSR.IST
    //   Option of Field Type expanded with Item Variant
    // 
    // :PMW16.00:167:1
    //   Option of Field Type expanded with Tool and Insert

    Caption = 'Manufacturing Dimension Setup';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Item,Work Center,Tool,Insert,Prod. Order Line,Item Variant';
            OptionMembers = Item,"Work Center",Tool,Insert,"Prod. Order Line","Item Variant";
        }
        field(2; "Global Mfg. Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Mfg. Dimension 1 Code';
            Editable = false;
            TableRelation = "Manufacturing Dimension";
        }
        field(3; "Global Mfg. Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Mfg. Dimension 2 Code';
            Editable = false;
            TableRelation = "Manufacturing Dimension";
        }
        field(4; "Shortcut Mfg. Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Editable = false;
            TableRelation = "Manufacturing Dimension";
        }
        field(5; "Shortcut Mfg. Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Editable = false;
            TableRelation = "Manufacturing Dimension";
        }
        field(6; "Shortcut Mfg. Dimension 3 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 3 Code';
            TableRelation = "Manufacturing Dimension";
        }
        field(7; "Shortcut Mfg. Dimension 4 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 4 Code';
            TableRelation = "Manufacturing Dimension";
        }
        field(8; "Shortcut Mfg. Dimension 5 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 5 Code';
            TableRelation = "Manufacturing Dimension";
        }
        field(9; "Shortcut Mfg. Dimension 6 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 6 Code';
            TableRelation = "Manufacturing Dimension";
        }
        field(10; "Shortcut Mfg. Dimension 7 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 7 Code';
            TableRelation = "Manufacturing Dimension";
        }
        field(11; "Shortcut Mfg. Dimension 8 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 8 Code';
            TableRelation = "Manufacturing Dimension";
        }
        field(20; Priority; Integer)
        {
            BlankZero = true;
            Caption = 'Priority';
            MinValue = 1;
        }
    }

    keys
    {
        key(Key1; Type)
        {
            Clustered = true;
        }
        key(Key2; Priority)
        {
        }
    }

    fieldgroups
    {
    }
}

