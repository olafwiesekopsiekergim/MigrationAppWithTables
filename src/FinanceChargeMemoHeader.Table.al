table 302 "Finance Charge Memo Header"
{
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new fields 5060600 and 5060601 for Text Module using Set ID

    Caption = 'Finance Charge Memo Header';
    DataCaptionFields = "No.", Name;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(5; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(6; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(7; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; County; Text[30])
        {
            Caption = 'County';
        }
        field(10; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(11; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(12; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(13; Contact; Text[50])
        {
            Caption = 'Contact';
        }
        field(14; "Your Reference"; Text[35])
        {
            Caption = 'Your Reference';
        }
        field(15; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(16; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(17; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            Editable = false;
            TableRelation = "Customer Posting Group";
        }
        field(18; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            Editable = false;
            TableRelation = "Gen. Business Posting Group";
        }
        field(19; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(20; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(21; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(22; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(23; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(25; "Fin. Charge Terms Code"; Code[10])
        {
            Caption = 'Fin. Charge Terms Code';
            TableRelation = "Finance Charge Terms";
        }
        field(26; "Post Interest"; Boolean)
        {
            Caption = 'Post Interest';
        }
        field(27; "Post Additional Fee"; Boolean)
        {
            Caption = 'Post Additional Fee';
        }
        field(29; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
        }
        field(30; Comment; Boolean)
        {
            CalcFormula = Exist ("Fin. Charge Comment Line" WHERE (Type = CONST ("Finance Charge Memo"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Remaining Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Finance Charge Memo Line"."Remaining Amount" WHERE ("Finance Charge Memo No." = FIELD ("No.")));
            Caption = 'Remaining Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Interest Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Finance Charge Memo Line".Amount WHERE ("Finance Charge Memo No." = FIELD ("No."),
                                                                       Type = CONST ("Customer Ledger Entry")));
            Caption = 'Interest Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Additional Fee"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Finance Charge Memo Line".Amount WHERE ("Finance Charge Memo No." = FIELD ("No."),
                                                                       Type = CONST ("G/L Account")));
            Caption = 'Additional Fee';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "VAT Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Finance Charge Memo Line"."VAT Amount" WHERE ("Finance Charge Memo No." = FIELD ("No.")));
            Caption = 'VAT Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(38; "Issuing No. Series"; Code[10])
        {
            Caption = 'Issuing No. Series';
            TableRelation = "No. Series";
        }
        field(39; "Issuing No."; Code[20])
        {
            Caption = 'Issuing No.';
        }
        field(41; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(42; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(43; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            TableRelation = "User Setup";
        }
        field(5060600; "Text Set ID Header"; Integer)
        {
            Caption = 'Text Set ID Header';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5060601; "Text Set ID Footer"; Integer)
        {
            Caption = 'Text Set ID Footer';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Customer No.", "Currency Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Customer No.", Name, "Due Date")
        {
        }
    }
}

