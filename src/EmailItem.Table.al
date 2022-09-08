table 9500 "Email Item"
{
    // #AMPW18.00:T100 19.12.14 DEMSR.KHS
    //   Update Email Distribution Handling
    //     New Fields: E-Mail Distribution Code
    //                 E-Mail Source Record ID
    // 
    // 
    // GIM0007 14.4.2022 New Field ForceSMTPOnWFNotification  Processes SMTP in the send-Method. Correction of CCMail-Error

    Caption = 'Email Item';

    fields
    {
        field(1; ID; Guid)
        {
            Caption = 'ID';
        }
        field(2; "From Name"; Text[100])
        {
            Caption = 'From Name';
        }
        field(3; "From Address"; Text[250])
        {
            Caption = 'From Address';
        }
        field(4; "Send to"; Text[250])
        {
            Caption = 'Send to';
        }
        field(5; "Send CC"; Text[250])
        {
            Caption = 'Send CC';
        }
        field(6; "Send BCC"; Text[250])
        {
            Caption = 'Send BCC';
        }
        field(7; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(8; Body; BLOB)
        {
            Caption = 'Body';
        }
        field(9; "Attachment File Path"; Text[250])
        {
            Caption = 'Attachment File Path';
        }
        field(10; "Attachment Name"; Text[250])
        {
            Caption = 'Attachment Name';
        }
        field(11; "Plaintext Formatted"; Boolean)
        {
            Caption = 'Plaintext Formatted';
        }
        field(50000; ForceSMTPOnWFNotification; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(5395815; "E-Mail Distribution Code"; Code[10])
        {
            Caption = 'E-Mail Distribution Code';
            Description = '#AMPW18.00:T100';
            TableRelation = "Email Distribution Setup";
        }
        field(5395816; "E-Mail Source Record ID"; RecordID)
        {
            Caption = 'E-Mail Source Record ID';
            Description = '#AMPW18.00:T100';
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

