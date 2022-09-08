table 5012661 "Concurrent Calculation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW16.00.01:T104 20.07.11 DEMSR.IST
    //   New field 6 "Item Filter"
    // 
    // #CAW17.00:103 30.08.12 DEMSR.KHS
    //   Create Concurrent Lines for new Line Types: "Asm. Order (Expected)","Asm. Order (Actual)"
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #DMW16.00.02:T114 27.10.10 DEMSR.SSZ
    //   Added options for CTO
    // 
    // #DMW16.00.02.03:T115 21.06.11 DEMSR.SSZ
    //   #When new Concurrent Calculation gets created from a CTO document, only insert needed Concurrent Calc. Lines
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #AMPW17.00:T105 17.07.13 DEMSR.IST
    //   Restictions for Concurrent Calculation Lines creation
    // 
    // PRCA01 PRODUKT.01:AMP0013 12.06.15 DENUE.ALAN Integration Jobs

    Caption = 'Concurrent Calculation';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(4; "Calculation Schedule No."; Code[20])
        {
            Caption = 'Calculation Schedule No.';
            TableRelation = "Calculation Schedule Header"."No." WHERE (Status = CONST (Certified));
        }
        field(5; "Calculation Schedule Desc."; Text[50])
        {
            CalcFormula = Lookup ("Calculation Schedule Header".Description WHERE ("No." = FIELD ("Calculation Schedule No.")));
            Caption = 'Calculation Schedule Desc.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Item Filter"; Code[20])
        {
            Caption = 'Item Filter';
            Description = '#CAW16.00.01:T104';
            TableRelation = Item."No.";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

