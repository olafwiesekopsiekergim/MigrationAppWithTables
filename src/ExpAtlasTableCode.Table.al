table 5138365 "Exp Atlas Table Code"
{
    Caption = 'Atlas Table Code';

    fields
    {
        field(1; "Table Code"; Code[10])
        {
            Caption = 'Table Code';
            TableRelation = "Exp Atlas Table Reference";
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(3; Qualifier; Text[10])
        {
            Caption = 'Qualifier';
        }
        field(5; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(6; "Description 2"; Text[250])
        {
            Caption = 'Description 2';
        }
        field(10; "Code Textvalue"; Text[10])
        {
            Caption = 'Code Textvalue';
        }
        field(11; "Navision Code"; Code[200])
        {
            Caption = 'Navision Code';
            Description = 'Relation zu Navision Table';
        }
        field(100; Version; Text[30])
        {
            Caption = 'Version';
            Description = 'version des Updates';
        }
        field(101; "last update"; DateTime)
        {
            Caption = 'last update';
            Editable = false;
        }
        field(102; "valid from"; DateTime)
        {
            Caption = 'valid from';
            Editable = false;
        }
        field(103; "valid to"; DateTime)
        {
            Caption = 'valid to ';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Table Code", "Code", Qualifier)
        {
            Clustered = true;
        }
        key(Key2; "Navision Code")
        {
        }
        key(Key3; "Code")
        {
        }
        key(Key4; Qualifier)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Qualifier, Description)
        {
        }
    }
}

