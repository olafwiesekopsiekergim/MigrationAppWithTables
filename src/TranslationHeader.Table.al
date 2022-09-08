table 5013402 "Translation Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.00:T003 17.09.12 DEMSR.SSZ
    //   #Created new table
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Translation Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(11; "Use Alternative Language"; Boolean)
        {
            Caption = 'Use Alternative Language';
        }
        field(12; Text; Text[250])
        {
            CalcFormula = Lookup ("Translation Line".Text WHERE ("Translation No." = FIELD ("No."),
                                                                "Language Code" = FIELD ("Language Filter")));
            Caption = 'Text';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Language Filter"; Code[10])
        {
            Caption = 'Language Filter';
            FieldClass = FlowFilter;
            TableRelation = Language;
            ValidateTableRelation = false;
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
        field(18; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

