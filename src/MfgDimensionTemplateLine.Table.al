table 5012714 "Mfg. Dimension Template Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Mfg. Dimension Template Line';

    fields
    {
        field(1; "Mfg. Dimension Template Code"; Code[10])
        {
            Caption = 'Mfg. Dimension Template Code';
            NotBlank = true;
            TableRelation = "Mfg. Dimension Template".Code;
        }
        field(2; "Mfg. Dimension Code"; Code[20])
        {
            Caption = 'Mfg. Dimension Code';
            NotBlank = true;
            TableRelation = "Manufacturing Dimension".Code WHERE ("Fixed Field Allocation" = CONST (" "));
        }
        field(3; "Mfg. Dimension Name"; Text[30])
        {
            CalcFormula = Lookup ("Manufacturing Dimension".Name WHERE (Code = FIELD ("Mfg. Dimension Code")));
            Caption = 'Mfg. Dimension Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Mfg. Dimension Template Code", "Mfg. Dimension Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

