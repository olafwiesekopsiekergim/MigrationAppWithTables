table 200 "Work Type"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Key:
    //                                     - Resource Type,Code

    Caption = 'Work Type';

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
        field(3; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(5000200; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(5292332; "Resource Type"; Option)
        {
            Caption = 'Resource Type';
            Description = 'Person,Machine,Service,,Traveling';
            OptionCaption = 'Person,Machine,Service,,Traveling';
            OptionMembers = Person,Machine,Service,,Traveling;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Resource Type", "Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description, "Unit of Measure Code")
        {
        }
    }
}

