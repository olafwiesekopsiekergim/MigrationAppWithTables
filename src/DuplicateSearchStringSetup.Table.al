table 5095 "Duplicate Search String Setup"
{
    Caption = 'Duplicate Search String Setup';

    fields
    {
        field(1; "Field"; Option)
        {
            Caption = 'Field';
            OptionCaption = 'Name,Name 2,Address,Address 2,Post Code,City,Phone No.,VAT Registration No.';
            OptionMembers = Name,"Name 2",Address,"Address 2","Post Code",City,"Phone No.","VAT Registration No.";
        }
        field(2; "Part of Field"; Option)
        {
            Caption = 'Part of Field';
            OptionCaption = 'First,Last';
            OptionMembers = First,Last;
        }
        field(3; Length; Integer)
        {
            Caption = 'Length';
            InitValue = 5;
            MaxValue = 10;
            MinValue = 2;
        }
    }

    keys
    {
        key(Key1; "Field", "Part of Field")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

