table 14123518 "ES Restore Point Object"
{
    Caption = 'Restore Point Object';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(2; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
        }
        field(3; ID; Integer)
        {
            Caption = 'ID';
        }
        field(4; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(5; Modified; Boolean)
        {
            Caption = 'Modified';
        }
        field(6; Compiled; Boolean)
        {
            Caption = 'Compiled';
        }
        field(8; "BLOB Size"; Integer)
        {
            Caption = 'BLOB Size';
        }
        field(9; "DBM Table No."; Integer)
        {
            Caption = 'DBM Table No.';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(11; Time; Time)
        {
            Caption = 'Time';
        }
        field(12; "Version List"; Text[250])
        {
            Caption = 'Version List';
        }
        field(20; Caption; Text[250])
        {
            Caption = 'Caption';
        }
        field(1001; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
            NotBlank = true;
            TableRelation = "ES Restore Point".Code;
        }
        field(1002; "Exists in Live"; Boolean)
        {
            CalcFormula = Exist (Object WHERE (Type = FIELD (Type),
                                              "Company Name" = FIELD ("Company Name"),
                                              ID = FIELD (ID)));
            Caption = 'Exists in Live';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1003; "Exists in Easy Security"; Boolean)
        {
            CalcFormula = Exist ("ES Object" WHERE (Type = FIELD (Type),
                                                   "Company Name" = FIELD ("Company Name"),
                                                   ID = FIELD (ID)));
            Caption = 'Exists in Easy Security';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Version Code", Type, "Company Name", ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

