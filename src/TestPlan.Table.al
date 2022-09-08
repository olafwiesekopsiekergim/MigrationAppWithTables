table 5034560 "Test Plan"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.00.02:T301 12.10.09 DEMSR.KHS
    //   Document Type Option / Caption changed
    // 
    // #QMW16.00.03 19.09.11 DEMSR.KHS
    //   SQL Data Type of field "Version" changed to Integer
    // 
    // #QMW16.00.03:T380 23.08.11 DEMSR.BKR
    //   Integration RA into QM
    // 
    // #QMW16.00.03.01:T401 10.02.12 DEMSR.KHS
    //   Text001 changed
    //   Field 170 External Document added
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    //   Name and ENU Caption changed: Valid through --> Valid to
    //   Text Constants changed: gctxCertifiedVersionExist,gctxErrEmptyDates
    //   Field Name and Caption changed: De.-/Certified by
    //   Variable UserID Set to 50 Chars
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.00.00.05:T507 04.10.13 DEMSR.KHS
    //   Correct Version List (delete RA)
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Change VAR UserID to UsersID
    //   Replace Find('-') by NOT ISEMPTY
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Plan';
    DataCaptionFields = "No.", Version, Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(4; Version; Code[20])
        {
            Caption = 'Version';
            Description = '#QMW16.00.03';
            Editable = false;
            SQLDataType = Integer;
        }
        field(6; "Valid from"; Date)
        {
            Caption = 'Valid from';
        }
        field(7; "Valid to"; Date)
        {
            Caption = 'Valid to';
        }
        field(37; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
        }
        field(115; Default; Option)
        {
            Caption = 'Default';
            OptionCaption = 'Internal, External';
            OptionMembers = Internal," External";
        }
        field(150; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Description = '#QMW16.00.00.02:T301';
            OptionCaption = 'Integrated Document,External Document';
            OptionMembers = "Integrated Document","External Document";
        }
        field(160; "External Document Path"; Text[250])
        {
            Caption = 'External Document Path';
        }
        field(170; "External Document"; BLOB)
        {
            Caption = 'External Document';
            Description = '#QMW16.00.03.01:T401';
        }
        field(215; "De.-/Certification Date"; Date)
        {
            Caption = 'De.-/Certification Date';
            Editable = false;
        }
        field(220; "De.-/Certified by"; Code[50])
        {
            Caption = 'De.-/Certified by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(230; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Item,Test Device';
            OptionMembers = Item,"Test Device";
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034560),
                                                         "No." = FIELD ("No."),
                                                         "Version No." = FIELD (Version),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034560),
                                                         "No." = FIELD ("No."),
                                                         "Version No." = FIELD (Version),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(310; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(320; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(330; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(400; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(405; "Ready for Certification"; Boolean)
        {
            Caption = 'Ready for Certification';
        }
        field(5034550; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
    }

    keys
    {
        key(Key1; "No.", Version)
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; "No.", "Valid from")
        {
        }
        key(Key4; Type, Status)
        {
        }
        key(Key5; Type, "No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Version, "Valid from", "Valid to", Type)
        {
        }
    }
}

