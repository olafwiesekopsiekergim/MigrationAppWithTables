table 5138402 "CESS - Queue"
{
    Caption = 'SanScreen Queue';
    Permissions = TableData "CESS - Queue" = rimd;

    fields
    {
        field(1; "Entry No."; Code[20])
        {
            Caption = 'Entry No.';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[200])
        {
            Caption = 'Source ID';
        }
        field(13; "Address Type"; Option)
        {
            Caption = 'Address Type';
            OptionCaption = ' ,General,Shipment,Invoice,Ship-To-Addr';
            OptionMembers = " ",General,Shipment,Invoice,"Ship-To-Addr";
        }
        field(20; "Creation Timestamp"; DateTime)
        {
            Caption = 'Creation Timestamp';
            Editable = false;
        }
        field(21; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(22; "Validation Timestamp"; DateTime)
        {
            Caption = 'Validation Timestamp';
            Editable = false;
        }
        field(23; "Validated By"; Code[50])
        {
            Caption = 'Validated By';
            Editable = false;
        }
        field(24; "Validation Result"; Option)
        {
            Caption = 'Validation Result';
            OptionCaption = ' ,Ok,Address in Whitelist,Hit,Doc. Screening disabled';
            OptionMembers = " ",Ok,"Address in Whitelist",Hit,"Doc. Screening disabled";
        }
        field(25; ProtocolId; Text[30])
        {
            Caption = 'Protocol Id';
            Description = 'ID vom SanScreen System';
            Editable = false;
        }
        field(26; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(40; scheduledForFileScreening; Boolean)
        {
            Caption = 'scheduled for File-Screening';
            Description = 'vorgesehen für Datei-Screening';
        }
        field(90; CreatedForAESClient; Code[15])
        {
            Caption = 'created for AES-Client';
        }
        field(100; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(101; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(102; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(103; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(104; City; Text[50])
        {
            Caption = 'City';
        }
        field(105; Contact; Text[50])
        {
            Caption = 'Contact';
        }
        field(106; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(107; County; Text[30])
        {
            Caption = 'County';
        }
        field(108; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(109; "Company Name"; Text[50])
        {
            Caption = 'Company Name';
        }
        field(110; "Name 3"; Text[50])
        {
            Caption = 'Name 3';
        }
        field(111; "Name 4"; Text[50])
        {
            Caption = 'Name 4';
        }
        field(120; "Address 3"; Text[50])
        {
            Caption = 'Address 3';
        }
        field(121; "Address 4"; Text[50])
        {
            Caption = 'Address 4';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source Subtype", "Source ID")
        {
        }
        key(Key3; scheduledForFileScreening)
        {
        }
    }

    fieldgroups
    {
    }
}

