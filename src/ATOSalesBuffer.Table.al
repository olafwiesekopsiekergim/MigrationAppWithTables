table 915 "ATO Sales Buffer"
{
    Caption = 'ATO Sales Buffer';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ',Sale,Total Sale,Assembly,Total Assembly';
            OptionMembers = ,Sale,"Total Sale",Assembly,"Total Assembly";
        }
        field(2; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(4; "Parent Item No."; Code[20])
        {
            Caption = 'Parent Item No.';
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(6; "Sales Cost"; Decimal)
        {
            Caption = 'Sales Cost';
        }
        field(7; "Sales Amount"; Decimal)
        {
            Caption = 'Sales Amount';
        }
        field(8; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
        }
        field(9; "Parent Description"; Text[50])
        {
            Caption = 'Parent Description';
        }
    }

    keys
    {
        key(Key1; Type, "Order No.", "Item No.", "Parent Item No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", Type, "Parent Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}

