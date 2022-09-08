table 5157912 "Pmt. Schema Orderer Bank"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.10.12   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Pmt. Schema Orderer Bank';

    fields
    {
        field(1; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            NotBlank = true;
            TableRelation = "Bank Account";
        }
        field(2; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            NotBlank = true;
            TableRelation = "Payment Type Code";
        }
        field(3; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(4; "Document xmlns"; Text[80])
        {
            Caption = 'Document xmlns';
        }
        field(5; "xmlns:xsi"; Text[80])
        {
            Caption = 'xmlns:xsi';
        }
        field(6; "xsi:schemaLocation"; Text[128])
        {
            Caption = 'xsi:schemaLocation';
        }
        field(7; EndtoEndID; Option)
        {
            Caption = 'EndtoEndID';
            OptionCaption = ' ,Empty,NOTPROVIDED if Empty,Unique';
            OptionMembers = " ",Empty,"NOTPROVIDED if Empty",Unique;
        }
        field(8; "SWIFT Header"; Option)
        {
            Caption = 'SWIFT Header';
            OptionCaption = ' ,Yes,No,First line only';
            OptionMembers = " ",Yes,No,"First line only";
        }
        field(9; "Segment 50H:"; Option)
        {
            Caption = 'Segment 50H:';
            OptionCaption = ' ,Bank Address,Company Address';
            OptionMembers = " ","Bank Address","Company Address";
        }
        field(10; "Format VIR 2000"; Option)
        {
            Caption = 'Format VIR 2000';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(11; "SEPA Direct Debit Collection"; Option)
        {
            Caption = 'SEPA Collection';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(12; "SEPA Version SCT"; Option)
        {
            Caption = 'SEPA Transfer Version';
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(13; "SEPA Version SDD"; Option)
        {
            Caption = 'SEPA DirDeb Version';
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
        field(14; "SEPA Extd. Charset"; Option)
        {
            Caption = 'SEPA Extd. Charset';
            OptionCaption = ' ,Yes,No';
            OptionMembers = Default,Yes,No;
        }
        field(15; EndToEndTag; Text[14])
        {
            Caption = 'Prefix EndToEndId';
        }
        field(17; BtchBookg; Option)
        {
            Caption = 'Batch Booking';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(19; EndToEndIdOption; Option)
        {
            Caption = 'EndToEndId';
            OptionCaption = ' ,Unique,None,NOTPROVIDED';
            OptionMembers = Default,Unique,"None",Notprovided;
        }
        field(20; "SEPA Due in Pmt. File"; Option)
        {
            Caption = 'SEPA Due in Pmt. File';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(21; SepaFilePerBatch; Option)
        {
            Caption = 'Separate File per Batch';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(22; "Transfer Postal Address"; Option)
        {
            Caption = 'Transfer Postal Address';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(23; "Clearing Sender ID"; Code[50])
        {
            Caption = 'Clearing Sender ID';
        }
        field(24; "Clearing Means of Ident."; Option)
        {
            Caption = 'Clearing: Means of Identification';
            OptionCaption = ' ,Name only,Sender ID only,Name and Sender ID';
            OptionMembers = " ","Name only","Sender ID only","Name and Sender ID";
        }
        field(25; "Exp. Curr. Code Orig. Bank Acc"; Option)
        {
            Caption = 'Export Currency Code of Originator Bank Account';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(26; "Creation Time No Fract. Sec."; Option)
        {
            Caption = 'Remove fractions of second in file creation time';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(27; "No Postal Address for InitgPty"; Option)
        {
            Caption = 'No Postal Address for InitgPty';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(28; "Segment 52A"; Option)
        {
            Caption = 'Segment 52A';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(29; "Segment 77B"; Option)
        {
            Caption = 'Segment 77B';
            OptionCaption = ' ,Alt. Reason Row';
            OptionMembers = " ","Alt. Reason Row";
        }
        field(30; "MT: one physical file per Head"; Option)
        {
            Caption = 'MT Formats: one physical file per Pmt. Head';
            OptionCaption = ' ,Yes';
            OptionMembers = " ",Yes;
        }
        field(31; "MT: use line nos. in address"; Option)
        {
            Caption = 'MT Formats: use line nos. in address';
            OptionCaption = ' ,Yes';
            OptionMembers = " ",Yes;
        }
        field(32; "Transfer Customer Reference"; Option)
        {
            Caption = 'Transfer Customer Reference';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
        field(33; "Format Customer Reference"; Option)
        {
            Caption = 'Format Customer Reference';
            OptionCaption = ' ,CdtrRefInf only,Ref and TP';
            OptionMembers = " ","CdtrRefInf only","Ref and TP";
        }
        field(35; "InitgPty: Placement ID/Address"; Option)
        {
            Caption = 'InitgPty: Placement ID/Address';
            OptionCaption = ' ,ID+Address,Address+ID';
            OptionMembers = " ","ID+Addr","Addr+ID";
        }
        field(36; "Amendment SMNDA Tag"; Option)
        {
            Caption = 'Amendment SMNDA Tag';
            OptionCaption = ' ,SEPA 2.7 (2013),SEPA 2.6 (2012),SEPA 3.0 (2016)';
            OptionMembers = " ","SEPA 2.7 (2013)","SEPA 2.6 (2012)","SEPA 3.0 (2016)";
        }
    }

    keys
    {
        key(Key1; "Bank Account No.", "Payment Type Code", "Country/Region Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

