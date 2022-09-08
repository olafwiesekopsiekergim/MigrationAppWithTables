table 5100923 "DIS - Email Queue"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Email Queue';

    fields
    {
        field(1; "Entry No."; BigInteger)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(3; "Groupe Code"; Code[20])
        {
            Caption = 'Groupe Code';
        }
        field(40; Recipient; Text[80])
        {
            Caption = 'Recipient';
        }
        field(45; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(46; "Body Text"; BLOB)
        {
            Caption = 'Body Text';
        }
        field(100; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Created,Sent,Error';
            OptionMembers = Created,Sent,Error;
        }
        field(105; "Error Text"; BLOB)
        {
            Caption = 'Error Text';
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
        key(Key2; Status, "Groupe Code", Recipient, "Creation Date")
        {
        }
    }

    fieldgroups
    {
    }
}

