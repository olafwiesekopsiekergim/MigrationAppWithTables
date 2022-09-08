table 5012712 "Mfg. Dimension Translation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Mfg. Dimension Translation';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Manufacturing Dimension";
        }
        field(2; "Language ID"; Integer)
        {
            Caption = 'Language ID';
            NotBlank = true;
            TableRelation = "Windows Language";
        }
        field(3; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(4; "Code Caption"; Text[30])
        {
            Caption = 'Code Caption';
        }
        field(5; "Filter Caption"; Text[30])
        {
            Caption = 'Filter Caption';
        }
        field(6; "Language Name"; Text[30])
        {
            CalcFormula = Lookup ("Windows Language".Name WHERE ("Language ID" = FIELD ("Language ID")));
            Caption = 'Language Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code", "Language ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

