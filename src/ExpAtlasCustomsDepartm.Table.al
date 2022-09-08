table 5138356 "Exp Atlas Customs Departm."
{
    Caption = 'Atlas Customs Department';

    fields
    {
        field(1; "Department No."; Code[8])
        {
            Caption = 'Department No.';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Binnenzollstelle,Grenzzollstelle';
            OptionMembers = Binnenzollstelle,Grenzzollstelle;
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Customer Relation"; Code[20])
        {
            Caption = 'Customer Relation';
            TableRelation = Customer;
        }
    }

    keys
    {
        key(Key1; "Department No.")
        {
            Clustered = true;
        }
        key(Key2; Type)
        {
        }
    }

    fieldgroups
    {
    }
}

