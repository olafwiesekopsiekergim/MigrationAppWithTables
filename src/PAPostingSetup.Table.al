table 5000238 "PA Posting Setup"
{
    Caption = 'PA Posting Setup';

    fields
    {
        field(1; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(2; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            NotBlank = true;
            TableRelation = "Gen. Product Posting Group";
        }
        field(10; "Multi. COS Sales Account"; Code[20])
        {
            Caption = 'Multi. COS Sales Account';
            TableRelation = "Project Account";
        }
        field(11; "Multi. COS Sales Clear.-Acc"; Code[20])
        {
            Caption = 'Multi. COS Sales Clear.-Acc';
            TableRelation = "Project Account";
        }
        field(12; "Multi. COS Consumption Acc"; Code[20])
        {
            Caption = 'Multi. COS Consumption Cost Acc';
            TableRelation = "Project Account";
        }
        field(13; "Multi. COS Consumpt. Clear-Acc"; Code[20])
        {
            Caption = 'Multi. COS Consumpt. Clear-Acc';
            TableRelation = "Project Account";
        }
        field(14; "Cost Type Consumption Acc"; Option)
        {
            Caption = 'Cost Type Consumption Acc';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(15; "Fix % Consumption Acc"; Integer)
        {
            Caption = 'Fix % Consumption Acc';
            MaxValue = 100;
            MinValue = 0;
        }
        field(16; "Multi. COS Material-DC Account"; Code[20])
        {
            Caption = 'Multi. COS Material-DC Account';
            TableRelation = "Project Account";
        }
        field(17; "Multi. COS Mat.-DC Clear-Acc"; Code[20])
        {
            Caption = 'Multi. COS Mat.-DC Clear-Acc';
            TableRelation = "Project Account";
        }
        field(18; "Cost Type Material-DC"; Option)
        {
            Caption = 'Cost Type Material-DC';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(19; "Fix % Material-DC"; Integer)
        {
            Caption = 'Fix % Material-DC';
            MaxValue = 100;
            MinValue = 0;
        }
        field(20; "Multi. COS Capa.(Res.)-DC Acc"; Code[20])
        {
            Caption = 'Multi. COS Capa.(Res.)-DC Acc';
            TableRelation = "Project Account";
        }
        field(21; "Multi. COS Capa(Res)-DC Clear"; Code[20])
        {
            Caption = 'Multi. COS Capa(Res)-DC Clear';
            TableRelation = "Project Account";
        }
        field(22; "Cost Type Capa.(Res.)-DC"; Option)
        {
            Caption = 'Cost Type Capa.(Res.)-DC';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(23; "Fix % Capa.(Res.)-DC"; Integer)
        {
            Caption = 'Fix % Capa.(Res.)-DC';
            MaxValue = 100;
            MinValue = 0;
        }
        field(24; "Multi. COS Capa.(Res.)-Ovh Acc"; Code[20])
        {
            Caption = 'Multi. COS Capa.(Res.)-Ovh Acc';
            TableRelation = "Project Account";
        }
        field(25; "Multi. COS Capa(Res)-Ovh Clear"; Code[20])
        {
            Caption = 'Multi. COS Capa(Res)-Ovh Clear';
            TableRelation = "Project Account";
        }
        field(26; "Cost Type Capa.(Res.)-Ovh."; Option)
        {
            Caption = 'Cost Type Capa.(Res.)-Ovh.';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(27; "Fix % Capa.(Res.)-Ovh."; Integer)
        {
            Caption = 'Fix % Capa.(Res.)-Ovh.';
            MaxValue = 100;
            MinValue = 0;
        }
        field(28; "Multi. COS Subcontrd-DC Acc"; Code[20])
        {
            Caption = 'Multi. COS Subcontrd-DC Acc';
            TableRelation = "Project Account";
        }
        field(29; "Multi. COS Subc.-DC Clear-Acc"; Code[20])
        {
            Caption = 'Multi. COS Subc.-DC Clear-Acc';
            TableRelation = "Project Account";
        }
        field(30; "Cost Type Subcontrd-DC"; Option)
        {
            Caption = 'Cost Type Subcontrd-DC';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(31; "Fix % Subcontrd-DC"; Integer)
        {
            Caption = 'Fix % Subcontrd-DC';
            MaxValue = 100;
            MinValue = 0;
        }
        field(32; "Multi. COS Mfg.-Ovh Acc"; Code[20])
        {
            Caption = 'Multi. COS Mfg.-Ovh Acc';
            TableRelation = "Project Account";
        }
        field(33; "Multi. COS Mfg.-Ovh Clear-Acc"; Code[20])
        {
            Caption = 'Multi. COS Mfg.-Ovh Clear-Acc';
            TableRelation = "Project Account";
        }
        field(34; "Cost Type Mfg.-Ovh"; Option)
        {
            Caption = 'Cost Type Mfg.-Ovh';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(35; "Fix % Mfg.-Ovh"; Integer)
        {
            Caption = 'Fix % Mfg.-Ovh';
            MaxValue = 100;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Gen. Bus. Posting Group", "Gen. Prod. Posting Group")
        {
            Clustered = true;
        }
        key(Key2; "Gen. Prod. Posting Group", "Gen. Bus. Posting Group")
        {
        }
    }

    fieldgroups
    {
    }
}

