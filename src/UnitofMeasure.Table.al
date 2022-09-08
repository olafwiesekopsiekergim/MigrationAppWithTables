table 204 "Unit of Measure"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Key:
    //                                     - Duration Format
    // :PMW14.02:90:1
    //   # New field 5012400 "Item Extension"

    Caption = 'Unit of Measure';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[10])
        {
            Caption = 'Description';
        }
        field(3; "International Standard Code"; Code[10])
        {
            Caption = 'International Standard Code';
        }
        field(5000200; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(5012400; "Item Extension"; Code[20])
        {
            Caption = 'Item Extension';
            Description = ':PMW14.02:90:1';
        }
        field(5292750; "Duration Format"; Option)
        {
            Caption = 'Duration Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
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
        key(Key3; "Duration Format")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "Code", Description, "International Standard Code")
        {
        }
    }
}

