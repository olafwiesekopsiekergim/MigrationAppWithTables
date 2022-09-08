table 5034561 "Test Plan Test Location"
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

    Caption = 'Test Plan Test Location';
    PasteIsValid = false;

    fields
    {
        field(1; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Test Plan";
        }
        field(2; "Test Plan Version"; Code[20])
        {
            Caption = 'Test Plan Version';
        }
        field(3; "Test Property Set Line No."; Integer)
        {
            Caption = 'Test Property Set Line No.';
            Editable = false;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(5; "Test Location Code"; Code[20])
        {
            Caption = 'Test Location Code';
            NotBlank = true;
            TableRelation = "Test Location";
        }
        field(6; Costs; Decimal)
        {
            Caption = 'Costs';
        }
        field(7; Standard; Boolean)
        {
            Caption = 'Standard';
        }
        field(8; "Test Location Name"; Text[30])
        {
            CalcFormula = Lookup ("Test Location".Name WHERE (Code = FIELD ("Test Location Code")));
            Caption = 'Test Location Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Test Plan No.", "Test Plan Version", "Test Property Set Line No.", "Line No.", "Test Location Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

