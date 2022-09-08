table 5012469 "Prod. Structure Calc. Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // CALC:PMW15.00:199:1
    //   # Object created
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation programming rearranged --> #CAW16.00:T100
    // 
    // #CAW16.00:T100 16.09.10 DEMSR.IST
    //   Object re-created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Structure Calc. Line';
    DataCaptionFields = "Calculation No.";

    fields
    {
        field(1; "Calculation No."; Code[20])
        {
            Caption = 'Calculation No.';
            NotBlank = true;
            TableRelation = "Calculation Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "Calculation Line"."Line No." WHERE ("Calculation No." = FIELD ("Calculation No."));
        }
        field(3; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            NotBlank = true;
            TableRelation = "Production Structure Header"."No." WHERE (Status = CONST (Certified),
                                                                       "Production Structure Type" = FILTER ("Manufacturing Structure" | "Bottling Structure"));
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Production Structure Calc. No."; Code[20])
        {
            Caption = 'Production Structure Calc. No.';
            Editable = false;
            TableRelation = "Calculation Header"."No.";
        }
        field(6; "Standard Cost"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Standard Cost';
            Editable = false;
            MinValue = 0;
        }
        field(7; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Unit Price';
            Editable = false;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Calculation No.", "Line No.", "Production Structure No.")
        {
            Clustered = true;
        }
        key(Key2; "Production Structure Calc. No.")
        {
        }
    }

    fieldgroups
    {
    }
}

