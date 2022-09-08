table 5012716 "Work Center Plan. Dim. Value"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW16.00.01:103 20.10.09 DEMSR.IST
    //   New key Priority
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Work Center Plan. Dim. Value';

    fields
    {
        field(1; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            NotBlank = true;
            TableRelation = "Work Center"."No." WHERE ("Work Center Type" = CONST ("Sequence Planning"));
        }
        field(2; "Mfg. Dimension Code"; Code[20])
        {
            Caption = 'Mfg. Dimension Code';
            NotBlank = true;
            TableRelation = "Manufacturing Dimension".Code;
        }
        field(3; "Mfg. Dimension Value Code"; Code[20])
        {
            Caption = 'Mfg. Dimension Value Code';
            NotBlank = true;
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Manufacturing Dimension Code" = FIELD ("Mfg. Dimension Code"));
        }
        field(4; "Mfg. Dimension Value Name"; Text[50])
        {
            CalcFormula = Lookup ("Manufacturing Dimension Value".Name WHERE ("Manufacturing Dimension Code" = FIELD ("Mfg. Dimension Code"),
                                                                             Code = FIELD ("Mfg. Dimension Value Code")));
            Caption = 'Mfg. Dimension Value Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Priority; Integer)
        {
            Caption = 'Priority';
            MinValue = 1;
        }
    }

    keys
    {
        key(Key1; "Work Center No.", "Mfg. Dimension Code", "Mfg. Dimension Value Code")
        {
            Clustered = true;
        }
        key(Key2; "Work Center No.", "Mfg. Dimension Code", Priority)
        {
        }
        key(Key3; Priority)
        {
        }
    }

    fieldgroups
    {
    }
}

