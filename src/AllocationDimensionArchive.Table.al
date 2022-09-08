table 5000064 "Allocation Dimension Archive"
{
    Caption = 'Allocation Dimension Archive';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = IF ("Table ID" = CONST (5000076)) "Allocation Line"."Line No."
            ELSE
            IF ("Table ID" = CONST (5000077)) "Allocation Assignment"."Line No.";
        }
        field(3; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(4; "Dimension Value Code"; Code[20])
        {
            Caption = 'Dimension Value Code';
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
        }
        field(5; "Value Posting"; Option)
        {
            Caption = 'Value Posting';
            OptionCaption = ' ,Code Mandatory,Same Code,No Code';
            OptionMembers = " ","Code Mandatory","Same Code","No Code";
        }
        field(6; "Table Name"; Text[250])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    ID = FIELD ("Table ID")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Multi Selection Action"; Option)
        {
            Caption = 'Multi Selection Action';
            OptionCaption = ' ,Change,Delete';
            OptionMembers = " ",Change,Delete;
        }
        field(8; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            TableRelation = "Allocation Header";
        }
        field(9; "Allocation Line No."; Integer)
        {
            Caption = 'Allocation Line No.';
        }
        field(10; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Allocation Header Code", "Allocation Line No.", "Line No.", "Dimension Code", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

