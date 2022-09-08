table 5012411 "Personnel Need Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Personnel Need Line';

    fields
    {
        field(1; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            NotBlank = true;
            TableRelation = "Work Center" WHERE ("Work Center Type" = FILTER (<> Tool));
        }
        field(2; "Work Center Name"; Text[30])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Work Center No.")));
            Caption = 'Work Center Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Tool No."; Code[20])
        {
            Caption = 'Tool No.';
            TableRelation = "Work Center" WHERE ("Work Center Type" = CONST (Tool));
        }
        field(4; "Tool Name"; Text[30])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Tool No.")));
            Caption = 'Tool Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Setup Factor"; Decimal)
        {
            BlankZero = true;
            Caption = 'Setup Factor';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(6; "Run Factor"; Decimal)
        {
            BlankZero = true;
            Caption = 'Run Factor';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Work Center No.", "Tool No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

