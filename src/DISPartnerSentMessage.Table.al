table 5100913 "DIS - Partner Sent Message"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Sent Message';

    fields
    {
        field(1; "Entry No."; BigInteger)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(5; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            TableRelation = "DIS - Partner";
        }
        field(7; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
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
        field(45; "Record Pool Loop Disrupted"; Boolean)
        {
            Caption = 'Record Pool Loop Disrupted';
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
            OptionCaption = 'Created,Processed,Written,Sent,Error,,,Delete';
            OptionMembers = Created,Processed,Written,Sent,Error,,,Delete;
        }
        field(105; "Error Text"; BLOB)
        {
            Caption = 'Error Text';
        }
        field(106; "Warning Text"; BLOB)
        {
            Caption = 'Warnings';
        }
        field(110; "Received Message Entry No."; BigInteger)
        {
            Caption = 'Received Message Entry No.';
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
        field(170; "Sent Date"; DateTime)
        {
            Caption = 'Sent Date';
        }
        field(171; "Sent By"; Code[50])
        {
            Caption = 'Sent By';
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

