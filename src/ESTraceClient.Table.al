table 14123659 "ES Trace Client"
{
    Caption = 'Trace Client';

    fields
    {
        field(1; "Recording Code"; Code[30])
        {
            Caption = 'Recording Code';
            TableRelation = "ES Recording";
        }
        field(2; SPID; Integer)
        {
            Caption = 'SPID';
        }
        field(3; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
        }
        field(11; LoginName; Text[100])
        {
            Caption = 'LoginName';
        }
        field(12; ApplicationName; Text[100])
        {
            Caption = 'ApplicationName';
        }
        field(13; ClientProcessID; Integer)
        {
            Caption = 'ClientProcessID';
        }
        field(14; "Include in Rec. Permissions"; Boolean)
        {
            Caption = 'Include in Rec. Permissions';
        }
        field(15; "Trace Events"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Trace Event" WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                        SPID = FIELD (SPID),
                                                        "Company Name" = FIELD ("Company Name"),
                                                        "Object Type" = FIELD ("Object Type Filter")));
            Caption = 'Trace Events';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; HostName; Text[100])
        {
            Caption = 'HostName';
        }
        field(17; DatabaseName; Text[100])
        {
            Caption = 'DatabaseName';
        }
        field(18; "Object Trace Events"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Trace Event" WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                        SPID = FIELD (SPID),
                                                        "Company Name" = FIELD ("Company Name"),
                                                        "Object ID" = FILTER (<> 0),
                                                        "Object Type" = FILTER (<> TableData)));
            Caption = 'Object Trace Events';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "TableData Trace Events"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Trace Event" WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                        SPID = FIELD (SPID),
                                                        "Company Name" = FIELD ("Company Name"),
                                                        "Object ID" = FILTER (<> 0),
                                                        "Object Type" = FILTER (TableData)));
            Caption = 'TableData Trace Events';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; Reads; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("ES Trace Event".Reads WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                            SPID = FIELD (SPID),
                                                            "Company Name" = FIELD ("Company Name")));
            Caption = 'Reads';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; Writes; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("ES Trace Event".Writes WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                             SPID = FIELD (SPID),
                                                             "Company Name" = FIELD ("Company Name")));
            Caption = 'Writes';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(22; Duration; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("ES Trace Event".Duration WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                               SPID = FIELD (SPID),
                                                               "Company Name" = FIELD ("Company Name")));
            Caption = 'Duration';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(23; RowCounts; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("ES Trace Event".RowCounts WHERE ("Recording Code" = FIELD ("Recording Code"),
                                                                SPID = FIELD (SPID),
                                                                "Company Name" = FIELD ("Company Name")));
            Caption = 'RowCounts';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(24; "Object Type Filter"; Option)
        {
            Caption = 'Object Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'TableData,Table,Form,Report,Dataport,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",Form,"Report",Dataport,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
    }

    keys
    {
        key(Key1; "Recording Code", SPID, "Company Name")
        {
            Clustered = true;
        }
        key(Key2; "Recording Code", DatabaseName, SPID)
        {
        }
    }

    fieldgroups
    {
    }
}

