table 5034552 "QM Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Update Table relation (Language Code) to comply with guidelines
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QM Comment Line';
    Permissions = TableData "QM Comment Line" = rid;

    fields
    {
        field(1; Type; Integer)
        {
            Caption = 'Type';
            NotBlank = true;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = IF (Type = CONST (5034590)) "Test Property"
            ELSE
            IF (Type = CONST (5034580)) "Test Property Set"
            ELSE
            IF (Type = CONST (5034560)) "Test Plan"
            ELSE
            IF (Type = CONST (5034570)) "Test Order"
            ELSE
            IF (Type = CONST (5034600)) "Test Device";
        }
        field(3; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(4; "Version No."; Code[20])
        {
            Caption = 'Version No.';
            TableRelation = IF (Type = CONST (5034560)) "Test Plan".Version WHERE ("No." = FIELD ("No."));
        }
        field(5; "Int 1"; Integer)
        {
            Caption = 'Int 1';
        }
        field(6; "Int 2"; Integer)
        {
            Caption = 'Int 2';
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(9; Comment; Text[100])
        {
            Caption = 'Comment';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(20; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(25; Internal; Boolean)
        {
            Caption = 'Internal';
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Code", "Version No.", "Int 1", "Int 2", Internal, "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

