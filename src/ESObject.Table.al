table 14123508 "ES Object"
{
    Caption = 'Object';
    DataCaptionFields = Type, ID, Name;

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
        field(12; "Version List"; Text[80])
        {
            Caption = 'Version List';
        }
        field(20; Caption; Text[250])
        {
            Caption = 'Caption';
        }
    }

    keys
    {
        key(Key1; Type, "Company Name", ID)
        {
            Clustered = true;
        }
        key(Key2; Type, ID)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Type, "Company Name", ID, Name)
        {
        }
    }
}

