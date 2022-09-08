table 5100912 "DIS - Partner Received Message"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Received Message';

    fields
    {
        field(1; "Entry No."; BigInteger)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(5; "Sender Code"; Code[20])
        {
            Caption = 'Sender Code';
            TableRelation = "DIS - Partner";
            ValidateTableRelation = false;
        }
        field(6; "Received Mapping Code"; Code[20])
        {
            Caption = 'Received Mapping Code';
            TableRelation = "DIS - Mapping";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; "Processing Mapping Code"; Code[20])
        {
            Caption = 'Processing Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(8; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(15; "Message Xml File"; BLOB)
        {
            Caption = 'Message XML File';
        }
        field(30; "Sequence Code"; Code[20])
        {
            Caption = 'Sequence Code';
            TableRelation = "DIS - Sequence Header";
        }
        field(31; "Sequence Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Sequence Line No.';
            TableRelation = "DIS - Sequence Line"."Line No." WHERE ("Sequence Code" = FIELD ("Sequence Code"));
        }
        field(35; "Mapping Entry No."; BigInteger)
        {
            BlankZero = true;
            Caption = 'Mapping Entry No.';
            TableRelation = "DIS - Mapping Entry";
        }
        field(50; "Xml Repository"; BLOB)
        {
            Caption = 'XML Repository';
        }
        field(55; "Xml Repository Records"; Integer)
        {
            Caption = 'XML Repository Records';
        }
        field(100; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Created,Imported,Read,Processed,Error';
            OptionMembers = Created,Imported,Read,Processed,Error;
        }
        field(105; "Error Text"; BLOB)
        {
            Caption = 'Error Text';
        }
        field(110; "Sent Message Entry No."; BigInteger)
        {
            Caption = 'Sent Message Entry No.';
        }
        field(130; "Record Id"; RecordID)
        {
            Caption = 'Record Id';
        }
        field(132; "Record Table No."; Integer)
        {
            Caption = 'Record Table No.';
        }
        field(133; "Record Key 1"; Text[20])
        {
            Caption = 'Record Key 1';
        }
        field(134; "Record Key 2"; Text[20])
        {
            Caption = 'Record Key 2';
        }
        field(135; "Record Key 3"; Text[20])
        {
            Caption = 'Record Key 3';
        }
        field(150; "Creation Date"; DateTime)
        {
            Caption = 'Creation Date';
        }
        field(151; "Creation By"; Code[50])
        {
            Caption = 'Creation By';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(160; "Processed Date"; DateTime)
        {
            Caption = 'Processed Date';
        }
        field(161; "Processed By"; Code[50])
        {
            Caption = 'Processed By';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Status, "Processed Date")
        {
        }
    }

    fieldgroups
    {
    }
}

