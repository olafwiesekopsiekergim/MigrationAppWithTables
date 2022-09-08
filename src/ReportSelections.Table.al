table 77 "Report Selections"
{
    // P0034 04.04.16 DEBIE.ARE New option "C.Inv" to field Usage added
    // 
    // #RENW16.00:10-001  15.04.09 DEMSR.KHS
    //   Usage "Rental Contract","Rental Invoice" added
    // 
    // #RENW16.00.01:R052 12.10.09 DEMSR.KHS
    //   Rent Reservation
    // 
    // #RENW16.00.01:R121 12.10.09 DEMSR.KHS
    //   Rent Quotes
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.02:T515 03.06.14 DEMSR.KHS
    //   Test Report - Rental Contract
    //   Add Usage Option R.Test
    // 
    // #RENW18.00.01.01:T501 30.10.15 DEMSR.KHS
    //   Add Rent Arch. Documents
    // 
    // #AMPW17.10.01:T103 09.09.14 DEMSR.KHS
    //   Send e-Mail with pdf
    //     new field: Email Distribution Code
    // 
    // #AMPW18.00.00.07:T100 DEMSR.KHS
    //   Update Email Names and Captions
    // 
    // cc|formatted documents (CCFD)
    // cc|dms (CCDMS)
    // 
    // #DMS:T000 21.01.15 DEDRS.WHEG
    //   Missing DMS tags
    // 
    // #FDW18.00.05:T100 14.07.2015 DEDRS.RKRA
    //   Formatted documents tag

    Caption = 'Report Selections';

    fields
    {
        field(1; Usage; Option)
        {
            Caption = 'Usage';
            Description = '#RENW16.00:10-001,#RENW16.00.01:R087,#RENW17.10.00.02:T515,#REN8.00.01.01,P0034';
            OptionCaption = 'S.Quote,S.Order,S.Invoice,S.Cr.Memo,S.Test,P.Quote,P.Order,P.Invoice,P.Cr.Memo,P.Receipt,P.Ret.Shpt.,P.Test,B.Stmt,B.Recon.Test,B.Check,Reminder,Fin.Charge,Rem.Test,F.C.Test,Prod. Order,S.Blanket,P.Blanket,M1,M2,M3,M4,Inv1,Inv2,Inv3,SM.Quote,SM.Order,SM.Invoice,SM.Credit Memo,SM.Contract Quote,SM.Contract,SM.Test,S.Return,P.Return,S.Shipment,S.Ret.Rcpt.,S.Work Order,Invt. Period Test,SM.Shipment,S.Test Prepmt.,P.Test Prepmt.,S.Arch. Quote,S.Arch. Order,P.Arch. Quote,P.Arch. Order,S. Arch. Return Order,P. Arch. Return Order,Asm. Order,P.Assembly Order,S.Order Pick Instruction,,,,,,,RM.Contr.,RM.Inv.,R.Cr.Memo,R.Shpt.,R.RetRcpt.,R.Qte,R.Reserv.,R.Test,RA.Qte,RA.Ordr,,,,,,,,,,,,,,,C.Statement,V.Remittance,C.Invoice';
            OptionMembers = "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.OrdPickInstr",,,,,,,"R-C","R-I","R-Cr","R-S","R-Re","R-Qt","R-Rs","R-Tst",RAQ,RAO,,,,,,,,,,,,,,,"C.Stat","V.Rem","C.Inv";
        }
        field(2; Sequence; Code[10])
        {
            Caption = 'Sequence';
            Numeric = true;
        }
        field(3; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Report));
        }
        field(4; "Report Caption"; Text[250])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Report),
                                                                           "Object ID" = FIELD("Report ID")));
            Caption = 'Report Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5305932; "Use CCFD"; Boolean)
        {
            Caption = 'Use cc|formatted documents';
            Description = 'CCFD';
        }
        field(5306000; "Document Library No."; Code[20])
        {
            Caption = 'Document Library No.';
            Description = 'CCDMS';
        }
        field(5306001; "Content Type Code"; Code[20])
        {
            Caption = 'Content Type Code';
            Description = 'CCDMS';
        }
        field(5306002; "Report Upload Type"; Option)
        {
            Caption = 'Report Upload Type';
            Description = 'CCDMS';
            OptionCaption = 'DMS Setup,Only Upload,Upload and Open,Upload and E-Mail';
            OptionMembers = Setup,"None",Open,Mail;
        }
        field(5395815; "Email Distribution Code"; Code[10])
        {
            Caption = 'Email Distribution Code';
            Description = '#AMPW17.10.01:T103,#AMPW18.00.00.07:T100';
            TableRelation = "Email Distribution Setup";
        }
    }

    keys
    {
        key(Key1; Usage, Sequence)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

