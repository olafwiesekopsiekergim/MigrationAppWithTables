table 5013503 "Advance Payment Setup Sale"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Changed ENU Caption
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Advance Payment Setup Sale';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(2; "Advance Payment No."; Code[10])
        {
            Caption = 'Advance Payment No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "No. Series".Code;
        }
        field(3; "Advance Payment Request No."; Code[10])
        {
            Caption = 'Advance Payment Request No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "No. Series".Code;
        }
        field(4; "Adv. Payment Credit Memo No."; Code[10])
        {
            Caption = 'Adv. Payment Credit Memo No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "No. Series".Code;
        }
        field(5; "Posted Adv. Pmt. Request No."; Code[10])
        {
            Caption = 'Posted Advance Payment Request No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "No. Series".Code;
        }
        field(6; "Posted Adv. Pmt. Cr. Memo No."; Code[10])
        {
            Caption = 'Posted Advance Payment Credit Memo No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "No. Series".Code;
        }
        field(7; "Direct Posting"; Boolean)
        {
            Caption = 'Direct Posting';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(8; "Allocate Payment Discount"; Boolean)
        {
            Caption = 'Allocate Payment Discount';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(9; "Allocate Adv. Paym. Requests"; Option)
        {
            Caption = 'Allocate Adv. Paym. Requests';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = ' ,Partial Invoice,Closing Invoice,Always';
            OptionMembers = " ","Partial Invoice","Closing Invoice",Always;
        }
        field(10; "Unapply All Adv. Pmt. Entries"; Boolean)
        {
            Caption = 'Unapply All Advance Payment Entries';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(11; "Archive Advance Payments"; Boolean)
        {
            Caption = 'Archive Advance Payments';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(12; "Allocate Exchange Rate Diff."; Boolean)
        {
            Caption = 'Allocate Exchange Rate Differences';
            Description = 'APTW:DMW15.01:58:01';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

