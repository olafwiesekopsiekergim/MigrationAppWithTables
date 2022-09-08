table 5013565 "Temp Search Tree Repres."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10:T101 17.10.13 DEMSR.SSZ
    //   use SESSIONID instead of obsolete Session table
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Replace table 5013563 with 5013555
    //   #Delete CaptionClass because it didn't work on current version. Created new fields 200..260
    //   #Deleted function GetSessionID because it's a system function now

    Caption = 'Temp Search Tree Representation';
    DataCaptionFields = Item, Characteristic;

    fields
    {
        field(5; "Session ID"; Integer)
        {
            Caption = 'Session ID';
        }
        field(10; Item; Code[20])
        {
            Caption = 'Item';
            NotBlank = true;
            TableRelation = Item;
        }
        field(20; Characteristic; Code[30])
        {
            Caption = 'Characteristic';
            NotBlank = true;
            TableRelation = "Variable/Attribute Type";
        }
        field(100; "Measurement 1"; Decimal)
        {
            Caption = 'Measurement 1';
        }
        field(110; "Measurement 2"; Decimal)
        {
            Caption = 'Measurement 2';
        }
        field(120; "Measurement 3"; Decimal)
        {
            Caption = 'Measurement 3';
        }
        field(130; "Measurement 4"; Decimal)
        {
            Caption = 'Measurement 4';
        }
        field(140; "Measurement 5"; Decimal)
        {
            Caption = 'Measurement 5';
        }
        field(150; "Measurement 6"; Decimal)
        {
            Caption = 'Measurement 6';
        }
        field(200; "Var 1"; Text[80])
        {
            Caption = 'Var 1';
            Description = '#DMW17.10.01:T102';
        }
        field(210; "Var 2"; Text[80])
        {
            Caption = 'Var 2';
            Description = '#DMW17.10.01:T102';
        }
        field(220; "Var 3"; Text[80])
        {
            Caption = 'Var 3';
            Description = '#DMW17.10.01:T102';
        }
        field(230; "Var 4"; Text[80])
        {
            Caption = 'Var 4';
            Description = '#DMW17.10.01:T102';
        }
        field(240; "Var 5"; Text[80])
        {
            Caption = 'Var 5';
            Description = '#DMW17.10.01:T102';
        }
        field(250; "Var 6"; Text[80])
        {
            Caption = 'Var 6';
            Description = '#DMW17.10.01:T102';
        }
        field(85030; "Full Text"; Code[210])
        {
            CalcFormula = Lookup (Item."Full Text" WHERE ("No." = FIELD (Item)));
            Caption = 'Full Text';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Session ID", Item, Characteristic)
        {
            Clustered = true;
        }
        key(Key2; "Session ID", Characteristic, Item)
        {
        }
    }

    fieldgroups
    {
    }
}

