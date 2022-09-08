table 5050252 "TE-Rate"
{
    Caption = 'TE-Rate';

    fields
    {
        field(1; "Voucher Type"; Code[20])
        {
            Caption = 'Voucher Type';
            NotBlank = true;
            TableRelation = "TE-Voucher Type";
        }
        field(2; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(3; Country; Code[10])
        {
            Caption = 'Country';
            TableRelation = "TE-Country";
        }
        field(4; "Valid From"; Date)
        {
            Caption = 'Valid From';
        }
        field(5; "Big City"; Option)
        {
            Caption = 'Big City';
            OptionCaption = 'Irrelevant,Big City,Small City';
            OptionMembers = Irrelevant,"Big City","Small City";
        }
        field(6; Remark; Text[60])
        {
            Caption = 'Remark';
        }
        field(10; "Proposed Pay Amount"; Decimal)
        {
            Caption = 'Proposed Pay Amount';
            DecimalPlaces = 2 : 5;
        }
        field(11; "Taxfree Amount"; Decimal)
        {
            Caption = 'Taxfree Amount';
            DecimalPlaces = 2 : 5;
        }
        field(12; "Customer Amount"; Decimal)
        {
            Caption = 'Customer Amount';
            DecimalPlaces = 2 : 5;
        }
        field(13; "Maximum Amount"; Decimal)
        {
            Caption = 'Maximum Amount';
        }
        field(14; "Liable To Tax"; Boolean)
        {
            Caption = 'Liable To Tax';
            Editable = false;
        }
        field(15; "Related Amounts"; Boolean)
        {
            CalcFormula = Exist ("TE-Rate Detail" WHERE ("TE Voucher Type" = FIELD ("Voucher Type"),
                                                        "Expenses Group" = FIELD ("Expenses Group"),
                                                        "TE Country" = FIELD (Country),
                                                        "Valid From" = FIELD ("Valid From")));
            Caption = 'Related Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(21; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(30; "Lodging 1.Step (Hours)"; Integer)
        {
            Caption = 'Lodging 1.Step (Hours)';
        }
        field(31; "Lodging 2.Step (Hours)"; Integer)
        {
            Caption = 'Lodging 2.Step (Hours)';
        }
        field(32; "Lodging 3.Step (Hours)"; Integer)
        {
            Caption = 'Lodging 3.Step (Hours)';
        }
        field(33; "Lodging 4.Step (Hours)"; Integer)
        {
            Caption = 'Lodging 4.Step (Hours)';
        }
        field(34; "Lodging 1.Step (%)"; Decimal)
        {
            Caption = 'Lodging 1.Step (%)';
            MaxValue = 100;
            MinValue = 0;
        }
        field(35; "Lodging 2.Step (%)"; Decimal)
        {
            Caption = 'Lodging 2.Step (%)';
            MaxValue = 100;
            MinValue = 0;
        }
        field(36; "Lodging 3.Step (%)"; Decimal)
        {
            Caption = 'Lodging 3.Step (%)';
            MaxValue = 100;
            MinValue = 0;
        }
        field(37; "Lodging 4.Step (%)"; Decimal)
        {
            Caption = 'Lodging 4.Step (%)';
            MaxValue = 100;
            MinValue = 0;
        }
        field(38; "Lodging 1.Step (surcharge)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Lodging 1.Step (surcharge)';
        }
        field(39; "Lodging 2.Step (surcharge)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Lodging 2.Step (surcharge)';
        }
        field(40; "Lodging 3.Step (surcharge)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Lodging 3.Step (surcharge)';
        }
        field(41; "Lodging 4.Step (surcharge)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Lodging 4.Step (surcharge)';
        }
        field(42; "Lodging 5.Step (Hours)"; Integer)
        {
            Caption = 'Lodging 5.Step (Hours)';
        }
        field(43; "Lodging 5.Step (%)"; Decimal)
        {
            Caption = 'Lodging 5.Step (%)';
            DecimalPlaces = 2 : 2;
        }
        field(44; "Lodging 5.Step (surcharge)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Lodging 5.Step (surcharge)';
        }
        field(45; Abroad; Boolean)
        {
            Caption = 'Abroad';
            Editable = false;
            FieldClass = Normal;
        }
        field(46; Display; Boolean)
        {
            Caption = 'Display';
            Editable = false;
            FieldClass = Normal;
        }
        field(47; "Day Rate"; Decimal)
        {
            Caption = 'Day Rate';
        }
        field(48; "Maximum Day Rate"; Decimal)
        {
            Caption = 'Maximum Day Rate';
        }
        field(61; "Job Item"; Code[20])
        {
            Caption = 'Job Item';
            TableRelation = Item;
        }
        field(62; "Job Item Variant Code"; Code[10])
        {
            Caption = 'Job Item Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Job Item"));
        }
    }

    keys
    {
        key(Key1; "Voucher Type", "Expenses Group", Country, "Valid From", "Big City")
        {
            Clustered = true;
        }
        key(Key2; Abroad, Display, "Voucher Type", "Expenses Group", Country, "Valid From")
        {
        }
    }

    fieldgroups
    {
    }
}

