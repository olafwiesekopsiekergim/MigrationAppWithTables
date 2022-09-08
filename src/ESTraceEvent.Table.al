table 14123657 "ES Trace Event"
{
    Caption = 'Trace Event';

    fields
    {
        field(1; "Recording Code"; Code[30])
        {
            Caption = 'Recording Code';
            TableRelation = "ES Recording";
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(11; Name; Text[30])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(12; ID; Integer)
        {
            Caption = 'ID';
            Editable = false;
        }
        field(13; TextData; Text[100])
        {
            Caption = 'TextData';
        }
        field(14; ClientProcessID; Integer)
        {
            Caption = 'ClientProcessID';
            Editable = false;
        }
        field(15; LoginName; Text[100])
        {
            Caption = 'LoginName';
            Editable = false;
        }
        field(16; ApplicationName; Text[100])
        {
            Caption = 'ApplicationName';
            Editable = false;
        }
        field(17; SPID; Integer)
        {
            Caption = 'SPID';
            Editable = false;
        }
        field(18; NTUserName; Text[100])
        {
            Caption = 'NTUserName';
            Editable = false;
        }
        field(19; HostName; Text[100])
        {
            Caption = 'HostName';
        }
        field(20; DatabaseName; Text[100])
        {
            Caption = 'DatabaseName';
        }
        field(21; "TextData Start"; Text[250])
        {
            Caption = 'TextData Start';
            Editable = false;
        }
        field(22; "TextData From Statement"; Text[250])
        {
            Caption = 'TextData From Statement';
            Editable = false;
        }
        field(25; "TextData Length"; Integer)
        {
            Caption = 'TextData Length';
            Editable = false;
        }
        field(31; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = ' ,SELECT,INSERT,UPDATE,DELETE,Object';
            OptionMembers = " ",SELECT,INSERT,UPDATE,DELETE,"Object";
        }
        field(32; "Object Type"; Option)
        {
            Caption = 'Object Type';
            Editable = false;
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(33; "Object ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Object ID';
            Editable = false;
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(34; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "Read Required"; Boolean)
        {
            Caption = 'Read Required';
            Editable = false;
        }
        field(36; "Insert Required"; Boolean)
        {
            Caption = 'Insert Required';
            Editable = false;
        }
        field(37; "Modify Required"; Boolean)
        {
            Caption = 'Modify Required';
            Editable = false;
        }
        field(38; "Delete Required"; Boolean)
        {
            Caption = 'Delete Required';
            Editable = false;
        }
        field(39; "Execute Required"; Boolean)
        {
            Caption = 'Execute Required';
            Editable = false;
        }
        field(40; "Calculate Flowfield Required"; Boolean)
        {
            Caption = 'Calculate Flowfield Required';
            Editable = false;
        }
        field(41; "Table Text"; Text[250])
        {
            Caption = 'Table Text';
            Editable = false;
        }
        field(42; "Table Name Text"; Text[100])
        {
            Caption = 'Table Name Text';
            Editable = false;
        }
        field(45; "Trace not Complete"; Boolean)
        {
            Caption = 'Trace not Complete';
        }
        field(46; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
        }
        field(47; "NAV Processing Time"; Integer)
        {
            Caption = 'NAV Processing Time';
        }
        field(48; Reads; Decimal)
        {
            BlankZero = true;
            Caption = 'Reads';
            DecimalPlaces = 0 : 5;
        }
        field(49; Writes; Decimal)
        {
            BlankZero = true;
            Caption = 'Writes';
            DecimalPlaces = 0 : 5;
        }
        field(50; Duration; Decimal)
        {
            BlankZero = true;
            Caption = 'Duration';
            DecimalPlaces = 0 : 5;
        }
        field(51; RowCounts; Decimal)
        {
            BlankZero = true;
            Caption = 'RowCounts';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Recording Code", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Recording Code", ClientProcessID)
        {
        }
        key(Key3; "Recording Code", SPID, "Company Name")
        {
            SumIndexFields = Reads, Writes, Duration, RowCounts;
        }
    }

    fieldgroups
    {
    }
}

