table 5292334 "PR - Job Type"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // PR01 PRODUKT.01:AMP0007 12.06.15 DENUE.SKOL New Field 5292340 "Default QC-Template"

    Caption = 'Job Type';

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
        field(20; "Default Status"; Option)
        {
            Caption = 'Default Status';
            Description = 'Planning,Quote,Order,Completed';
            OptionCaption = 'Planning,Quote,Order,Completed';
            OptionMembers = Planning,Quote,"Order",Completed;
        }
        field(31; "List Sorting"; Integer)
        {
            Caption = 'List Sorting';
        }
        field(50; "Job Type when Order"; Code[10])
        {
            Caption = 'Job Type when Order';
            Description = 'TR Job Type';
            TableRelation = "PR - Job Type";
        }
        field(100; "Job Nos."; Code[10])
        {
            Caption = 'Job Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(200; "No. of Jobs"; Integer)
        {
            CalcFormula = Count (Job WHERE (Complete = CONST (false),
                                           "Job Type" = FIELD (Code)));
            Caption = 'No. of Jobs';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292332; "Default Dimension Value"; Code[20])
        {
            Caption = 'Default Dimension Value';
        }
        field(5292333; "Default Job Posting Group"; Code[10])
        {
            Caption = 'Default Job Posting Group';
            Description = 'TR "Job Posting Group"';
            TableRelation = "Job Posting Group";
        }
        field(5292334; "Default Sales Code"; Code[10])
        {
            Caption = 'Default Sales Code';
            Description = 'TR "Job Sales Code"';
            TableRelation = "PR - Job Sales Code";
        }
        field(5292335; "Default Unit Price Base"; Option)
        {
            Caption = 'Default Unit Price Base';
            OptionCaption = ' ,Cost,Price';
            OptionMembers = " ",Cost,Price;
        }
        field(5292340; "Default QC Template"; Code[20])
        {
            Caption = 'Default QC Template';
            TableRelation = "QC Template Header";
        }
        field(5292650; "Default Structure Type"; Option)
        {
            Caption = 'Default Structure Type';
            OptionCaption = ' ,,Bill of Quantities,Process and Controlling, BoQ and PaC';
            OptionMembers = " ",,BoQ,PaC,"BoQ and PaC";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "List Sorting")
        {
        }
    }

    fieldgroups
    {
    }
}

