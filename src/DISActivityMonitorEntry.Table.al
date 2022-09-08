table 5100928 "DIS - Activity Monitor Entry"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Aktivity Monitor Entry';

    fields
    {
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
        field(8; Notification; Text[80])
        {
            Caption = 'Notification';
        }
        field(15; Indent; Integer)
        {
            Caption = 'Line Indentation';
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
        field(100; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Created,In Progress,Processed,Error';
            OptionMembers = Created,InProgress,Processed,Error;
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
        field(165; "Processing Duration"; Duration)
        {
            Caption = 'Processing Duration';
        }
        field(190; "Server Instance ID"; Integer)
        {
            Caption = 'Server Instance ID';
            TableRelation = "Server Instance";
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
        key(Key1; "Server Instance ID", "Creation By", "Client Type", "Mapping Code", "Version No.", "Partner Code", "Sequence Code", "Sequence Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

