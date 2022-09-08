table 5138380 "Exp Atlas Goods Templ ItemLink"
{
    Caption = 'Atlas Goods Templ Item Link';

    fields
    {
        field(1; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            NotBlank = true;
            TableRelation = IF ("Source Type" = CONST (27)) Item;
        }
        field(10; "Goods Template"; Code[20])
        {
            Caption = 'Goods Template';
            TableRelation = "Exp Atlas Goods Template";
        }
        field(1000; "Item Description"; Text[30])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Source No.")));
            Caption = 'Item Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source No.")
        {
            Clustered = true;
        }
        key(Key2; "Goods Template")
        {
        }
    }

    fieldgroups
    {
    }
}

