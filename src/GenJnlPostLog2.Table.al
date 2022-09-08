table 50008 "Gen. Jnl Post Log2"
{
    // P0004 15.02.16 DEBIE.ARE NAV2015 Modus changes
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // :DMW14.03:1:01 #Neue Felder für Stücklistenbuchungen  BOM Document Type
    //                #                                      BOM Document No.
    //                #                                      BOM Document Line No.
    //                #                                      BOM lfd. Nr.
    // :DMW14.04:1:01 #corrected Table Relation in Field "Calcluation Group"
    // :DMW15.01.00.01:6:01 #Completed Captions
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.03.03:A007 27.07.12 DEMSR.SSZ
    //   #Corrected Table Relation at field 5013380 "BOM Entry No."
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // 
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW17.10.00.03:T500 07.08.2014  DEDRS.RKRA  Copy dimensions from application entry
    // 
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // dyn.OGL  25.02.2015  OGL      akq        Implementing dynamo OGL
    // ================================================================================
    // 
    // +--------------------------------------------------------------+
    // |                  Copyright MODUS Consult AG                  |
    // |                          Customizing                         |
    // +--------------------------------------------------------------+
    // Modul     Date      User      Description
    // MC        04.11.15  DT        Fields 50000/50005/50010 Vertreter/Sachbearbeiter/Provision

    Caption = 'Gen. Jnl Post Log';
    Permissions = TableData "Data Exch. Field" = rimd;

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(51; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(88800; Error; Text[250])
        {
        }
        field(88801; Posted; Boolean)
        {
        }
        field(88802; Period; Date)
        {
        }
        field(88803; Started; DateTime)
        {
        }
        field(88804; Finished; DateTime)
        {
        }
        field(88805; Duration; Duration)
        {
        }
        field(88806; NoOfRecs; Integer)
        {
        }
        field(88807; PostPerBatch2Name; Boolean)
        {
        }
        field(88808; CopiedtoBatch2Name; Boolean)
        {
        }
        field(88809; Batch2Name; Code[10])
        {
        }
        field(88810; CopiedtoErrorBatchName; Boolean)
        {
        }
        field(88811; ErrorBatchName; Code[10])
        {
        }
        field(88812; "With Cancellation"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", Period)
        {
            Clustered = true;
            MaintainSIFTIndex = false;
        }
    }

    fieldgroups
    {
    }
}

