table 5956 "Resource Skill"
{
    Caption = 'Resource Skill';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Resource,Service Item Group,Item,Service Item';
            OptionMembers = Resource,"Service Item Group",Item,"Service Item";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = IF (Type = CONST (Resource)) Resource."No."
            ELSE
            IF (Type = CONST ("Service Item Group")) "Service Item Group".Code
            ELSE
            IF (Type = CONST (Item)) Item."No."
            ELSE
            IF (Type = CONST ("Service Item")) "Service Item"."No.";
        }
        field(3; "Skill Code"; Code[10])
        {
            Caption = 'Skill Code';
            NotBlank = true;
            TableRelation = "Skill Code";
        }
        field(4; "Assigned From"; Option)
        {
            Caption = 'Assigned From';
            OptionCaption = ' ,Service Item Group,Item';
            OptionMembers = " ","Service Item Group",Item;
        }
        field(5; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Service Item Group,Item';
            OptionMembers = " ","Service Item Group",Item;
        }
        field(6; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Skill Code")
        {
            Clustered = true;
        }
        key(Key2; "Skill Code", Type, "No.")
        {
        }
        key(Key3; "Assigned From")
        {
        }
        key(Key4; "Source Type", "Source Code")
        {
        }
        key(Key5; "Assigned From", "Source Type", "Source Code")
        {
        }
    }

    fieldgroups
    {
    }
}

