table 1012 "Job Resource Price"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     Increased Key:
    //                                     - Job No.,Job Task No.,Type,Code,Work Type Code,Currency Code + ,Starting Date

    Caption = 'Job Resource Price';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            NotBlank = true;
            TableRelation = Job;
        }
        field(2; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Resource,Group(Resource),All';
            OptionMembers = Resource,"Group(Resource)",All;
        }
        field(4; "Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST ("Group(Resource)")) "Resource Group";
        }
        field(5; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(6; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(7; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(8; "Unit Cost Factor"; Decimal)
        {
            Caption = 'Unit Cost Factor';
        }
        field(9; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(11; "Apply Job Price"; Boolean)
        {
            Caption = 'Apply Job Price';
            InitValue = true;
        }
        field(12; "Apply Job Discount"; Boolean)
        {
            Caption = 'Apply Job Discount';
            InitValue = true;
        }
        field(5292332; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
    }

    keys
    {
        key(Key1; "Job No.", "Job Task No.", Type, "Code", "Work Type Code", "Currency Code", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

