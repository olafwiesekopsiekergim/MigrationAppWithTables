table 11003 "Data Export Record Definition"
{
    Caption = 'Data Export Record Definition';
    DataCaptionFields = "Data Export Code", "Data Exp. Rec. Type Code";

    fields
    {
        field(1; "Data Export Code"; Code[10])
        {
            Caption = 'Data Export Code';
            NotBlank = true;
            TableRelation = "Data Export";
        }
        field(2; "Data Exp. Rec. Type Code"; Code[10])
        {
            Caption = 'Data Export Record Type Code';
            NotBlank = true;
            TableRelation = "Data Export Record Type";
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Export Path"; Text[250])
        {
            Caption = 'Export Path';
        }
        field(5; "DTD File Name"; Text[50])
        {
            Caption = 'DTD File Name';
            Editable = false;
        }
        field(6; "DTD File"; BLOB)
        {
            Caption = 'DTD File';
        }
    }

    keys
    {
        key(Key1; "Data Export Code", "Data Exp. Rec. Type Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

