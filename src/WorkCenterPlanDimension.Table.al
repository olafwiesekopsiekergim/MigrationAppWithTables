table 5012715 "Work Center Plan. Dimension"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Work Center Plan. Dimension';
    DataCaptionFields = "Work Center No.", "Mfg. Dimension Code", "Mfg. Dimension Name";

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
        field(3; "Mfg. Dimension Name"; Text[30])
        {
            CalcFormula = Lookup ("Manufacturing Dimension".Name WHERE (Code = FIELD ("Mfg. Dimension Code")));
            Caption = 'Mfg. Dimension Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; Priority; Integer)
        {
            Caption = 'Priority';
            MinValue = 1;
        }
        field(5; "Value Prioritization"; Option)
        {
            Caption = 'Value Prioritization';
            OptionCaption = 'Priority,Value Ascending,Value Descending';
            OptionMembers = Priority,"Value Ascending","Value Descending";
        }
    }

    keys
    {
        key(Key1; "Work Center No.", "Mfg. Dimension Code")
        {
            Clustered = true;
        }
        key(Key2; "Work Center No.", Priority)
        {
        }
    }

    fieldgroups
    {
    }
}

