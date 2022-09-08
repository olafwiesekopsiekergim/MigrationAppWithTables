table 5157903 "Bundesbank Report"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // AZV  13.01.10   OPplus DTAZV
    //                 - Object created
    //      28.08.11   Added Service No. OnValidate()
    // -----------------------------------------------------

    Caption = 'Report Bundesbank';

    fields
    {
        field(1; "Gen. Journal Template"; Code[10])
        {
            Caption = 'Gen. Journal Template';
            Editable = false;
        }
        field(2; "Gen. Journal Batch"; Code[10])
        {
            Caption = 'Gen. Journal Batch';
            Editable = false;
        }
        field(3; "Gen. Journal Line"; Integer)
        {
            Caption = 'Gen. Journal Line';
            Editable = false;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(5; "Trading Type"; Option)
        {
            Caption = 'Trading Type';
            OptionCaption = 'Transit Trade,Service,Capital Trade';
            OptionMembers = Transit,Service,Capital;
        }
        field(6; "Service No."; Code[10])
        {
            Caption = 'Service No.';
            TableRelation = "Bundesbank Code";
            ValidateTableRelation = false;
        }
        field(7; Status; Option)
        {
            Caption = 'Status';
            Description = 'Reserve';
            Editable = false;
            OptionCaption = 'Open,Reported';
            OptionMembers = Open,Reported;
        }
        field(9; "Pmt. Amount"; Decimal)
        {
            Caption = 'Pmt. Amount';
            Editable = false;
        }
        field(10; "Country/Region Code"; Code[10])
        {
            Caption = 'Vendor Country';
            Editable = false;
            TableRelation = "Bundesbank Country";
        }
        field(12; "Pmt. Currency Code"; Code[10])
        {
            Caption = 'Pmt. Currency Code';
            Editable = false;
        }
        field(13; "Reported Amount"; Decimal)
        {
            Caption = 'Reported Amount';
        }
        field(20; "Goods Stored Abroad"; Boolean)
        {
            Caption = 'Goods stored abroad';
        }
        field(22; "Itemname Goods"; Code[27])
        {
            Caption = 'Item Name Trading Goods';
        }
        field(23; "Chapter No. Goods"; Code[3])
        {
            Caption = 'Capitel No. Goods';
            TableRelation = "Bundesbank Code";
        }
        field(24; "Broken Transit"; Boolean)
        {
            Caption = 'Broken transit';
        }
        field(27; "Due Date Transit"; Date)
        {
            Caption = 'Due Date Transit YYMM';
        }
        field(28; "Add. Information Transit"; Text[40])
        {
            Caption = 'Add. Information';
        }
        field(30; "Service Description"; Text[140])
        {
            Caption = 'Service Description';
        }
        field(32; "Transit Customer Country Code"; Code[10])
        {
            Caption = 'Customer Country';
            TableRelation = "Bundesbank Country";
        }
        field(33; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(53; "Country of Investment"; Code[10])
        {
            Caption = 'Country Capital Investment';
            TableRelation = "Bundesbank Country";
        }
        field(54; "Itemname Sold Goods"; Code[27])
        {
            Caption = 'Itemname Sold Goods';
        }
        field(55; "Chapter No. Sold Goods"; Code[3])
        {
            Caption = 'Chapter No.Sold Goods';
            TableRelation = "Bundesbank Code";
        }
        field(60; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
            Editable = false;
        }
        field(61; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
            Editable = false;
        }
        field(62; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
        }
        field(63; "Account Type"; Option)
        {
            Caption = 'Account Type';
            Editable = false;
            OptionCaption = ',Customer,Vendor';
            OptionMembers = ,Customer,Vendor;
        }
        field(70; "Reported at Date"; Date)
        {
            Caption = 'Reported at Date';
            Editable = false;
        }
        field(71; "Reported atTme"; Time)
        {
            Caption = 'Reported atTme';
            Editable = false;
        }
        field(72; "Reported by"; Code[50])
        {
            Caption = 'Reported by';
            Editable = false;
        }
        field(73; Positive; Boolean)
        {
            Caption = 'Positive';
            Editable = false;
        }
        field(74; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(75; "Posting Month"; Integer)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(76; "Line No. Detail"; Integer)
        {
            Caption = 'Line No. Detail';
        }
        field(77; "Report Type"; Option)
        {
            Caption = 'Reporttype';
            OptionCaption = 'Z4,,Z10';
            OptionMembers = Z4,,Z10;
        }
        field(78; ISIN; Code[12])
        {
            Caption = 'ISIN';
        }
        field(79; "ISIN Description"; Text[35])
        {
            Caption = 'ISIN Description';
        }
        field(80; "Source Gen. Journal Template"; Code[10])
        {
            Caption = 'Source Gen. Journal Template';
            Editable = false;
        }
        field(81; "Source Gen. Journal Batch"; Code[10])
        {
            Caption = 'Source Gen. Journal Batch';
            Editable = false;
        }
        field(82; "Reporting Date"; Date)
        {
            Caption = 'Reporting Date';
        }
        field(90; "Sum Pmt. Amount"; Decimal)
        {
            CalcFormula = Sum ("Bundesbank Report"."Pmt. Amount" WHERE ("Gen. Journal Template" = FIELD ("Gen. Journal Template"),
                                                                       "Gen. Journal Batch" = FIELD ("Gen. Journal Batch"),
                                                                       "Gen. Journal Line" = FILTER (>= 0),
                                                                       "Report Type" = FIELD ("Report Type"),
                                                                       "Trading Type" = FIELD ("Trading Type"),
                                                                       "Service No." = FIELD ("Service No."),
                                                                       "Country/Region Code" = FIELD ("Country/Region Code"),
                                                                       "Account Type" = FIELD ("Account Type"),
                                                                       ISIN = FIELD (ISIN),
                                                                       Status = FIELD (Status),
                                                                       "Reporting Date" = FIELD ("Reporting Date")));
            Caption = 'Pmt. Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(91; "Sum Reported Amount"; Decimal)
        {
            CalcFormula = Sum ("Bundesbank Report"."Reported Amount" WHERE ("Gen. Journal Template" = FIELD ("Gen. Journal Template"),
                                                                           "Gen. Journal Batch" = FIELD ("Gen. Journal Batch"),
                                                                           "Gen. Journal Line" = FILTER (>= 0),
                                                                           "Report Type" = FIELD ("Report Type"),
                                                                           "Trading Type" = FIELD ("Trading Type"),
                                                                           "Service No." = FIELD ("Service No."),
                                                                           "Country/Region Code" = FIELD ("Country/Region Code"),
                                                                           "Account Type" = FIELD ("Account Type"),
                                                                           ISIN = FIELD (ISIN),
                                                                           Status = FIELD (Status),
                                                                           "Reporting Date" = FIELD ("Reporting Date")));
            Caption = 'Reported Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(92; "Sum Reported Amount Detail"; Decimal)
        {
            CalcFormula = Sum ("Bundesbank Report"."Reported Amount" WHERE ("Gen. Journal Template" = FIELD ("Gen. Journal Template"),
                                                                           "Gen. Journal Batch" = FIELD ("Gen. Journal Batch"),
                                                                           "Gen. Journal Line" = FILTER (>= 0),
                                                                           "Report Type" = FIELD ("Report Type"),
                                                                           "Trading Type" = FIELD ("Trading Type"),
                                                                           "Service No." = FIELD ("Service No."),
                                                                           "Country/Region Code" = FIELD ("Country/Region Code"),
                                                                           "Account Type" = FIELD ("Account Type"),
                                                                           ISIN = FIELD (ISIN),
                                                                           Status = FIELD (Status),
                                                                           "Chapter No. Goods" = FIELD ("Chapter No. Goods"),
                                                                           "Reporting Date" = FIELD ("Reporting Date")));
            Caption = 'Reported Amount';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Gen. Journal Template", "Gen. Journal Batch", "Gen. Journal Line", "Line No.", "Line No. Detail")
        {
            Clustered = true;
        }
        key(Key2; "Trading Type", "Service No.", "Country/Region Code", Positive)
        {
        }
        key(Key3; "Report Type", "Account Type", "Country/Region Code", "Trading Type", "Service No.", "Chapter No. Goods", ISIN, Status, "Reporting Date")
        {
            SumIndexFields = "Pmt. Amount", "Reported Amount";
        }
    }

    fieldgroups
    {
    }
}

