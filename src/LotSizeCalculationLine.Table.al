table 5012660 "Lot Size Calculation Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Lot Size Calculation Line';
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
        field(3; "Lot Size"; Decimal)
        {
            BlankZero = true;
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
            NotBlank = true;
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Lot Size Calculation No."; Code[20])
        {
            Caption = 'Lot Size Calculation No.';
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
        key(Key1; "Calculation No.", "Line No.", "Lot Size")
        {
            Clustered = true;
        }
        key(Key2; "Lot Size Calculation No.")
        {
        }
    }

    fieldgroups
    {
    }
}

