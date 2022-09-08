table 5171690 "CMNM Entry Detail"
{
    // c/sr/20120502 - Feld 20 Erweiterung  50=>80

    Caption = 'Entry Details';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'From,To,CC,BCC,Attachment,Web Service,Mail Content,Subject,Display Name,Reply-To Address';
            OptionMembers = from,"to",cc,bcc,attachment,webserviceoutput,content,subject,DisplayName,ReplyTo;
        }
        field(20; Value; Text[200])
        {
            Caption = 'Value';
        }
        field(21; "Address Name"; Text[80])
        {
            Caption = 'Name';
        }
        field(30; Attachment; BLOB)
        {
            Caption = 'Attachment/Content';
        }
        field(40; "Fileaction on success"; Option)
        {
            Caption = 'Fileaction on success';
            OptionCaption = ' ,delete';
            OptionMembers = " ",delete;
        }
    }

    keys
    {
        key(Key1; Type, "Entry No.", Value)
        {
            Clustered = true;
        }
        key(Key2; "Entry No.", Type, Value)
        {
        }
    }

    fieldgroups
    {
    }
}

