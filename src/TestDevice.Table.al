table 5034600 "Test Device"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R216 24.08.11 DEMSR.KHS
    //   New fields: Connection to-Item No.
    //               Connection to-Item Description
    //               Vendor Name
    //               Lot No.
    //               Serial No.
    //               Purchase Price
    //               Warranty Date
    //               Inventory No.
    //               Last Tester
    //               Substitute Test Device
    //   Table Relation added on field Test Device Group
    // 
    // #QMW16.00.03:01:T514 11.01.12 DEMSR.KHS
    //   Caption for field "Substitute Test Device" added
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Remove Single primary key field from table relation
    //   Change VAR name: UserID to UsersID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Device';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(6; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
        }
        field(10; Validated; Boolean)
        {
            Caption = 'Validated';
        }
        field(15; Responsible; Code[50])
        {
            Caption = 'Responsible';
            Description = '#QMW17.00:104';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(20; "Date of First Release"; Date)
        {
            Caption = 'Date of First Release';
        }
        field(26; "Next Date Test Required"; Date)
        {
            Caption = 'Next Date Test Required';
        }
        field(28; "Test Cycle"; Code[10])
        {
            Caption = 'Test Cycle';
            DateFormula = true;
        }
        field(29; "Last Test Date"; Date)
        {
            Caption = 'Last Test Date';
        }
        field(50; Comment; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034600),
                                                         "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(55; "Read off Precision"; Decimal)
        {
            Caption = 'Read off Precision';
        }
        field(56; "Read off Unit"; Code[10])
        {
            Caption = 'Read off Unit';
            TableRelation = "Unit of Measure";
        }
        field(60; "Default Test Plan No."; Code[20])
        {
            Caption = 'Default Test Plan No.';
            TableRelation = "Test Plan" WHERE (Type = CONST ("Test Device"));
        }
        field(65; "Test Order Exist"; Boolean)
        {
            CalcFormula = Exist ("Test Order" WHERE ("Test Destination Type" = CONST ("Test Device"),
                                                    "Test Destination No." = FIELD ("No."),
                                                    Status = FILTER (< Finished)));
            Caption = 'Test Order Exist';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Certified,Blocked';
            OptionMembers = Certified,Blocked;
        }
        field(76; "Blocking Reason"; Text[30])
        {
            Caption = 'Blocking Reason';
        }
        field(95; "Working Range"; Text[30])
        {
            Caption = 'Working Range';
        }
        field(100; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(105; Certificate; Text[30])
        {
            Caption = 'Certificate';
        }
        field(110; "Test Device Group"; Code[10])
        {
            Caption = 'Test Device Group';
            TableRelation = "Test Device Group";
        }
        field(120; Department; Text[30])
        {
            Caption = 'Department';
        }
        field(140; Selfmade; Boolean)
        {
            Caption = 'Selfmade';
        }
        field(200; State; Option)
        {
            Caption = 'State';
            OptionCaption = '1,2,3,4,5,6';
            OptionMembers = "1","2","3","4","5","6";
        }
        field(210; "Date of Purchase"; Date)
        {
            Caption = 'Date of Purchase';
        }
        field(230; Manufacturer; Text[30])
        {
            Caption = 'Manufacturer';
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
        field(340; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034600),
                                                         "No." = FIELD ("No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(350; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034600),
                                                         "No." = FIELD ("No."),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(400; "Connection to-Item No."; Code[20])
        {
            Caption = 'Connection to-Item No.';
            TableRelation = Item;
        }
        field(410; "Connection to-Item Description"; Text[30])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Connection to-Item No.")));
            Caption = 'Connection to-Item Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(420; "Vendor Name"; Text[30])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Vendor Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(430; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(440; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(450; "Purchase Price"; Decimal)
        {
            Caption = 'Purchase Price';
        }
        field(460; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(470; "Inventory No."; Code[20])
        {
            Caption = 'Inventory No.';
        }
        field(480; "Last Tester"; Code[50])
        {
            Caption = 'Last Tester';
            Description = '#QMW17.00:104';
            TableRelation = User."User Name";
        }
        field(490; "Substitute Test Device"; Boolean)
        {
            Caption = 'Substitute Test Device';
            Description = '#QMW16.00.03:01:T514';
        }
        field(500; "External Document"; BLOB)
        {
            Caption = 'External Document';
            Description = '#QMW17.00:104';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Status, "Next Date Test Required")
        {
        }
    }

    fieldgroups
    {
    }
}

