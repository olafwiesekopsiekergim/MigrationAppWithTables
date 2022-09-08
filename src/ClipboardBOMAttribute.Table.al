table 5013686 "Clipboard BOM Attribute"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW16.00.01:21:01 #Inserted new field 75 "Value (alphanum.)"
    // :DMW16.00.01:31:01 #new field 100 "Calc. after Line"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Clipboard BOM Attribute';

    fields
    {
        field(50; Attribute; Code[30])
        {
            Caption = 'Attribute';
        }
        field(60; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(70; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(75; "Value (alphanum.)"; Text[50])
        {
            Caption = 'Value (alphanum.)';
            Description = ':DMW16.00.01:21:01';
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
            Description = ':DMW16.00.01:31:01';
        }
        field(85150; "Formula Value"; Text[250])
        {
            Caption = 'Formula Value';
        }
        field(2000000; "Source Table"; Integer)
        {
            Caption = 'Source Table';
        }
        field(2000010; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
        field(2000020; "Sourcel Code 2"; Code[20])
        {
            Caption = 'Sourcel Code 2';
        }
        field(2000030; "Source Entry No."; Integer)
        {
            Caption = 'Source Entry No.';
        }
        field(2000040; "Source Entry No. 2"; Integer)
        {
            Caption = 'Source Entry No. 2';
        }
    }

    keys
    {
        key(Key1; "Source Table", "Source Code", "Sourcel Code 2", "Source Entry No.", "Source Entry No. 2")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

