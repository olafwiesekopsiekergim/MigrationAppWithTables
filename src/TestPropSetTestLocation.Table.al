table 5034581 "Test Prop. Set Test Location"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Single Primary Key fields removed from TableRelation
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Property Set Test Loc.';
    PasteIsValid = false;

    fields
    {
        field(1; "Test Property Set Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            Editable = false;
            TableRelation = "Test Property Set";
        }
        field(2; "Test Property Set Line No."; Integer)
        {
            Caption = 'Test Property Set Line No.';
        }
        field(3; "Test Location Code"; Code[10])
        {
            Caption = 'Test Location Code';
            NotBlank = true;
            TableRelation = "Test Location";
        }
        field(4; Costs; Decimal)
        {
            Caption = 'Costs';
        }
        field(5; Standard; Boolean)
        {
            Caption = 'Standard';
        }
        field(6; "Test Location Name"; Text[30])
        {
            CalcFormula = Lookup ("Test Location".Name WHERE (Code = FIELD ("Test Location Code")));
            Caption = 'Test Location Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Test Property Set Code", "Test Property Set Line No.", "Test Location Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

