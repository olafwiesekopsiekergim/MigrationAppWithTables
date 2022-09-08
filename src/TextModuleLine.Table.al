table 5060603 "Text Module Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID
    // #TMW17.00:T001 14.08.12 DEMSR.SSZ
    //   #New field for basic formating in reports
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 07.08.14 DEMSR.SSZ
    //   #New Text Module technique
    //   #Deleted fields "Code 3" to "Code 8" and changed PK
    // #TMW18.00.00.02:T500 24.02.15 DEMSR.SSZ
    //   #Changed lenght of field Text from 85 to 100
    // 
    // #DMW16.00.01.99:A1000   19.04.10 DEMSR.SSZ New Primary Key fields : Field 7,8,9
    // 
    // cc|formatted documents (CCFD)
    // cc|formatted documents - Flow Text Editor (CCFTE)
    // 
    // #FDW18.00.05:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration
    // 
    // #FTEW18.00:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration

    Caption = 'Text Module Line';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(2; "Code 1"; Code[20])
        {
            Caption = 'Code 1';
        }
        field(3; "Code 2"; Code[20])
        {
            Caption = 'Code 2';
        }
        field(15; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language.Code;
        }
        field(16; "Text No."; Integer)
        {
            Caption = 'Text No.';
            Editable = false;
        }
        field(17; "Line No."; Integer)
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
            Description = '#TMW17.00:T001';
        }
        field(60; Bold; Boolean)
        {
            Caption = 'Bold';
            Description = '#TMW17.00:T001';
        }
        field(70; Underline; Boolean)
        {
            Caption = 'Underline';
            Description = '#TMW17.00:T001';
        }
        field(80; Color; Option)
        {
            Caption = 'Color';
            Description = '#TMW17.00:T001';
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
        key(Key1; "Table ID", "Code 1", "Code 2", "Language Code", "Text No.", "Line No.")
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

