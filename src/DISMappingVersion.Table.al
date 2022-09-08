table 5100954 "DIS - Mapping Version"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Version';
    DataPerCompany = false;

    fields
    {
        field(1; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(2; "No."; Integer)
        {
            BlankZero = true;
            Caption = 'Version No.';
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
            NotBlank = true;
        }
        field(30; "Date Valid From"; Date)
        {
            Caption = 'Valid from';
        }
        field(47; "Conversion Code"; Code[20])
        {
            Caption = 'Conversion Code';
            TableRelation = "DIS - Conversion Header";
        }
        field(120; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released';
            OptionMembers = Open,Released;
        }
        field(150; "Status Changed Date"; DateTime)
        {
            Caption = 'Status Changed Date';
            Editable = false;
        }
        field(151; "Status Changed By"; Code[50])
        {
            Caption = 'Status Changed By';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(1000; "Item Tracking Repository Code"; Code[20])
        {
            Caption = 'Item Tracking Repository Code';
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("No."));
        }
        field(1050; "XML Root Node Name"; Text[80])
        {
            Caption = 'XML Repository Root Node Name';
        }
    }

    keys
    {
        key(Key1; "Mapping Code", "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

