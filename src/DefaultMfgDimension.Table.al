table 5012711 "Default Mfg. Dimension"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.01:T103 11.06.15 DEMSR.IST
    //   Mfg. Dimensions for Item Variants
    // 
    // :PMW16.00:167:1
    //   Handle work center types Tool and Insert

    Caption = 'Default Mfg. Dimension';

    fields
    {
        field(1; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(3; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
            NotBlank = true;
        }
        field(4; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(5; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(6; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(7; "Mfg. Dimension Code"; Code[20])
        {
            Caption = 'Mfg. Dimension Code';
            NotBlank = true;
            TableRelation = IF ("Source Type" = CONST (27)) "Manufacturing Dimension".Code WHERE ("Fixed Field Allocation" = CONST (" "))
            ELSE
            "Manufacturing Dimension".Code;
        }
        field(8; "Mfg. Dimension Value Code"; Code[20])
        {
            Caption = 'Mfg. Dimension Value Code';
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Manufacturing Dimension Code" = FIELD ("Mfg. Dimension Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Mfg. Dimension Name"; Text[30])
        {
            CalcFormula = Lookup ("Manufacturing Dimension".Name WHERE (Code = FIELD ("Mfg. Dimension Code")));
            Caption = 'Mfg. Dimension Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Mfg. Dimension Value Name"; Text[50])
        {
            CalcFormula = Lookup ("Manufacturing Dimension Value".Name WHERE ("Manufacturing Dimension Code" = FIELD ("Mfg. Dimension Code"),
                                                                             Code = FIELD ("Mfg. Dimension Value Code")));
            Caption = 'Mfg. Dimension Value Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.", "Mfg. Dimension Code")
        {
            Clustered = true;
        }
        key(Key2; "Mfg. Dimension Code", "Mfg. Dimension Value Code")
        {
        }
    }

    fieldgroups
    {
    }
}

