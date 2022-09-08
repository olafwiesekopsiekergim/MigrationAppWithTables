table 5013403 "Translation Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.00:T003 17.09.12 DEMSR.SSZ
    //   #Created new table
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Translation Line';

    fields
    {
        field(1; "Translation No."; Code[20])
        {
            Caption = 'Translation No.';
            TableRelation = "Translation Header";
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(10; Text; Text[250])
        {
        }
        field(14; "Date Created"; DateTime)
        {
            Caption = 'Date Created';
            Editable = false;
        }
        field(15; "User Created"; Code[50])
        {
            Caption = 'User Created';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(16; "Last Date Modified"; DateTime)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(17; "Last User Modified"; Code[50])
        {
            Caption = 'Last User Modified';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Translation No.", "Language Code")
        {
            Clustered = true;
        }
        key(Key2; Text)
        {
        }
    }

    fieldgroups
    {
    }
}

