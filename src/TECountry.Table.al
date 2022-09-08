table 5050261 "TE-Country"
{
    Caption = 'TE-Country';
    DataCaptionFields = "Code";

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Country; Text[70])
        {
            Caption = 'Country';
            Editable = true;
        }
        field(3; Description; Text[70])
        {
            Caption = 'Description';
        }
        field(4; Abroad; Boolean)
        {
            Caption = 'Abroad';
        }
        field(5; Show; Boolean)
        {
            Caption = 'Show';
        }
        field(6; "Valid Until"; Date)
        {
            Caption = 'Valid Until';
        }
        field(10; "Country Type"; Option)
        {
            Caption = 'Country Type';
            OptionCaption = ' ,Inland,Third Country,EU';
            OptionMembers = " ",Inland,Drittland,EU;
        }
        field(11; "Business Posting Group"; Code[10])
        {
            Caption = 'Business Posting Group';
        }
        field(12; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
        }
        field(13; "Change on Update"; Boolean)
        {
            Caption = 'Change on Update';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; Country)
        {
        }
        key(Key3; Description)
        {
        }
        key(Key4; Abroad, "Code", Description)
        {
        }
        key(Key5; Show, "Code")
        {
        }
    }

    fieldgroups
    {
    }
}

