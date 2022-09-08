table 5012717 "Mfg. Dimension Search Detail"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Mfg. Dimension Search Detail';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(2; "Mfg. Dimension Code"; Code[20])
        {
            Caption = 'Mfg. Dimension Code';
            TableRelation = "Manufacturing Dimension".Code WHERE ("Fixed Field Allocation" = CONST (" "));
        }
        field(3; "Mfg. Dimension Name"; Text[30])
        {
            CalcFormula = Lookup ("Manufacturing Dimension".Name WHERE (Code = FIELD ("Mfg. Dimension Code")));
            Caption = 'Mfg. Dimension Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Mfg. Dimension Value Filter"; Code[20])
        {
            Caption = 'Mfg. Dimension Value Filter';
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Manufacturing Dimension Code" = FIELD ("Mfg. Dimension Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Number of Records"; Integer)
        {
            Caption = 'Number of Records';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Number of Records")
        {
        }
    }

    fieldgroups
    {
    }
}

