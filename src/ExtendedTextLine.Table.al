table 280 "Extended Text Line"
{
    // cc|formatted documents (CCFD)
    // cc|formatted documents - Flow Text Editor (CCFTE)
    // 
    // #FDW18.00.05:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration
    // 
    // #FTEW18.00:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration

    Caption = 'Extended Text Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Standard Text,G/L Account,Item,Resource';
            OptionMembers = "Standard Text","G/L Account",Item,Resource;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("Standard Text")) "Standard Text"
            ELSE
            IF ("Table Name" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Table Name" = CONST (Item)) Item
            ELSE
            IF ("Table Name" = CONST (Resource)) Resource;
        }
        field(3; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(4; "Text No."; Integer)
        {
            Caption = 'Text No.';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(6; Text; Text[50])
        {
            Caption = 'Text';
        }
        field(5305932; "FD Blob"; BLOB)
        {
            Caption = 'FD Blob';
            Description = 'CCFD,CCFTE';
        }
        field(5305933; "FD SHA-256"; Text[64])
        {
            Caption = 'FD SHA-256';
            Description = 'CCFD,CCFTE';
        }
        field(5305934; "FD Size KB"; Decimal)
        {
            Caption = 'FD Size KB';
            DecimalPlaces = 0 : 5;
            Description = 'CCFD,CCFTE';
        }
        field(5305935; "FD Frame No."; Integer)
        {
            Caption = 'FD Frame No.';
            Description = 'CCFD,CCFTE';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Language Code", "Text No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "FD Frame No.")
        {
        }
    }

    fieldgroups
    {
    }
}

