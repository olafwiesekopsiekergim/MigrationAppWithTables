table 11102067 "OM - Field Compare Line"
{
    Caption = 'Field Compare Line';
    DataPerCompany = false;

    fields
    {
        field(1; "Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            Editable = false;
        }
        field(2; "Table Name"; Text[100])
        {
            Caption = 'Table Name';
            Editable = false;
        }
        field(10; "No."; Integer)
        {
            Caption = 'No.';
            Editable = false;
        }
        field(11; Name; Text[100])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(12; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = ' ,TableFilter,RecordID,Text,Date,Time,DateFormula,Decimal,Binary,BLOB,Boolean,Integer,Code,Option,BigInteger,Duration,GUID,DateTime';
            OptionMembers = " ",TableFilter,RecordID,Text,Date,Time,DateFormula,Decimal,Binary,BLOB,Boolean,"Integer","Code",Option,BigInteger,Duration,GUID,DateTime;
        }
        field(13; Length; Integer)
        {
            BlankZero = true;
            Caption = 'Length';
            Editable = false;
        }
        field(14; "Type Name"; Text[100])
        {
            Caption = 'Type Name';
            Editable = false;
        }
        field(15; Class; Option)
        {
            Caption = 'Class';
            Editable = false;
            OptionCaption = ' ,FlowField,FlowFilter';
            OptionMembers = " ",FlowField,FlowFilter;
        }
        field(16; Enabled; Boolean)
        {
            Caption = 'Enabled';
            Editable = false;
        }
        field(17; "SQL Data Type"; Option)
        {
            Caption = 'SQL Data Type';
            Editable = false;
            OptionCaption = ' ,Varchar,Integer,Variant,BigInteger';
            OptionMembers = " ",Varchar,"Integer",Variant,BigInteger;
        }
        field(18; "Option String"; Text[250])
        {
            Caption = 'Option String';
            Editable = false;
        }
        field(21; "New Name"; Text[100])
        {
            Caption = 'New Name';
            Editable = false;
        }
        field(22; "New Type"; Option)
        {
            Caption = 'New Type';
            Editable = false;
            OptionCaption = ' ,TableFilter,RecordID,Text,Date,Time,DateFormula,Decimal,Binary,BLOB,Boolean,Integer,Code,Option,BigInteger,Duration,GUID,DateTime';
            OptionMembers = " ",TableFilter,RecordID,Text,Date,Time,DateFormula,Decimal,Binary,BLOB,Boolean,"Integer","Code",Option,BigInteger,Duration,GUID,DateTime;
        }
        field(23; "New Length"; Integer)
        {
            BlankZero = true;
            Caption = 'New Length';
            Editable = false;
        }
        field(24; "New Type Name"; Text[100])
        {
            Caption = 'New Type Name';
            Editable = false;
        }
        field(25; "New Class"; Option)
        {
            Caption = 'New Class';
            Editable = false;
            OptionCaption = ' ,FlowField,FlowFilter';
            OptionMembers = " ",FlowField,FlowFilter;
        }
        field(26; "New Enabled"; Boolean)
        {
            Caption = 'New Enabled';
            Editable = false;
        }
        field(27; "New SQL Data Type"; Option)
        {
            Caption = 'New SQL Data Type';
            Editable = false;
            OptionCaption = ' ,Varchar,Integer,Variant,BigInteger';
            OptionMembers = " ",Varchar,"Integer",Variant,BigInteger;
        }
        field(28; "New Option String"; Text[250])
        {
            Caption = 'New Option String';
            Editable = false;
        }
        field(30; Different; Boolean)
        {
            Caption = 'Different';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Table No.", "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

