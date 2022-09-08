table 5060614 "Text Module Print Management"
{
    // Copyright (Exclusive Rights): Cosmo Consult Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW17.10.01:T100 12.09.14 DEMSR.SSZ
    //   #Created Table

    Caption = 'Text Module - Print Management';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(1000; "Lines of Text"; Integer)
        {
            Caption = 'Lines of Text';
            Description = 'Only for temporary use';
            Editable = false;
        }
        field(1010; "Sum of Object IDs"; Integer)
        {
            Caption = 'Sum of Object IDs';
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

