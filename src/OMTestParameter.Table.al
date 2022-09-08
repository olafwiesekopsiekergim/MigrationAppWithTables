table 11102090 "OM - Test Parameter"
{
    Caption = 'Test Parameter';
    DataPerCompany = false;

    fields
    {
        field(1; "Test Type"; Option)
        {
            Caption = 'Test Type';
            OptionCaption = 'Group,Project';
            OptionMembers = Group,Project;
        }
        field(2; "Test No."; Code[20])
        {
            Caption = 'Test No.';
            TableRelation = "OM - Test"."No." WHERE (Type = FIELD ("Test Type"));
        }
        field(3; "Test Line No."; Integer)
        {
            Caption = 'Test Line No.';
            TableRelation = "OM - Test"."Line No." WHERE (Type = FIELD ("Test Type"),
                                                          "No." = FIELD ("Test No."));
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Input,Output';
            OptionMembers = Input,Output;
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(6; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(7; Value; Text[250])
        {
            Caption = 'Value';
        }
        field(8; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
    }

    keys
    {
        key(Key1; "Test Type", "Test No.", "Test Line No.", Type, "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Transport No.")
        {
        }
    }

    fieldgroups
    {
    }
}

