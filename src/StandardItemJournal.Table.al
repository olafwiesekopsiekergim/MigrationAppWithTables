table 752 "Standard Item Journal"
{
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module

    Caption = 'Standard Item Journal';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            Editable = false;
            NotBlank = true;
            TableRelation = "Item Journal Template";
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
        key(Key1; "Journal Template Name", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

