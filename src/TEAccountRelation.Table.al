table 5050276 "TE-Account Relation"
{
    Caption = 'TE-Account Relation';

    fields
    {
        field(1; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(2; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(3; "Voucher Type"; Code[20])
        {
            Caption = 'Voucher Type';
            TableRelation = "TE-Voucher Type";
        }
        field(4; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(5; "Job/ Customer"; Code[20])
        {
            Caption = 'Job/ Customer';
            TableRelation = IF ("Job-Integration" = CONST (Job)) Job
            ELSE
            IF ("Job-Integration" = CONST (Customer)) Customer;
        }
        field(6; "Travel Type"; Code[20])
        {
            Caption = 'Travel Type';
            TableRelation = "TE-Travel-Type";
        }
        field(7; "Dimension-Code 1 Value"; Option)
        {
            Caption = 'Dimension-Code 1 Value';
            OptionCaption = 'Undefined,Filled,Empty';
            OptionMembers = Undefiniert,"Gefüllt",Leer;
        }
        field(8; "Dimension-Code 2 Value"; Option)
        {
            Caption = 'Dimension-Code 2 Value';
            OptionCaption = 'Undefined,Filled,Empty';
            OptionMembers = Undefiniert,"Gefüllt",Leer;
        }
        field(9; "Job-Value"; Option)
        {
            Caption = 'Job-Value';
            OptionCaption = 'Undefined,Filled,Empty';
            OptionMembers = Undefiniert,"Gefüllt",Leer;
        }
        field(10; "Country Code"; Code[20])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(11; "Valid Until"; Date)
        {
            Caption = 'Valid Until';
        }
        field(12; "Substraction Mode"; Option)
        {
            Caption = 'Substraction Mode';
            OptionCaption = ' ,PIK,Percentage,Complete';
            OptionMembers = " ",PIK,Percentage,Complete;
        }
        field(14; "With Meals"; Option)
        {
            Caption = 'With Meals';
            OptionCaption = ' ,With Meals,Without Meals';
            OptionMembers = " ","Mit Mahlzeiten","Ohne Mahlzeiten";
        }
        field(20; "G/L Account No."; Code[20])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
        }
        field(24; "Post Type"; Option)
        {
            Caption = 'Post Type';
            OptionCaption = ' ,Purchase';
            OptionMembers = " ",Purchase;
        }
        field(25; "Gen. Business Posting Group"; Code[10])
        {
            Caption = 'Gen. Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(26; "VAT Business Posting Group"; Code[10])
        {
            Caption = 'VAT Business Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(27; "Gen. Product Posting Group"; Code[10])
        {
            Caption = 'Gen. Product Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(28; "VAT- Product Post Group"; Code[10])
        {
            Caption = 'VAT- Product Post Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(29; "Job-Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job-Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer';
            OptionMembers = Job,Customer;
        }
        field(30; "Pay Type"; Code[20])
        {
            Caption = 'Pay Type';
        }
        field(31; "Payroll Version"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Payroll Version");
            Caption = 'Payroll Version';
            FieldClass = FlowField;
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(32; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(33; "Pay Type Reverse"; Code[20])
        {
            Caption = 'Pay Type Reverse';
        }
    }

    keys
    {
        key(Key1; "Voucher Type", "Dimension-Code 1 Value", "Dimension-Code 2 Value", "Job-Value", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Travel Type", "Expenses Group", "Job/ Customer", "Country Code", "Valid Until", "Substraction Mode", "With Meals")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

