table 9657 "Custom Report Selection"
{
    // cc|mail (MAIL)

    Caption = 'Custom Report Selection';

    fields
    {
        field(1; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST (18)) Customer."No."
            ELSE
            IF ("Source Type" = CONST (23)) Vendor."No.";
        }
        field(3; Usage; Option)
        {
            Caption = 'Usage';
            Description = 'MAILW19.00.01 - OptionsAdded';
            OptionCaption = 'S.Quote,S.Order,S.Invoice,S.Cr.Memo,S.Test,P.Quote,P.Order,P.Invoice,P.Cr.Memo,P.Receipt,P.Ret.Shpt.,P.Test,B.Stmt,B.Recon.Test,B.Check,Reminder,Fin.Charge,Rem.Test,F.C.Test,Prod. Order,S.Blanket,P.Blanket,M1,M2,M3,M4,Inv1,Inv2,Inv3,SM.Quote,SM.Order,SM.Invoice,SM.Credit Memo,SM.Contract Quote,SM.Contract,SM.Test,S.Return,P.Return,S.Shipment,S.Ret.Rcpt.,S.Work Order,Invt. Period Test,SM.Shipment,S.Test Prepmt.,P.Test Prepmt.,S.Arch. Quote,S.Arch. Order,P.Arch. Quote,P.Arch. Order,S. Arch. Return Order,P. Arch. Return Order,Asm. Order,P.Assembly Order,S.Order Pick Instruction,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,C.Statement,V.Remittance,,,,,,Process Mail';
            OptionMembers = "S.Quote","S.Order","S.Invoice","S.Cr.Memo","S.Test","P.Quote","P.Order","P.Invoice","P.Cr.Memo","P.Receipt","P.Ret.Shpt.","P.Test","B.Stmt","B.Recon.Test","B.Check",Reminder,"Fin.Charge","Rem.Test","F.C.Test","Prod. Order","S.Blanket","P.Blanket",M1,M2,M3,M4,Inv1,Inv2,Inv3,"SM.Quote","SM.Order","SM.Invoice","SM.Credit Memo","SM.Contract Quote","SM.Contract","SM.Test","S.Return","P.Return","S.Shipment","S.Ret.Rcpt.","S.Work Order","Invt. Period Test","SM.Shipment","S.Test Prepmt.","P.Test Prepmt.","S.Arch. Quote","S.Arch. Order","P.Arch. Quote","P.Arch. Order","S. Arch. Return Order","P. Arch. Return Order","Asm. Order","P.Assembly Order","S.Order Pick Instruction",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"C.Statement","V.Remittance",,,,,Process;
        }
        field(4; Sequence; Integer)
        {
            AutoIncrement = true;
            Caption = 'Sequence';
        }
        field(5; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Report));
        }
        field(6; "Report Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Report ID")));
            Caption = 'Report Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Custom Report Layout ID"; Integer)
        {
            Caption = 'Custom Report Layout ID';
            TableRelation = "Custom Report Layout".ID WHERE (ID = FIELD ("Custom Report Layout ID"));
        }
        field(8; "Custom Report Description"; Text[250])
        {
            CalcFormula = Lookup ("Custom Report Layout".Description WHERE (ID = FIELD ("Custom Report Layout ID")));
            Caption = 'Custom Layout Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Send To Email"; Text[200])
        {
            Caption = 'Send To Email';
        }
        field(76000; Mail; Boolean)
        {
            AccessByPermission = TableData "Mail Setup, cc" = R;
            Caption = 'Mail';
            Description = 'MAILW19.00.01';
        }
        field(76001; Fax; Boolean)
        {
            AccessByPermission = TableData "Mail Setup, cc" = R;
            Caption = 'Fax';
            Description = 'MAILW19.00.01';
        }
        field(76002; "Process Mail"; Boolean)
        {
            AccessByPermission = TableData "Mail Setup, cc" = R;
            Caption = 'Process Mail';
            Description = 'MAILW19.00.01';
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source No.", Usage, Sequence)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

