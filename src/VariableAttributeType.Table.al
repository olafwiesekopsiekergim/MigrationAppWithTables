table 5013555 "Variable/Attribute Type"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:27:01 #Delete data in new tables
    // :DMW15.02:6:01 #Delete data from table "Attribute Term"
    // :DMW15.02.00.01:6:01 #DELETEALL is needed
    // :DMW16.00.01:21:01 #New field 110 "Test Value (alphanum.)"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable code: 10 -> 30

    Caption = 'Variable/Attribute Type';
    DataCaptionFields = "Code";

    fields
    {
        field(10; "Code"; Code[30])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; "Global Variable"; Boolean)
        {
            Caption = 'Global Variable';
        }
        field(100; "Test Value"; Decimal)
        {
            Caption = 'Test Value';
        }
        field(110; "Test Value (alphanum.)"; Text[50])
        {
            Caption = 'Test Value (alphanum.)';
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

