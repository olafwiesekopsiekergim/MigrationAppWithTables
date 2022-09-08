table 5100957 "DIS - Mapping Config. Wizard"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Config. Wizard';

    fields
    {
        field(1; "NAV Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "NAV Table Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Table),
                                                                        "Object ID" = FIELD ("NAV Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "NAV Table Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("NAV Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "XML Tag Name"; Text[80])
        {
            Caption = 'XML Tag Name';
        }
        field(6; "Transmission Type"; Option)
        {
            Caption = 'Transmission Type';
            OptionCaption = 'NAV to XML,XML to NAV';
            OptionMembers = Nav2Xml,Xml2Nav;
        }
        field(7; "NAV Source Type"; Option)
        {
            Caption = 'NAV Source Type';
            OptionCaption = 'Table,Record Pool';
            OptionMembers = "Table",RecordPool;
        }
        field(11; "NAV Repository Code"; Code[20])
        {
        }
        field(12; "XML Repository Code"; Code[20])
        {
        }
        field(20; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool';
        }
    }

    keys
    {
        key(Key1; "NAV Table No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

