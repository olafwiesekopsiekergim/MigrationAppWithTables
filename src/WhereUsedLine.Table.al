table 99000790 "Where-Used Line"
{
    // :DMW13.71:1:01 #neues Feld für Artikelverwendung in Masterstücklisten
    //  # Checklisttype in BOM-Type umbenannt

    Caption = 'Where-Used Line';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(4; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(6; "Quantity Needed"; Decimal)
        {
            Caption = 'Quantity Needed';
            DecimalPlaces = 0 : 5;
        }
        field(7; "Level Code"; Integer)
        {
            Caption = 'Level Code';
        }
        field(8; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header";
        }
        field(5013400; "BOM Type"; Code[20])
        {
            Caption = 'BOM Type';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

