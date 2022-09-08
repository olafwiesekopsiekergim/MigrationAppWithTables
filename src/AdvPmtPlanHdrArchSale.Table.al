table 5013506 "Adv. Pmt. Plan Hdr. Arch. Sale"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Deleted unused Variable; PrimaryKey Field -> NotBlank, FlowField mustn't be editable
    // APTW:DMW16.00:6:01 #Increased Name- and Adress-fields from Code 30 to Code 50
    // APTW:#DMW17.00:A001 17.07.12 DEMSR.SSZ
    //   #Changes because of NAV 7: User are now Code 50
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW17.10.00.03:T500 28.07.14  DEDRS.WHEG  Added field Dimension Set ID for update routine

    Caption = 'Advance Payment Plan Header Archive Sale';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
        }
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
        field(4; SysTime; Time)
        {
            Caption = 'Time';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
        }
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(11; "Document Comment"; Boolean)
        {
            CalcFormula = Exist ("Sales Comment Line" WHERE ("Document Type" = CONST (Order),
                                                            "No." = FIELD ("Document No.")));
            Caption = 'Document Comment';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(30; "Bill-to Name"; Text[50])
        {
            Caption = 'Bill-to Name';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(40; "Bill-to Name 2"; Text[50])
        {
            Caption = 'Bill-to Name 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(50; "Bill-to Address"; Text[50])
        {
            Caption = 'Bill-to Address';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(60; "Bill-to Address 2"; Text[50])
        {
            Caption = 'Bill-to Address 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(70; "Bill-to City"; Text[30])
        {
            Caption = 'Bill-to City';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(80; "Bill-to Contact"; Text[50])
        {
            Caption = 'Bill-to Contact';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(90; "Bill-to Post Code"; Code[20])
        {
            Caption = 'Bill-to Post Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(100; "Bill-to County"; Text[30])
        {
            Caption = 'Bill-to County';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(110; "Bill-to Country Code"; Code[10])
        {
            Caption = 'Bill-to Country Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(120; "Your Reference"; Text[30])
        {
            Caption = 'Your Reference';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(130; "Order Date"; Date)
        {
            Caption = 'Order Date';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(140; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(150; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(160; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Payment Terms";
        }
        field(170; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(180; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(190; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(200; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(210; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(220; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(230; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            MinValue = 0;
        }
        field(240; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(250; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(260; "Sell-to Customer Name"; Text[50])
        {
            Caption = 'Sell-to Customer Name';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(270; "Sell-to Customer Name 2"; Text[50])
        {
            Caption = 'Sell-to Customer Name 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(280; "Sell-to Address"; Text[50])
        {
            Caption = 'Sell-to Address';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(290; "Sell-to Address 2"; Text[50])
        {
            Caption = 'Sell-to Address 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(300; "Sell-to City"; Text[30])
        {
            Caption = 'Sell-to City';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(310; "Sell-to Contact"; Text[50])
        {
            Caption = 'Sell-to Contact';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(320; "Sell-to Post Code"; Code[20])
        {
            Caption = 'Sell-to Post Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(330; "Sell-to County"; Text[30])
        {
            Caption = 'Sell-to County';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(340; "Sell-to Country Code"; Code[10])
        {
            Caption = 'Sell-to Country Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(350; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(360; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(370; "Last Posting No."; Code[20])
        {
            Caption = 'Last Posting No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            TableRelation = "Sales Invoice Header";
        }
        field(375; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Customer Posting Group";
        }
        field(380; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Gen. Business Posting Group";
        }
        field(385; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "VAT Business Posting Group";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Description = '#APTW17.10.00.03:T500';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(500; "Net Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Net Amount';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(510; "Net Advance Payment Requests"; Decimal)
        {
            Caption = 'Net Advance Payment Requests';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(800; "Advance Payment Requests"; Decimal)
        {
            Caption = 'Advance Payment Requests';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(810; "Advance Payments Received"; Decimal)
        {
            Caption = 'Advance Payments Received';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(820; "Advance Payment Debts"; Decimal)
        {
            Caption = 'Advance Payment Debts';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(830; "Advance Payment Pmt. Disc."; Decimal)
        {
            Caption = 'Advance Payments Payment Discounts';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(840; "Allocated Advance Payment Debt"; Decimal)
        {
            Caption = 'Allocated Advance Payment Debt';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(850; "Alloc Adv. Payments Pmt. Disc."; Decimal)
        {
            Caption = 'Allocated Advance Payment Payment Discounts';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(855; "Allocated Advance Payment Req."; Decimal)
        {
            Caption = 'Allocated Advance Payment Requests';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(860; "Partial Invoices"; Decimal)
        {
            Caption = 'Partial Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(870; "Closing Invoices"; Decimal)
        {
            Caption = 'Closing Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.", User, Date, SysTime)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

