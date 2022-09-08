table 5001908 "Bank Interface Field"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'Bank Interface Field';

    fields
    {
        field(1; "Bank Interface Code"; Code[10])
        {
            Caption = 'Bank Interface Code';
            Editable = false;
            TableRelation = "Bank Interface";
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(3; "Fieldno."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = IF ("Fieldno." = FILTER (>= 0)) Field."No." WHERE (TableNo = CONST (5001911));
        }
        field(4; Fieldname; Text[30])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = CONST (5001911),
                                                        "No." = FIELD ("Fieldno.")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Sequence; Integer)
        {
            BlankZero = true;
            Caption = 'Sequence';
            Editable = false;
        }
        field(6; Fieldtype; Text[30])
        {
            CalcFormula = Lookup (Field."Type Name" WHERE (TableNo = CONST (5001911),
                                                          "No." = FIELD ("Fieldno.")));
            Caption = 'Field Type';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; Factor; Decimal)
        {
            Caption = 'Factor';
        }
        field(8; "Field Length"; Integer)
        {
            CalcFormula = Lookup (Field.Len WHERE (TableNo = CONST (5001911),
                                                  "No." = FIELD ("Fieldno.")));
            Caption = 'Field Length';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Field Caption"; Text[30])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = CONST (5001911),
                                                              "No." = FIELD ("Fieldno.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Bank Interface Code", "Entry No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
        }
        key(Key2; "Bank Interface Code", "Fieldno.")
        {
        }
        key(Key3; "Bank Interface Code", Sequence)
        {
        }
    }

    fieldgroups
    {
    }
}

