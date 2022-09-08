table 5034623 "Color Code"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management - Object created
    // 
    // #QMW17.10.00.02:T100 24.01.14 DEMSR.KHS
    //   Re-add Color Codes:
    //     Add new fields: "Color Name", Bold
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW17.10.01:T511 16.10.14 DEMSR.KHS
    //   Set Color Name to yellow for con

    Caption = 'Color Code';

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
        field(3; "RGB Value"; Integer)
        {
            Caption = 'RGB Value';
            MinValue = 0;
        }
        field(190; "Color Name"; Option)
        {
            Caption = 'Color Name';
            OptionCaption = ' ,black,blue,red,green,yellow';
            OptionMembers = " ",black,blue,red,green,yellow;
        }
        field(200; Bold; Boolean)
        {
            Caption = 'Bold';
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

