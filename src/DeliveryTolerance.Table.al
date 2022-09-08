table 5012530 "Delivery Tolerance"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.00:2473:1
    //   # Object created.
    // 
    // :PMW14.02.01:105:1
    //   # New field 8 "Calculate New Price"
    // 
    // #PMW17.10.00.02:T105 04.30.2014 DEMSR.LV
    //   Change Calculate New Price Field-Type from boolean to option
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Delivery Tolerance';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Overdelivery Tolerance %"; Decimal)
        {
            Caption = 'Overdelivery Tolerance %';
            DecimalPlaces = 0 : 2;
            MinValue = 0;
        }
        field(4; "Overdelivery Relational Qty."; Option)
        {
            Caption = 'Oberdelivery Relational Quantity';
            OptionCaption = 'Quantity,Outstanding Quantity';
            OptionMembers = Quantity,"Outstanding Quantity";
        }
        field(5; "Underdelivery Tolerance %"; Decimal)
        {
            Caption = 'Underdelivery Tolerance %';
            DecimalPlaces = 0 : 2;
            MinValue = 0;
        }
        field(6; "Underdelivery Relational Qty."; Option)
        {
            Caption = 'Underdelivery Relational Qty.';
            OptionCaption = 'Quantity,Outstanding Quantity';
            OptionMembers = Quantity,"Outstanding Quantity";
        }
        field(7; "Change Quantity"; Option)
        {
            Caption = 'Change Quantity';
            OptionCaption = 'Question,Always';
            OptionMembers = Question,Always;
        }
        field(8; "Calculate New Price"; Option)
        {
            Caption = 'Calculate New Price';
            Description = '#PMW17.10.00.02:T105';
            OptionCaption = 'No,On Underdelivery,On Overdelivery,Always';
            OptionMembers = No,"On Underdelivery","On Overdelivery",Always;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

