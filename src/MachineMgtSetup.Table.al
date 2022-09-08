table 5072452 "Machine Mgt. Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.01:R059 15.10.09 DEMSR.KHS
    //   Divide Items into Types: Item, Machine, Supplementary Part, Machine Component
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   remove single primary key fields from TableRelations
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Machine Mgt. Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Def. Item Tracking Code"; Code[10])
        {
            Caption = 'Def. Item Tracking Code';
            TableRelation = "Item Tracking Code";
        }
        field(4; "Machine Nos."; Code[10])
        {
            Caption = 'Machine Nos.';
            TableRelation = "No. Series";
        }
        field(8; "Machine Type Nos."; Code[10])
        {
            Caption = 'Machine Type Nos.';
            TableRelation = "No. Series";
        }
        field(13; "Suppl. Part Type Nos."; Code[10])
        {
            Caption = 'Suppl. Part Type Nos.';
            TableRelation = "No. Series";
        }
        field(14; "Component Type Nos."; Code[10])
        {
            Caption = 'Component Type Nos.';
            TableRelation = "No. Series";
        }
        field(16; "Def. Unit of Measure"; Code[10])
        {
            Caption = 'Def. Unit of Measure';
            TableRelation = "Unit of Measure";
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

