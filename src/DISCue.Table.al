table 5100901 "DIS - Cue"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Data Integration Suite Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(100; Mappings; Integer)
        {
            CalcFormula = Count ("DIS - Mapping");
            Caption = 'Mappings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Mapping Entries Processed"; Integer)
        {
            CalcFormula = Count ("DIS - Mapping Entry" WHERE (Status = CONST (Processed)));
            Caption = 'Map. Entries Processed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(121; "Mapping Entries Error"; Integer)
        {
            CalcFormula = Count ("DIS - Mapping Entry" WHERE (Status = CONST (Error)));
            Caption = 'Map. Entries with Error';
            Editable = false;
            FieldClass = FlowField;
        }
        field(150; "Open Mapping Versions"; Integer)
        {
            CalcFormula = Count ("DIS - Mapping Version" WHERE (Status = CONST (Open)));
            Caption = 'Open Mapping Versions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(151; "Released Mapping Versions"; Integer)
        {
            CalcFormula = Count ("DIS - Mapping Version" WHERE (Status = CONST (Released)));
            Caption = 'Released Mapping Vers.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; Partners; Integer)
        {
            CalcFormula = Count ("DIS - Partner");
            Caption = 'Partners';
            Editable = false;
            FieldClass = FlowField;
        }
        field(210; "Partner Mappings"; Integer)
        {
            CalcFormula = Count ("DIS - Partner Mapping");
            Caption = 'Partner Mappings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(220; "Partner Msgs. Received Proc."; Integer)
        {
            CalcFormula = Count ("DIS - Partner Received Message" WHERE (Status = CONST (Processed)));
            Caption = 'Processed Received Messages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(221; "Partner Msgs. Received Error"; Integer)
        {
            CalcFormula = Count ("DIS - Partner Received Message" WHERE (Status = FILTER (Error)));
            Caption = 'Received Messages with Error';
            Editable = false;
            FieldClass = FlowField;
        }
        field(225; "Partner Msgs. Sent Successful"; Integer)
        {
            CalcFormula = Count ("DIS - Partner Sent Message" WHERE (Status = CONST (Sent)));
            Caption = 'Success. Sent Messages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(226; "Partner Msgs. Sent Error"; Integer)
        {
            CalcFormula = Count ("DIS - Partner Sent Message" WHERE (Status = FILTER (Error)));
            Caption = 'Sent Messages with Error';
            Editable = false;
            FieldClass = FlowField;
        }
        field(250; Sequences; Integer)
        {
            CalcFormula = Count ("DIS - Sequence Header");
            Caption = 'Sequences';
            Editable = false;
            FieldClass = FlowField;
        }
        field(275; "Email Queue Open"; Integer)
        {
            CalcFormula = Count ("DIS - Email Queue" WHERE (Status = CONST (Created)));
            Caption = 'Emails Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(276; "Email Queue Error"; Integer)
        {
            CalcFormula = Count ("DIS - Email Queue" WHERE (Status = CONST (Error)));
            Caption = 'Emails Errors';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Record Pools"; Integer)
        {
            CalcFormula = Count ("DIS - Record Pool");
            Caption = 'Record Pools';
            Editable = false;
            FieldClass = FlowField;
        }
        field(350; Conversions; Integer)
        {
            CalcFormula = Count ("DIS - Conversion Header");
            Caption = 'Conversions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(360; Categeories; Integer)
        {
            CalcFormula = Count ("DIS - Category");
            Caption = 'Categories';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

