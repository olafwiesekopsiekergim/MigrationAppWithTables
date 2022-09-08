table 5904 "Service Item Group"
{
    Caption = 'Service Item Group';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Create Service Item"; Boolean)
        {
            Caption = 'Create Service Item';
        }
        field(4; "Default Contract Discount %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Default Contract Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5; "Default Serv. Price Group Code"; Code[10])
        {
            Caption = 'Default Serv. Price Group Code';
            TableRelation = "Service Price Group";
        }
        field(6; "Default Response Time (Hours)"; Decimal)
        {
            Caption = 'Default Response Time (Hours)';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; Description)
        {
        }
    }

    fieldgroups
    {
    }
}

