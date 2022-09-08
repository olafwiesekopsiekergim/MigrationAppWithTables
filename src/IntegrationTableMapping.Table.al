table 5335 "Integration Table Mapping"
{
    Caption = 'Integration Table Mapping';

    fields
    {
        field(1; Name; Code[20])
        {
            Caption = 'Name';
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(3; "Integration Table ID"; Integer)
        {
            Caption = 'Integration Table ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(4; "Synch. Codeunit ID"; Integer)
        {
            Caption = 'Synch. Codeunit ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Codeunit));
        }
        field(5; "Integration Table UID Fld. No."; Integer)
        {
            Caption = 'Integration Table UID Fld. No.';
            Description = 'Integration Table Unique Identifier Field No.';
        }
        field(6; "Int. Tbl. Modified On Fld. No."; Integer)
        {
            Caption = 'Int. Tbl. Modified On Fld. No.';
            Description = 'Integration Table Modified On Field No.';
        }
        field(8; "Table Config Template Code"; Code[10])
        {
            Caption = 'Table Config Template Code';
            TableRelation = "Config. Template Header".Code WHERE ("Table ID" = FIELD ("Table ID"));
        }
        field(9; "Int. Tbl. Config Template Code"; Code[10])
        {
            Caption = 'Int. Tbl. Config Template Code';
            TableRelation = "Config. Template Header".Code WHERE ("Table ID" = FIELD ("Integration Table ID"));
        }
        field(10; Direction; Option)
        {
            Caption = 'Direction';
            OptionCaption = 'Bidirectional,ToIntegrationTable,FromIntegrationTable';
            OptionMembers = Bidirectional,ToIntegrationTable,FromIntegrationTable;
        }
        field(11; "Int. Tbl. Caption Prefix"; Text[30])
        {
            Caption = 'Int. Tbl. Caption Prefix';
        }
        field(12; "Synch. Int. Tbl. Mod. On Fltr."; DateTime)
        {
            Caption = 'Synch. Int. Tbl. Mod. On Fltr.';
            Description = 'Scheduled synch. Integration Table Modified On Filter';
        }
        field(13; "Synch. Modified On Filter"; DateTime)
        {
            Caption = 'Synch. Modified On Filter';
            Description = 'Scheduled synch. Modified On Filter';
        }
        field(14; "Table Filter"; BLOB)
        {
            Caption = 'Table Filter';
        }
        field(15; "Integration Table Filter"; BLOB)
        {
            Caption = 'Integration Table Filter';
        }
        field(16; "Synch. Only Coupled Records"; Boolean)
        {
            Caption = 'Synch. Only Coupled Records';
            InitValue = true;
        }
        field(17; "Parent Name"; Code[20])
        {
            Caption = 'Parent Name';
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

