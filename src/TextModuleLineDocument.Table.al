table 5060613 "Text Module Line Document"
{
    // Copyright (Exclusive Rights): Cosmo Consult Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW17.10.01:T100 12.09.14 DEMSR.SSZ
    //   #Created Table
    // 
    // cc|formatted documents (CCFD)
    // cc|formatted documents - Flow Text Editor (CCFTE)
    // 
    // #FDW18.00.05:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration
    // 
    // #FTEW18.00:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration

    PasteIsValid = false;

    fields
    {
        field(10; "Text ID"; Integer)
        {
            TableRelation = "Text Module Header Document";
        }
        field(11; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(18; Text; Text[100])
        {
            Caption = 'Text';
        }
        field(50; Italic; Boolean)
        {
            Caption = 'Italic';
        }
        field(60; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(70; Underline; Boolean)
        {
            Caption = 'Underline';
        }
        field(80; Color; Option)
        {
            Caption = 'Color';
            OptionCaption = 'Default,Black,Blue,Red,Green,Yellow';
            OptionMembers = Default,Black,Blue,Red,Green,Yellow;
        }
        field(100; "Print Mgt. Code"; Code[10])
        {
            Caption = 'Print Mgt. Code';
            Description = '#TMW17.10.01:T001';
            TableRelation = "Text Module Print Management";
        }
        field(200; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(201; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(202; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(203; "Last Modified by"; Code[50])
        {
            Caption = 'Last modified by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(1000; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            Description = 'Only for Info where the Text comes from';
        }
        field(1010; "Source Code 1"; Code[20])
        {
            Caption = 'Source Code 1';
            Description = 'Only for Info where the Text comes from';
        }
        field(1020; "Source Code 2"; Code[20])
        {
            Caption = 'Source Code 2';
            Description = 'Only for Info where the Text comes from';
        }
        field(1030; "Source Text No."; Integer)
        {
            Caption = 'Source Text No.';
            Description = 'Only for Info where the Text comes from';
        }
        field(50000; RMD; Boolean)
        {
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
        key(Key1; "Text ID", "Line No.")
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

