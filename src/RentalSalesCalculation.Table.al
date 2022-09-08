table 5072712 "Rental - Sales Calculation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.01:R119 09.10.09 DEMSR.KHS Sales out of Rental
    // #RENW16.00.02:R154 20.10.10 DEMSR.KHS Sales Leasing
    //                                       New field: "From Leasing"
    // 
    // #RENW17.10.00.02:T519 10.04.14 DEMSR.KHS
    //   Update Field names and ENU Caption:
    //     Invoiced Rental Profit
    //     Invoiced Rate Part Profit
    //     Invoiced One-Time Profit
    //     Chargeable One-Time Profit
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental - Sales Calculation';
    DataCaptionFields = "Source ID", "Source Ref. No.";

    fields
    {
        field(1; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(2; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(3; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(4; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(5; "Use Charge"; Boolean)
        {
            Caption = 'Use Charge';
        }
        field(6; "Invoiced Rental Profit"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Rent Order No." = FIELD ("Source ID"),
                                                                            "Rent Order Line No." = FIELD ("Source Ref. No."),
                                                                            "Type (Serviced)" = CONST (Item)));
            Caption = 'Invoiced Rental Profit';
            Description = '#RENW17.10.00.02:T519';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Invoiced Rate Part Profit"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Rent Order No." = FIELD ("Source ID"),
                                                                            "Attached to Rent Order Line No" = FIELD ("Source Ref. No."),
                                                                            "Rental Position" = CONST ("Rate Part")));
            Caption = 'Invoiced Rate Part Profit';
            Description = '#RENW17.10.00.02:T519';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Invoiced One-Time Profit"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Rent Order No." = FIELD ("Source ID"),
                                                                            "Attached to Rent Order Line No" = FIELD ("Source Ref. No."),
                                                                            "Rental Position" = CONST ("One-Time Invoicing")));
            Caption = 'Invoiced One-Time Profit';
            Description = '#RENW17.10.00.02:T519';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Chargeable Rental Profit"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Rent Order No." = FIELD ("Source ID"),
                                                                            "Rent Order Line No." = FIELD ("Source Ref. No."),
                                                                            "Type (Serviced)" = CONST (Item),
                                                                            "Charge to Sales Price" = CONST (true)));
            Caption = 'Chargeable Rental Profit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Chargeable Rate Part Profit"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Rent Order No." = FIELD ("Source ID"),
                                                                            "Attached to Rent Order Line No" = FIELD ("Source Ref. No."),
                                                                            "Rental Position" = CONST ("Rate Part"),
                                                                            "Charge to Sales Price" = CONST (true)));
            Caption = 'Chargeable Rate Part Profit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Chargeable One-Time Profit"; Decimal)
        {
            CalcFormula = - Sum ("Service Ledger Entry"."Amount (LCY)" WHERE ("Rent Order No." = FIELD ("Source ID"),
                                                                            "Attached to Rent Order Line No" = FIELD ("Source Ref. No."),
                                                                            "Rental Position" = CONST ("One-Time Invoicing"),
                                                                            "Charge to Sales Price" = CONST (true)));
            Caption = 'Chargeable One-Time Profit';
            Description = '#RENW17.10.00.02:T519';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Sales Price"; Decimal)
        {
            Caption = 'Sales Price';
        }
        field(13; "Sales Amount (per Unit)"; Decimal)
        {
            Caption = 'Sales Amount (per Unit)';
        }
        field(14; "Non-Charge Sales Price"; Decimal)
        {
            Caption = 'Non-Charge Sales Price';
        }
        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
            Editable = false;
        }
        field(16; "Sales Amount (Qty.)"; Decimal)
        {
            Caption = 'Sales Amount (Qty.)';
        }
        field(21; "Return Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(22; "Return Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(23; "Return Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(24; "Return Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(30; "From Leasing"; Boolean)
        {
            Caption = 'From Leasing';
            Description = '#RENW16.00.02:R154';
        }
    }

    keys
    {
        key(Key1; "Return Source Type", "Return Source Subtype", "Return Source ID", "Return Source Ref. No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

