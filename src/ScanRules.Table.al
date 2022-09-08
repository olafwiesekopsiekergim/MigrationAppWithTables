table 5171653 "Scan Rules"
{
    Caption = 'Scan Rules';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Item Tracking Code';
            NotBlank = true;
        }
        field(2; Class; Option)
        {
            Caption = 'Class';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20";
        }
        field(3; Description; Text[40])
        {
            Caption = 'Description';
        }
        field(4; "SN Type"; Option)
        {
            Caption = 'Kind of Serial No.';
            OptionCaption = 'Normaly,Auto. No.,Combi';
            OptionMembers = normal,"Auto.Nr",Kombi;
        }
        field(5; "SN Lengh"; Integer)
        {
            Caption = 'SN Length';
        }
        field(10; "Journal Rule Purch./pos.Adj."; Option)
        {
            Caption = 'Journal Rule Purch./PA';
            OptionCaption = 'Duty To Scan,Autofill';
            OptionMembers = Scanpflicht,Autofill;
        }
        field(11; "Journal Rule Sales/neg.Adj."; Option)
        {
            Caption = 'Journal Rule Sales/NA/Tr.';
            OptionCaption = 'Duty To Scan,Autofill';
            OptionMembers = Scanpflicht,Autofill;
        }
        field(12; "Purchase Rule"; Option)
        {
            Caption = 'Purchase Rule';
            OptionCaption = 'Duty To Scan,Autofill';
            OptionMembers = Scanpflicht,Autofill;
        }
        field(13; "Sales Rule"; Option)
        {
            Caption = 'Sales Rule';
            OptionCaption = 'Duty To Scan,Autofill';
            OptionMembers = Scanpflicht,Autofill;
        }
        field(14; "Repairorder Rule"; Option)
        {
            Caption = 'Repair Order Rule';
            OptionCaption = 'Duty To Scan,Autofill';
            OptionMembers = Scanpflicht,Autofill;
        }
        field(20; "Last SN (%1 in Format)"; Code[20])
        {
            Caption = 'Last SN (%1 in Format)';
        }
        field(21; "Character allowed"; Text[50])
        {
            Caption = 'Allowed Characters';
        }
        field(50; "SN lengh alternate"; Integer)
        {
            Caption = 'SN Length Alternative';
        }
        field(51; "SN from"; Integer)
        {
            Caption = 'SN from';
        }
        field(52; "SN Lengh 2"; Integer)
        {
            Caption = 'SN Lengh 2';
        }
        field(110; "Code construction"; Code[50])
        {
            Caption = 'Code construction';
        }
        field(115; "Expiration Date Formula"; DateFormula)
        {
        }
        field(120; "SN Lengh min"; Integer)
        {
            Caption = 'SN Länge min';
        }
        field(130; "SN Lengh max"; Integer)
        {
            Caption = 'SN Länge max';
        }
    }

    keys
    {
        key(Key1; "Code", Class)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

