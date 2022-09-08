table 5292353 "PR - Job Calc. Group"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works

    Caption = 'Job Calc. Group';

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
        field(5292650; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            OptionCaption = ' ,Wages,Material,External Service,Equipment,Other';
            OptionMembers = " ",Wages,Material,"External Service",Equipment,Other;
        }
        field(5292651; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Service,Item,Other';
            OptionMembers = " ",Service,Item,Other;
        }
        field(5292652; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Service)) Resource
            ELSE
            IF (Type = CONST (Other)) "PR - General Component";
        }
        field(5292653; "Type of Structure"; Option)
        {
            Caption = 'Type of Structure (PaC)';
            OptionCaption = ' ,,Calculation Group,Material Demand';
            OptionMembers = " ",,"Calculation Group","Material Demand";
        }
        field(5292654; "Hours per Day"; Decimal)
        {
            BlankZero = true;
            Caption = 'Hours per Day';
        }
        field(5292655; Hours; Decimal)
        {
            Caption = 'Hours';
        }
        field(5292656; Days; Decimal)
        {
            Caption = 'Days';
        }
        field(5292657; "Total Cost Budget (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost Budget (LCY)';
            Editable = false;
        }
        field(5292658; "Average Wage"; Decimal)
        {
            Caption = 'Average Wage';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

