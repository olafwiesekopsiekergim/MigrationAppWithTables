table 5013576 "Standard Operation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:6:01 #Translated field 40
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Standard Operation';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Process Code';
            NotBlank = true;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; Duration; Code[10])
        {
            Caption = 'Duration';
            DateFormula = true;
        }
        field(40; "Operation Type"; Code[10])
        {
            Caption = 'Operation Type';
            TableRelation = "Operation Type";
        }
        field(50; "Routing Link"; Code[10])
        {
            Caption = 'Routing Link';
            TableRelation = "Operation Routing Link";
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

