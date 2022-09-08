table 5171707 "CMNM Signature"
{
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'Multinav Mail Signatures';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(4; "Signature Type"; Option)
        {
            Caption = 'Signatur Art';
            OptionCaption = 'Company signature,Personal signature,Transmission Protocol';
            OptionMembers = Company,Personal,TransmissionProtocol;
        }
        field(5; Signature; BLOB)
        {
            Caption = 'Signature';
        }
        field(10; "No. Replacements"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM Signature Repl." WHERE ("User ID" = FIELD ("User ID"),
                                                              "Language Code" = FIELD ("Language Code"),
                                                              "Signature Type" = FIELD ("Signature Type")));
            Caption = 'Signature Replacements';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Signature Type", "User ID", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

