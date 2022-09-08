table 5171659 "Scan Instruction"
{
    Caption = 'Scan Instruction';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Item,Customer,Vendor,DocumentLine';
            OptionMembers = Item,Customer,Vendor,DocumentLine;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(10; "Text 1"; Text[50])
        {
            Caption = 'Text 1';
        }
        field(20; "Text 2"; Text[50])
        {
            Caption = 'Text 2';
        }
        field(30; "Text 3"; Text[50])
        {
            Caption = 'Text 3';
        }
        field(40; "Text 4"; Text[50])
        {
            Caption = 'Text 4';
        }
        field(50; "Show Message"; Option)
        {
            Caption = 'Show Message';
            OptionMembers = " ","only Shipment","only Receipt";
        }
        field(100; Beeper; Boolean)
        {
            Caption = 'Beeper';
        }
    }

    keys
    {
        key(Key1; Type, "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

