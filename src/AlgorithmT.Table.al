table 5056294 "Algorithm/T"
{
    Caption = 'Algorithm';
    DataCaptionFields = "No.", Description;
    Description = 'GrAlgorithm';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(10; "Link 1"; Option)
        {
            Caption = 'Link 1';
            OptionCaption = ' ,plus,minus,divide,multiply';
            OptionMembers = " ",plus,minus,divide,multiply;
        }
        field(11; "Empl. Field/Individual"; Code[20])
        {
            Caption = 'Empl. Field/Individual';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Employee Field"));
        }
        field(12; "Link 2"; Option)
        {
            Caption = 'Link 2';
            OptionCaption = ' ,plus,minus,divide,multiply';
            OptionMembers = " ",plus,minus,divide,multiply;
        }
        field(13; "Constant (Min/Day)"; Decimal)
        {
            Caption = 'Constant (Min/Day)';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

