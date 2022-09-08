table 5012535 "Trading Unit Item Field"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:90:1
    //   # Object created.
    // 
    // :PMW14.02.01:57:1
    //   # New field 4 "Consider Quantity"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // #PMW17.10.00.02:T106 12.05.14 DEMSR.LV
    //   Copy Trading Units per Item and be able to skip fields
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Trading Unit Item Field';

    fields
    {
        field(1; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Field No.';
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = CONST (27));
        }
        field(2; "Field Caption"; Text[100])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = CONST (27),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; Adjust; Boolean)
        {
            Caption = 'Adjust';
        }
        field(4; "Consider Quantity"; Boolean)
        {
            Caption = 'Consider Quantity';
        }
        field(5; Skip; Boolean)
        {
            Caption = 'Skip';
            Description = '#PMW17.10.00.02:T106';
        }
    }

    keys
    {
        key(Key1; "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

