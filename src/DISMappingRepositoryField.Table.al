table 5100956 "DIS - Mapping Repository Field"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Repository Field';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Field Name"; Text[250])
        {
            Caption = 'Field Name';
            NotBlank = true;
        }
        field(5; "Field Type"; Text[50])
        {
            Caption = 'Field Type';
        }
        field(10; "Field Description"; Text[250])
        {
            Caption = 'Field Description';
        }
        field(30; "Repository Code"; Code[20])
        {
            Caption = 'Repository Code';
        }
        field(55; "XML Child Type"; Option)
        {
            Caption = 'XML Child Type';
            OptionCaption = 'Text,CData,Line Attribute,Field Attribute';
            OptionMembers = Text,CData,LineAttribute,FieldAttribute;
        }
        field(56; "XML Attribute Field"; Text[250])
        {
            Caption = 'XML Attribute For Field';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Repository Code", "Field Name")
        {
        }
    }

    fieldgroups
    {
    }
}

