table 740 "VAT Report Header"
{
    Caption = 'VAT Report Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "VAT Report Config. Code"; Option)
        {
            Caption = 'VAT Report Config. Code';
            Editable = true;
            OptionCaption = ' ,VIES';
            OptionMembers = " ",VIES;
        }
        field(3; "VAT Report Type"; Option)
        {
            Caption = 'VAT Report Type';
            OptionCaption = 'Standard,Corrective';
            OptionMembers = Standard,Corrective;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
            Editable = false;
        }
        field(5; "End Date"; Date)
        {
            Caption = 'End Date';
            Editable = false;
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released,Exported,Submitted';
            OptionMembers = Open,Released,Exported,Submitted;
        }
        field(7; "VAT Registration No."; Code[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(8; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(9; "Original Report No."; Code[20])
        {
            Caption = 'Original Report No.';
            TableRelation = "VAT Report Header"."No." WHERE ("VAT Report Type" = CONST (Standard),
                                                             Status = CONST (Submitted));
        }
        field(10; "Report Period Type"; Option)
        {
            Caption = 'Report Period Type';
            OptionCaption = ' ,Month,Quarter,Year,Bi-Monthly';
            OptionMembers = " ",Month,Quarter,Year,"Bi-Monthly";
        }
        field(11; "Report Period No."; Integer)
        {
            Caption = 'Report Period No.';
        }
        field(12; "Report Year"; Integer)
        {
            Caption = 'Report Year';
            MinValue = 2000;
        }
        field(16; "Processing Date"; Date)
        {
            Caption = 'Processing Date';
        }
        field(19; "Test Export"; Boolean)
        {
            Caption = 'Test Export';
        }
        field(20; Notice; Boolean)
        {
            Caption = 'Notice';
        }
        field(21; Revocation; Boolean)
        {
            Caption = 'Revocation';
        }
        field(28; "Trade Type"; Option)
        {
            Caption = 'Trade Type';
            InitValue = Sales;
            OptionCaption = 'Purchases,Sales,Both';
            OptionMembers = Purchases,Sales,Both;
        }
        field(29; "EU Goods/Services"; Option)
        {
            Caption = 'EU Goods/Services';
            OptionCaption = 'Both,Goods,Services';
            OptionMembers = Both,Goods,Services;
        }
        field(31; "Total Base"; Decimal)
        {
            CalcFormula = Sum ("VAT Report Line".Base WHERE ("VAT Report No." = FIELD ("No."),
                                                            "Line Type" = FILTER (New | Correction)));
            Caption = 'Total Base';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Total Amount"; Decimal)
        {
            CalcFormula = Sum ("VAT Report Line".Amount WHERE ("VAT Report No." = FIELD ("No."),
                                                              "Line Type" = FILTER (New | Correction)));
            Caption = 'Total Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "Total Number of Supplies"; Decimal)
        {
            CalcFormula = Sum ("VAT Report Line"."Number of Supplies" WHERE ("VAT Report No." = FIELD ("No."),
                                                                            "Line Type" = FILTER (New | Correction)));
            Caption = 'Total Number of Supplies';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "Total Number of Lines"; Integer)
        {
            CalcFormula = Count ("VAT Report Line" WHERE ("VAT Report No." = FIELD ("No."),
                                                         "Line Type" = FILTER (New | Correction)));
            Caption = 'Total Number of Lines';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Company Name"; Text[100])
        {
            Caption = 'Company Name';
        }
        field(41; "Company Address"; Text[30])
        {
            Caption = 'Company Address';
        }
        field(42; "Country/Region Name"; Text[30])
        {
            Caption = 'Country/Region Name';
        }
        field(48; City; Text[30])
        {
            Caption = 'City';
        }
        field(49; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
        }
        field(50; "Tax Office ID"; Code[20])
        {
            Caption = 'Tax Office ID';
        }
        field(51; "Sign-off Place"; Text[30])
        {
            Caption = 'Sign-off Place';
        }
        field(52; "Sign-off Date"; Date)
        {
            Caption = 'Sign-off Date';
        }
        field(53; "Signed by Employee No."; Code[20])
        {
            Caption = 'Signed by Employee No.';
            TableRelation = Employee;
        }
        field(54; "Created by Employee No."; Code[20])
        {
            Caption = 'Created by Employee No.';
            TableRelation = Employee;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "VAT Report Config. Code")
        {
        }
        key(Key3; "VAT Report Type", Status)
        {
        }
    }

    fieldgroups
    {
    }
}

