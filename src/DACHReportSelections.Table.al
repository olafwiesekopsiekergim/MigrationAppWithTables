table 26100 "DACH Report Selections"
{
    // #AMPW17.10.01:T103 09.09.14 DEMSR.KHS
    //   Send e-Mail with pdf
    //     new field: Email Distribution Code
    // 
    // #AMPW18.00.00.07:T100 DEMSR.KHS
    //   Update Email Names and Captions

    Caption = 'DACH Report Selections';

    fields
    {
        field(1; Usage; Option)
        {
            Caption = 'Usage';
            OptionCaption = 'Intrastat Checklist,Intrastat Form,Intrastat Disk,Intrastat Disklabel,,,,,,VAT Statement,Sales VAT Acc. Proof,VAT Statement Schedule,,,,,,Phys. Invt. Order Test,Phys. Invt. Order,Posted Phys. Invt. Order,Phys. Invt. Recording,Posted Phys. Invt. Recording,,,,,,Delivery Reminder Test,Issued Delivery Reminder,,,,,,S.Arch. Blanket Order,P.Arch. Blanket Order';
            OptionMembers = "Intrastat Checklist","Intrastat Form","Intrastat Disk","Intrastat Disklabel",,,,,,"VAT Statement","Sales VAT Acc. Proof","VAT Statement Schedule",,,,,,"Phys. Invt. Order Test","Phys. Invt. Order","Posted Phys. Invt. Order","Phys. Invt. Recording","Posted Phys. Invt. Recording",,,,,,"Delivery Reminder Test","Issued Delivery Reminder",,,,,,"S.Arch. Blanket Order","P.Arch. Blanket Order";
        }
        field(2; Sequence; Code[10])
        {
            Caption = 'Sequence';
            Numeric = true;
        }
        field(3; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(4; "Report Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Report ID")));
            Caption = 'Report Name';
            Editable = false;
            FieldClass = FlowField;
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

