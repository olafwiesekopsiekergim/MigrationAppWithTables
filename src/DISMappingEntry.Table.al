table 5100951 "DIS - Mapping Entry"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping Entry';

    fields
    {
        field(1; "Entry No."; BigInteger)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(3; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(4; "Version No."; Integer)
        {
            Caption = 'Version No.';
            TableRelation = "DIS - Mapping Version"."No." WHERE ("Mapping Code" = FIELD ("Mapping Code"));
        }
        field(5; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            TableRelation = "DIS - Partner";
        }
        field(8; Description; Text[80])
        {
            Caption = 'Description';
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
        field(45; "Record Pool Loop Disrupted"; Boolean)
        {
            Caption = 'Record Pool Loop Disrupted';
        }
        field(50; "Xml Repository"; BLOB)
        {
            Caption = 'XML Repository';
        }
        field(51; Compressed; Boolean)
        {
            CalcFormula = - Exist ("DIS - Detailed Mapping Entry" WHERE ("Mapping Entry No." = FIELD ("Entry No."),
                                                                       Compressed = CONST (false)));
            Caption = 'Compressed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(55; "Xml Repository Records"; Integer)
        {
            Caption = 'XML Repository Records';
        }
        field(100; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Created,In Progress,Processed,Error';
            OptionMembers = Created,InProgress,Processed,Error;
        }
        field(105; "Error Text"; BLOB)
        {
            Caption = 'Error Text';
        }
        field(106; "Warning Text"; BLOB)
        {
            Caption = 'Warnings';
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
        field(165; "Processing Duration"; Duration)
        {
            Caption = 'Processing Duration';
        }
        field(190; "Server Instance ID"; Integer)
        {
            Caption = 'Server Instance ID';
            TableRelation = "Server Instance";
        }
        field(191; "Session ID"; Integer)
        {
            Caption = 'Session ID';
        }
        field(192; "Client Type"; Option)
        {
            Caption = 'Client Type';
            OptionCaption = ',,Windows,Web,SOAP,OData,NAS,Background,Management,Tablet,Phone,Desktop';
            OptionMembers = ,,Windows,Web,SOAP,OData,NAS,Background,Management,Tablet,Phone,Desktop;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Server Instance ID", "Creation By", "Client Type", "Creation Date")
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

