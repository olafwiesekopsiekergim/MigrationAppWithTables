table 5086 "Cont. Duplicate Search String"
{
    Caption = 'Cont. Duplicate Search String';

    fields
    {
        field(1; "Contact Company No."; Code[20])
        {
            Caption = 'Contact Company No.';
            NotBlank = true;
            TableRelation = Contact WHERE (Type = CONST (Company));
        }
        field(2; "Field"; Option)
        {
            Caption = 'Field';
            OptionCaption = 'Name,Name 2,Address,Address 2,Post Code,City,Phone No.,VAT Registration No.';
            OptionMembers = Name,"Name 2",Address,"Address 2","Post Code",City,"Phone No.","VAT Registration No.";
        }
        field(3; "Part of Field"; Option)
        {
            Caption = 'Part of Field';
            OptionCaption = 'First,Last';
            OptionMembers = First,Last;
        }
        field(4; "Search String"; Text[10])
        {
            Caption = 'Search String';
        }
    }

    keys
    {
        key(Key1; "Contact Company No.", "Field", "Part of Field")
        {
            Clustered = true;
        }
        key(Key2; "Field", "Part of Field", "Search String")
        {
        }
    }

    fieldgroups
    {
    }
}

