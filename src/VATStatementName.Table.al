table 257 "VAT Statement Name"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - New Field added
    // -----------------------------------------------------

    Caption = 'VAT Statement Name';

    fields
    {
        field(1; "Statement Template Name"; Code[10])
        {
            Caption = 'Statement Template Name';
            NotBlank = true;
            TableRelation = "VAT Statement Template";
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(11000; "Sales VAT Adv. Notification"; Boolean)
        {
            Caption = 'Sales VAT Adv. Notification';
        }
        field(5157882; Affiliation; Boolean)
        {
            Caption = 'Affiliation';
            Description = 'TAX';
        }
    }

    keys
    {
        key(Key1; "Statement Template Name", Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

