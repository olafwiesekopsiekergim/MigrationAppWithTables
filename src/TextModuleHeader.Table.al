table 5060602 "Text Module Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00.01:A1101      03.06.09 DEWUE.FB Missing Filter at Calcfield "Use In Area Exist":
    //                                             Added Filter to Field "Area Code" with field "Use in Area Filter"
    // #TMW16.00:A1208         21.07.10 DEMSR.SSZ Don't allow to rename TM Header
    // #TMW17.00:A001 04.04.12 DEMSR.SSZ
    //   #Replace FORM with PAGE in option field, User ID
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 29.04.14 DEMSR.SSZ
    //   #For upgrade new field 5060612
    //   #Deleted "Code 3" to "Code 8", "Text Type" and several FlowFields/Filters
    // 
    // #DMW16.00.01.99:A1000   19.04.10 DEMSR.SSZ New Primary Key fields : Field 7,8,9, also used in Flowfields 310, 380

    Caption = 'Text Module Header';

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
        }
        field(20; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(21; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(22; "All Languages"; Boolean)
        {
            Caption = 'All Languages';
        }
        field(23; "Table Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = CONST (Table),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Table ID")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Header/Footer"; Option)
        {
            Caption = 'Header/Footer';
            OptionCaption = 'Header,Footer';
            OptionMembers = Header,Footer;
        }
        field(25; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(200; "Creation date"; Date)
        {
            Caption = 'Creation date';
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
            Caption = 'Last Modified by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(400; "Enh. Language Code"; Code[13])
        {
            Caption = 'Enh. Language Code';
            Editable = false;
        }
        field(500; "Sorting No."; Integer)
        {
            Caption = 'Sorting No.';
        }
        field(5060612; "Got Text Set ID"; Integer)
        {
            Description = '#TMW17.10.01:T100';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Code 1", "Code 2", "Language Code", "Text No.")
        {
            Clustered = true;
        }
        key(Key2; "Table ID", "Code 1", "Code 2", "Language Code", "Sorting No.")
        {
        }
    }

    fieldgroups
    {
    }
}

