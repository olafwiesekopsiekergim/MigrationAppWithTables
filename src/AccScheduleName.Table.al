table 84 "Acc. Schedule Name"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // TAX  01.11.08   Balance and Taxes
    //                 - New Field added
    // -----------------------------------------------------

    Caption = 'Acc. Schedule Name';
    DataCaptionFields = Name, Description;

    fields
    {
        field(1; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Default Column Layout"; Code[10])
        {
            Caption = 'Default Column Layout';
            TableRelation = "Column Layout Name";
        }
        field(4; "Analysis View Name"; Code[10])
        {
            Caption = 'Analysis View Name';
            TableRelation = "Analysis View";
        }
        field(5157882; "Assets/Liab. Calc. Type"; Option)
        {
            BlankZero = true;
            Caption = 'Assets/Liab. Calc. Type';
            Description = 'TAX';
            OptionCaption = ' ,End of fiscal year,Max. date,Value';
            OptionMembers = " ",EOFY,MaxDate,Value;
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

