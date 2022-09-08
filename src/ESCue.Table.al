table 14123532 "ES Cue"
{
    Caption = 'ES Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; Logins; Integer)
        {
            CalcFormula = Count ("ES Login");
            Caption = 'Logins';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Role Groups"; Integer)
        {
            CalcFormula = Count ("ES Role Group");
            Caption = 'Permission Groups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Company Groups"; Integer)
        {
            CalcFormula = Count ("ES Company Group");
            Caption = 'Company Groups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Role Details"; Integer)
        {
            CalcFormula = Count ("ES Role Detail");
            Caption = 'Permission Set Details';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; Recordings; Integer)
        {
            CalcFormula = Count ("ES Recording");
            Caption = 'Recordings';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Restore Points"; Integer)
        {
            CalcFormula = Count ("ES Restore Point");
            Caption = 'Restore Points';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Logins (Windows)"; Integer)
        {
            CalcFormula = Count ("ES Login" WHERE (Type = CONST (Windows)));
            Caption = 'Users';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; Roles; Integer)
        {
            CalcFormula = Count ("ES Role");
            Caption = 'Permission Sets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; Relations; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation");
            Caption = 'Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; Variables; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable");
            Caption = 'Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "User Security Setups"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES User Security Setup");
            Caption = 'User Security Setups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Field Level Security Codes"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Security Code");
            Caption = 'Field Level Security Codes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Data Security Codes"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Code");
            Caption = 'Data Security Codes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "NAS Process Entries"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES NAS Process Entry");
            Caption = 'NAS Process Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "FLADS Group Members"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Group Member");
            Caption = 'Group Members';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "User Filters"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES User Filter");
            Caption = 'User Filters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
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

