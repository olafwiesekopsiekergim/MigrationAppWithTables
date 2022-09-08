table 201 "Resource Price"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                           New field added to Primary Key
    //                                           - Starting Date

    Caption = 'Resource Price';

    fields
    {
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Resource,Group(Resource),All';
            OptionMembers = Resource,"Group(Resource)",All;
        }
        field(3; "Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST ("Group(Resource)")) "Resource Group";
        }
        field(4; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(5; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(6; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(5292332; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Work Type Code", "Currency Code", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

