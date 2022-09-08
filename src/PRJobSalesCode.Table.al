table 5292363 "PR - Job Sales Code"
{
    Caption = 'Job Sales Code';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; "Sort No."; Integer)
        {
            Caption = 'Sort No.';
        }
        field(100; "Sales Channel"; Option)
        {
            Caption = 'Sales Channel';
            Description = ' ,Fixed Price,Usage,Realized %,Performance';
            OptionCaption = ' ,Fixed Price,Usage,Realized %,Performance';
            OptionMembers = " ","Fixed Price",Usage,"Realized %",Performance;
        }
        field(101; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
        }
        field(110; "Posting by"; Option)
        {
            Caption = 'Posting by';
            Description = ' ,Sales Order,Invoicing';
            OptionCaption = ' ,Sales Order,Invoicing';
            OptionMembers = " ","Sales Order",Invoicing;
        }
        field(120; "Limited Quantity"; Option)
        {
            Caption = 'Limited Quantity';
            Description = ' ,Sales Position,Per Sub Position';
            OptionCaption = ' ,Sales Position,Per Sub Position';
            OptionMembers = " ","Sales Position","Per Sub Position";
        }
        field(121; "Sales Price Source"; Option)
        {
            Caption = 'Sales Price Source';
            Description = ' ,Job Line,Standard Prices,Cost Plus';
            OptionCaption = ' ,Job Line,Standard Prices,Cost Plus';
            OptionMembers = " ","Job Line","Standard Prices","Cost Plus";
        }
        field(122; "Check Milestone"; Boolean)
        {
            Caption = 'Check Milestone';
        }
        field(130; "Rounding Realized %"; Text[30])
        {
            Caption = 'Rounding Realized %';
        }
        field(131; "Rounding Realized % Quantity"; Text[30])
        {
            Caption = 'Rounding Realized % Quantity';
        }
        field(140; "Invoicing Trigger"; Option)
        {
            Caption = 'Invoicing Trigger';
            Description = ' ,Planning Invoicing,Enter in Job Journal Line,Posting Process';
            OptionCaption = ' ,Planning Invoicing,Enter in Job Journal Line,Posting Process';
            OptionMembers = " ","Planning Invoicing","Enter in Job Journal Line","Posting Process";
        }
        field(1000; Color; Integer)
        {
            Caption = 'Format Color';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(8015; Summarize; Option)
        {
            Caption = 'Summarize';
            Description = ' ,Position,Sales Code';
            OptionCaption = ' ,Position,Sales Code';
            OptionMembers = " ",Position,"Sales Code";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Sort No.")
        {
        }
    }

    fieldgroups
    {
    }
}

