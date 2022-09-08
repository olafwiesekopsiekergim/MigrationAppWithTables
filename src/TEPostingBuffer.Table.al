table 5050259 "TE-Posting Buffer"
{
    Caption = 'TE-Posting Buffer';
    DataPerCompany = true;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; Account; Code[20])
        {
            Caption = 'Account';
            TableRelation = "G/L Account";
        }
        field(3; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'Vendor,GL-Account,Payroll,Customer';
            OptionMembers = Vendor,"GL-Account",Payroll,Customer;
        }
        field(4; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
        }
        field(5; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
        }
        field(6; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Dimension Code 2';
        }
        field(7; "Job No."; Code[20])
        {
            Caption = 'Job No.';
        }
        field(8; "TE-Voucher Type"; Code[20])
        {
            Caption = 'TE-Voucher Type';
            TableRelation = "Tax Group";
        }
        field(9; "Purchase Posting Type"; Boolean)
        {
            Caption = 'Purchase Posting Type';
        }
        field(10; "Business Posting Group"; Code[10])
        {
            Caption = 'Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(11; "Product Posting Group"; Code[10])
        {
            Caption = 'Product Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(12; "VAT Business Posting Group"; Code[10])
        {
            Caption = 'VAT Business Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(13; "VAT Product Posting Group"; Code[10])
        {
            Caption = 'VAT Product Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(14; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(15; "Dimension Reference PartAcc"; Integer)
        {
            Caption = 'Dimension Reference PartAcc';
        }
        field(16; "Dimension Reference Line"; Integer)
        {
            Caption = 'Dimension Reference Line';
        }
        field(17; "Dimension No."; Integer)
        {
            Caption = 'Dimension No.';
        }
        field(18; Summary; Code[20])
        {
            Caption = 'Summary';
        }
        field(19; "Payed By"; Option)
        {
            Caption = 'Payed By';
            OptionCaption = 'Private,Employer';
            OptionMembers = Private,Employer;
        }
        field(20; "Tax Clearance"; Option)
        {
            Caption = 'Tax Clearance';
            OptionCaption = 'Tax100,TaxRegular,TaxNotClearable';
            OptionMembers = Tax100,TaxRegular,TaxNotClearable;
        }
        field(31; "Amount Payment"; Decimal)
        {
            Caption = 'Amount Payment';
        }
        field(32; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
        }
        field(33; "Total AmountTaxfree"; Decimal)
        {
            Caption = 'Total Amount Taxfree';
        }
        field(34; "Job Amount"; Decimal)
        {
            Caption = 'Job Amount';
        }
        field(35; "System Posting YN"; Boolean)
        {
            Caption = 'System Posting YN';
        }
        field(36; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(37; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(38; "Transaction No."; Code[30])
        {
            Caption = 'Transaction No.';
        }
        field(39; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Vendor,GL-Account,Payroll,Customer,Work Order';
            OptionMembers = Vendor,"GL-Account",Payroll,Customer,"Work Order";
        }
        field(40; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(41; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(42; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(43; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
        }
        field(44; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
        }
        field(45; "Job Line Type"; Option)
        {
            Caption = 'Job Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
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
        field(63; Vendorposting; Boolean)
        {
            Caption = 'Vendorposting';
        }
        field(64; "Bal. Business Posting Group"; Code[10])
        {
            Caption = 'Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(65; "Bal. Product Posting Group"; Code[10])
        {
            Caption = 'Product Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(66; "Bal.VAT Business Posting Group"; Code[10])
        {
            Caption = 'VAT Business Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(67; "Bal.VAT Product Posting Group"; Code[10])
        {
            Caption = 'VAT Product Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(68; "Bal.Purchase Posting Type"; Boolean)
        {
            Caption = 'Bal.Purchase Posting Type';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Total Amount")
        {
        }
        key(Key3; "Total Amount")
        {
        }
        key(Key4; "Transaction No.")
        {
        }
    }

    fieldgroups
    {
    }
}

