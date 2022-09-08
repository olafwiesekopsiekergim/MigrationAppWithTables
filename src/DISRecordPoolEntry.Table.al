table 5100931 "DIS - Record Pool Entry"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Entry';

    fields
    {
        field(1; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool Code';
            NotBlank = true;
            TableRelation = "DIS - Record Pool";
        }
        field(2; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            NotBlank = true;
            TableRelation = "DIS - Partner";
        }
        field(3; "Entry No."; BigInteger)
        {
            Caption = 'Entry No.';
        }
        field(10; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(20; "Repository Type"; Option)
        {
            Caption = 'Repository Type';
            OptionCaption = 'NAV Record,XML Node';
            OptionMembers = RecordRef,XmlNode;
        }
        field(21; "Type of Change"; Option)
        {
            Caption = 'Type of Change';
            OptionCaption = 'Insert,Modify,Delete,Rename,,,,,,Event';
            OptionMembers = DbInsert,DbModify,DbDelete,DbRename,,,,,,CuEvent;
        }
        field(30; "Record Id"; RecordID)
        {
            Caption = 'Record Id';
        }
        field(31; "Record Id Text"; Text[80])
        {
            Caption = 'Record Id Text';
        }
        field(50; "Xml Record Node"; BLOB)
        {
            Caption = 'XML Node';
        }
        field(90; "Unprocessed Handling"; Option)
        {
            Caption = 'Unprocessed Entries Status after Mapping Processing';
            OptionCaption = 'Processed,Created';
            OptionMembers = Processed,Created;
        }
        field(91; "Error Handling"; Option)
        {
            Caption = 'Processed Entries Status after Error in Mapping Processing';
            OptionCaption = 'Created,processed';
            OptionMembers = Created,Processed;
        }
        field(100; Status; Option)
        {
            Caption = 'Processing';
            OptionCaption = 'Created,Reserved,In Progress,Processed,Deprecated';
            OptionMembers = Created,Reserved,InProgress,Processed,Deprecated;
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
        field(161; "Processed By User"; Code[50])
        {
            Caption = 'Processed By User';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(162; "Processed By Entry No."; BigInteger)
        {
            BlankZero = true;
            Caption = 'Processed By Entry No.';
            TableRelation = "DIS - Mapping Entry";
        }
    }

    keys
    {
        key(Key1; "Record Pool Code", "Partner Code", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Record Pool Code", "Partner Code", "Record Id", Status, "Repository Type")
        {
        }
        key(Key3; Status, "Processed Date")
        {
        }
    }

    fieldgroups
    {
    }
}

