table 5012659 "Calc. Value Transfer Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #CAW17.10.01:T101 01.08.14 DEMSR.IST
    //   Transfer Unit Cost to Sales Line
    //   Field Type expanded with option "Document Unit Cost"

    Caption = 'Calc. Value Transfer Line';

    fields
    {
        field(1; "Calculation No."; Code[20])
        {
            Caption = 'Calculation No.';
            NotBlank = true;
            TableRelation = "Calculation Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Standard Cost,Item Unit Price,Sales Price,Sales Line Discount %,Document Unit Price,Document Line Discount %,Document Unit Cost';
            OptionMembers = " ","Standard Cost","Item Unit Price","Sales Price","Sales Line Discount %","Document Unit Price","Document Line Discount %","Document Unit Cost";
        }
        field(4; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(5; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(6; "Current Value"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Current Value';
        }
        field(7; "Calculation Value"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Calculation Value';
        }
        field(8; Transfer; Boolean)
        {
            Caption = 'Transfer';
        }
        field(9; "Transfer possible"; Boolean)
        {
            Caption = 'Transfer possible';
        }
    }

    keys
    {
        key(Key1; "Calculation No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

