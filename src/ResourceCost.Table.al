table 202 "Resource Cost"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                       Key Update:
    //                                       - "Starting Date" added to primary key

    Caption = 'Resource Cost';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Resource,Group(Resource),All';
            OptionMembers = Resource,"Group(Resource)",All;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST ("Group(Resource)")) "Resource Group";
        }
        field(3; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(4; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            OptionCaption = 'Fixed,% Extra,LCY Extra';
            OptionMembers = "Fixed","% Extra","LCY Extra";
        }
        field(5; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
        }
        field(6; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(5292332; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Work Type Code", "Starting Date")
        {
            Clustered = true;
        }
        key(Key2; "Cost Type", "Code", "Work Type Code")
        {
        }
    }

    fieldgroups
    {
    }
}

