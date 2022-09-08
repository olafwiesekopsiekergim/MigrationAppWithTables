table 5292361 "PR - Job Component"
{
    Caption = 'Job Component';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(1000; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,Service,Item,General,Traveling';
            OptionCaption = ' ,Service,Item,General,Traveling';
            OptionMembers = " ",Service,Item,General,Traveling;
        }
        field(1001; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST (Service)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Traveling)) Resource
            ELSE
            IF (Type = CONST (General)) "PR - General Component";
        }
        field(1010; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(1020; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

