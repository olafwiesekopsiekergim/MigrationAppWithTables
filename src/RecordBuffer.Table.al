table 6529 "Record Buffer"
{
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."

    Caption = 'Record Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(4; "Table Name"; Text[250])
        {
            Caption = 'Table Name';
            Editable = false;
        }
        field(5; "Record Identifier"; RecordID)
        {
            Caption = 'Record Identifier';
            Editable = false;
        }
        field(6; "Search Record ID"; Code[100])
        {
            Caption = 'Search Record ID';
            Editable = false;
        }
        field(7; "Primary Key"; Text[250])
        {
            Caption = 'Primary Key';
            Editable = false;
        }
        field(8; "Primary Key Field 1 No."; Integer)
        {
            Caption = 'Primary Key Field 1 No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(9; "Primary Key Field 1 Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Primary Key Field 1 No.")));
            Caption = 'Primary Key Field 1 Name';
            FieldClass = FlowField;
        }
        field(10; "Primary Key Field 1 Value"; Text[50])
        {
            Caption = 'Primary Key Field 1 Value';
        }
        field(11; "Primary Key Field 2 No."; Integer)
        {
            Caption = 'Primary Key Field 2 No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(12; "Primary Key Field 2 Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Primary Key Field 2 No.")));
            Caption = 'Primary Key Field 2 Name';
            FieldClass = FlowField;
        }
        field(13; "Primary Key Field 2 Value"; Text[50])
        {
            Caption = 'Primary Key Field 2 Value';
        }
        field(14; "Primary Key Field 3 No."; Integer)
        {
            Caption = 'Primary Key Field 3 No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(15; "Primary Key Field 3 Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Primary Key Field 3 No.")));
            Caption = 'Primary Key Field 3 Name';
            FieldClass = FlowField;
        }
        field(16; "Primary Key Field 3 Value"; Text[50])
        {
            Caption = 'Primary Key Field 3 Value';
        }
        field(17; Level; Integer)
        {
            Caption = 'Level';
        }
        field(20; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(21; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(22; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(23; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "Search Record ID")
        {
        }
        key(Key3; "Search Record ID")
        {
        }
    }

    fieldgroups
    {
    }
}

