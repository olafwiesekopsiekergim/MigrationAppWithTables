table 5157815 "Customer / Vendor Link"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EXT  01.11.08   Extended Application (Extension)
    //                 - Object created
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001477  09.02.2017  gbedv.ast   only use accounts for field Pmt. Account No.

    Caption = 'Customer / Vendor Link';

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            NotBlank = true;
            TableRelation = Customer;
        }
        field(2; "Customer Name"; Text[50])
        {
            CalcFormula = Lookup (Customer.Name WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Customer Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Customer City"; Text[50])
        {
            CalcFormula = Lookup (Customer.City WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Customer City';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            NotBlank = true;
            TableRelation = Vendor;
        }
        field(5; "Vendor Name"; Text[50])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Vendor Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Vendor City"; Text[50])
        {
            CalcFormula = Lookup (Vendor.City WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Vendor City';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(11; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(12; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(13; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(20; "Linked Vendor Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No." = FIELD ("Vendor No."),
                                                                                   "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                   "Currency Code" = FIELD ("Currency Filter")));
            Caption = 'Linked Vendor Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Linked Vendor Net Change (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No." = FIELD ("Vendor No."),
                                                                                   "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                   "Posting Date" = FIELD ("Date Filter"),
                                                                                   "Currency Code" = FIELD ("Currency Filter")));
            Caption = 'Linked Vendor Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Linked Customer Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD ("Currency Filter")));
            Caption = 'Linked Customer Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Linked Cust. Net Change (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Posting Date" = FIELD ("Date Filter"),
                                                                                 "Currency Code" = FIELD ("Currency Filter")));
            Caption = 'Linked Customer Net Change (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Linked Vendor Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum ("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No." = FIELD ("Vendor No."),
                                                                                   "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                   "Currency Code" = FIELD ("Currency Filter"),
                                                                                   "Posting Date" = FIELD (UPPERLIMIT ("Date Filter"))));
            Caption = 'Linked Vendor Balance at Date (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Linked Cust. Balance at Date"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Customer No."),
                                                                                 "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD ("Currency Filter"),
                                                                                 "Posting Date" = FIELD (UPPERLIMIT ("Date Filter"))));
            Caption = 'Linked Cust. Balance at Date (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Linked Cust. Association"; Code[20])
        {
            CalcFormula = Lookup (Customer."Association No." WHERE ("No." = FIELD ("Customer No.")));
            Caption = 'Linked Customer Association';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Pmt. Account No."; Code[20])
        {
            Caption = 'Pmt. Account No.';
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Customer No.", "Vendor No.")
        {
            Clustered = true;
        }
        key(Key2; "Vendor No.", "Customer No.")
        {
        }
    }

    fieldgroups
    {
    }
}

