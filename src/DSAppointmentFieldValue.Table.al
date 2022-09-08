table 2087642 "DS Appointment Field Value"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            TableRelation = "DS Appointment"."Entry No.";
        }
        field(2; "Line No."; Integer)
        {
        }
        field(10; "Field Code"; Code[100])
        {
        }
        field(11; "Field Type"; Option)
        {
            OptionMembers = " ",Text,Number,Boolean,Date,DateTime,Select;
        }
        field(12; "Field Value"; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

