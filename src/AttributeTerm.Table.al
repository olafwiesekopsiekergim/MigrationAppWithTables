table 5013571 "Attribute Term"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00.01:21:01 #New Parameter in function to use alphanumeric values
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Attribute Term';
    DataCaptionFields = "Attribute Code";

    fields
    {
        field(10; "Attribute Code"; Code[30])
        {
            Caption = 'Attribute Code';
            NotBlank = true;
            TableRelation = "Variable/Attribute Type".Code WHERE (Code = FIELD ("Attribute Code"));
        }
        field(20; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(100; Description; Text[30])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Attribute Code", Value)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

