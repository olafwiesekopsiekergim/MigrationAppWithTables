table 5012653 "Calculation Group"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Calculation Group';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Item,Capacity';
            OptionMembers = Item,Capacity;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Type, "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

