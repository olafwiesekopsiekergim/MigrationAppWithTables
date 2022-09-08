table 5001930 "camt Import Line"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'camt Import Line';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = Header,Line;
        }
        field(4; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Checked,Error';
            OptionMembers = " ",Checked,Error;
        }
        field(5; GrpMsgID; Text[35])
        {
        }
        field(6; GrpCreationDate; Text[30])
        {
        }
        field(7; GrpMsgRcptId; Text[35])
        {
        }
        field(8; GrpMsgPageNo; Text[5])
        {
        }
        field(9; GrpMsgPageEnd; Text[5])
        {
        }
        field(10; StmtID; Text[35])
        {
        }
        field(11; StmtElectronicPageNo; Text[50])
        {
        }
        field(12; StmtLegalPageNo; Text[50])
        {
        }
        field(13; StmtCreationDate; Text[30])
        {
        }
        field(14; BankAccIBAN; Text[34])
        {
        }
        field(15; BankAccCurrency; Text[50])
        {
        }
        field(16; BankAccOwner; Text[140])
        {
        }
        field(17; BankAccBIC; Text[50])
        {
        }
        field(18; BankAccOthrId; Text[35])
        {
        }
        field(19; BankAccOthrIssr; Text[35])
        {
        }
        field(20; BalCdOrPrtry; Text[4])
        {
        }
        field(21; BalAmount; Text[50])
        {
        }
        field(22; BalCurrency; Text[50])
        {
        }
        field(23; BalCdtDbtInd; Text[4])
        {
        }
        field(24; BalDate; Text[10])
        {
        }
        field(25; NtryAmount; Text[50])
        {
        }
        field(26; NtryCurrency; Text[50])
        {
        }
        field(27; NtryCdtDbtInd; Text[4])
        {
        }
        field(28; NtrySts; Text[10])
        {
        }
        field(29; NtryPostingDate; Text[10])
        {
        }
        field(30; NtryValueDate; Text[10])
        {
        }
        field(31; NtryBankReference; Text[35])
        {
        }
        field(32; NtryMsgNmId; Text[35])
        {
        }
        field(33; NtryMsgId; Text[35])
        {
        }
        field(34; NtryBtchMsgId; Text[35])
        {
        }
        field(35; NtryBtchPmtInfId; Text[35])
        {
        }
        field(36; NtryBtchNbOfTxs; Text[15])
        {
        }
        field(37; NtryEndToEndId; Text[35])
        {
        }
        field(38; NtryMandateNo; Text[35])
        {
        }
        field(39; NtryCheckNo; Text[35])
        {
        }
        field(40; NtryInstAmtAmount; Text[50])
        {
        }
        field(41; NtryInstAmtCurrency; Text[50])
        {
        }
        field(42; NtryTxAmtAmount; Text[50])
        {
        }
        field(43; NtryTxAmtCurrency; Text[50])
        {
        }
        field(44; NtryCntrValAmtAmount; Text[50])
        {
        }
        field(45; NtryCntrValAmtCurrency; Text[50])
        {
        }
        field(46; NtryCcyXchgSrcCurrency; Text[50])
        {
        }
        field(47; NtryCcyXchgTrgtCurrency; Text[50])
        {
        }
        field(48; NtryCcyXchgXchgRate; Text[50])
        {
        }
        field(49; NtryBkTxCdCode; Text[35])
        {
        }
        field(50; NtryBkTxCdIssr; Text[10])
        {
        }
        field(51; NtryChrgsAmount; Text[50])
        {
        }
        field(52; NtryChrgsCurrency; Text[50])
        {
        }
        field(53; NtryDbtrName; Text[140])
        {
        }
        field(54; NtryIBAN; Text[34])
        {
        }
        field(55; NtryOthrID; Text[35])
        {
        }
        field(56; NtryUltmtDbtrName; Text[140])
        {
        }
        field(57; NtryCdtrName; Text[140])
        {
        }
        field(58; NtryCdtrID; Text[35])
        {
        }
        field(59; NtryUltmtCdtrName; Text[140])
        {
        }
        field(60; NtryPurposeCode; Text[35])
        {
        }
        field(61; NtryRmtInfUstrd; Text[140])
        {
        }
        field(62; NtryRtrInfCode; Text[35])
        {
        }
        field(63; NtryRtrInfIssr; Text[35])
        {
        }
        field(64; NtryRtrInfName; Text[140])
        {
        }
        field(65; NtryRtrInfBICOrBEI; Text[50])
        {
        }
        field(66; NtryRtrInfSEPACode; Text[35])
        {
        }
        field(67; NtryRtrInfDTAPrtry; Text[35])
        {
        }
        field(68; NtryRtrInfAddtlInf; Text[105])
        {
        }
        field(69; NtryAddtlNtryInf; Text[140])
        {
        }
        field(70; LastBalCdOrPrtry; Text[4])
        {
        }
        field(71; LastBalAmount; Text[50])
        {
        }
        field(72; LastBalCurrency; Text[50])
        {
        }
        field(73; LastBalCdtDbtInd; Text[4])
        {
        }
        field(74; LastBalDate; Text[10])
        {
        }
        field(75; BankAccountBranchNo; Text[50])
        {
        }
        field(100; "Error Description"; Text[250])
        {
            Caption = 'Error Description';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

