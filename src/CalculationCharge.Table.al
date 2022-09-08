table 5012654 "Calculation Charge"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Calculation Charge';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Absolute,Percent';
            OptionMembers = " ",Absolute,Percent;
        }
        field(5; Rate; Decimal)
        {
            BlankZero = true;
            Caption = 'Rate';
            DecimalPlaces = 0 : 5;
        }
        field(6; "Type of Reference Value"; Option)
        {
            Caption = 'Type of Reference Value';
            OptionCaption = ' ,Basic Value,Reduced Basic Value';
            OptionMembers = " ","Basic Value","Reduced Basic Value";
        }
    }

    keys
    {
        key(Key1; "Code", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

