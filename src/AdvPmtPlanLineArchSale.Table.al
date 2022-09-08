table 5013507 "Adv. Pmt. Plan Line Arch. Sale"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // APTW:#DMW17.00:A001 17.07.12 DEMSR.SSZ
    //   #Changes because of NAV 7: User are now Code 50
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Advance Payment Plan Line Archive Sale';

    fields
    {
        field(2; User; Code[50])
        {
            Caption = 'User';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
        }
        field(4; Time; Time)
        {
            Caption = 'Time';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
        }
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(30; Modality; Code[10])
        {
            Caption = 'Modality';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Advance Payment Modality".Code WHERE (Division = CONST (Sale));
        }
        field(40; Description; Text[30])
        {
            Caption = 'Description';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(50; Type; Option)
        {
            Caption = 'Type';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = 'Percent,Absolute';
            OptionMembers = Percent,Absolute;
        }
        field(60; Value; Decimal)
        {
            Caption = 'Value';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(70; Amount; Decimal)
        {
            Caption = 'Amount';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(80; Secured; Boolean)
        {
            Caption = 'Secured';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(85; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = Currency;
        }
        field(90; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            MinValue = 0;
        }
        field(100; Invoice; Boolean)
        {
            Caption = 'Invoice';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(110; Invoiced; Boolean)
        {
            Caption = 'Invoiced';
            Description = 'APTW:DMW15.01:58:01';
            Editable = true;
        }
        field(120; "Posting Date"; Date)
        {
            Caption = 'Invoice Date';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(130; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Payment Terms";
        }
        field(140; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(150; "Unposted Invoices"; Integer)
        {
            Caption = 'Unposted Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(160; "Posted Invoices"; Integer)
        {
            Caption = 'Posted Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(170; "Unposted Invoice No."; Code[20])
        {
            Caption = 'Unposted Invoice No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST (Invoice));
        }
        field(180; "Posted Invoice No."; Code[20])
        {
            Caption = 'Posted Invoice No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Sales Invoice Header"."No.";
        }
        field(190; Open; Boolean)
        {
            Caption = 'Open';
            Description = 'APTW:DMW15.01:58:01';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.", User, Date, Time)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

