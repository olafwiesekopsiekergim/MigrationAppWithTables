table 5292754 "PRPL - MSP Code"
{
    Caption = 'MSP Code';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(110; Jobs; Integer)
        {
            CalcFormula = Count ("PRPL - MSP Job" WHERE ("MSP Code" = FIELD (Code)));
            Caption = 'Jobs';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Multi- Jobs"; Boolean)
        {
            Caption = 'Multi- Jobs';
        }
        field(130; "Within Job Filter"; Boolean)
        {
            CalcFormula = Exist ("PRPL - MSP Job" WHERE ("MSP Code" = FIELD (Code),
                                                        "Job No." = FIELD ("Job No. Filter")));
            Caption = 'Within Job Filter';
            Description = 'CF MSP Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(220; "MSP Path"; Text[250])
        {
            Caption = 'MSP Path';
        }
        field(230; "MSP Filename"; Text[250])
        {
            Caption = 'MSP Filename';
            Description = 'ne';
            Editable = false;
        }
        field(1600; "--- MSP Export Options"; Integer)
        {
            Caption = '--- MSP Export Options';
            Enabled = false;
        }
        field(1610; "Resources in other jobs"; Boolean)
        {
            Caption = 'Resources in other jobs';
        }
        field(1620; "Scheduled Start"; Date)
        {
            Caption = 'Scheduled Start';
        }
        field(1630; "Scheduled Finish"; Date)
        {
            Caption = 'Scheduled Finish';
        }
        field(1650; "Export Calendar entries"; Boolean)
        {
            Caption = 'Export Calendar entries';
        }
        field(1660; "Export Actual Work"; Boolean)
        {
            Caption = 'Export Actual Work';
        }
        field(1670; "Export Sorting"; Option)
        {
            Caption = 'Export Sorting';
            Description = 'WBS,Sorting No.';
            OptionCaption = 'WBS,Sorting No.';
            OptionMembers = WBS,"Sorting No.";
        }
        field(1700; "--- MSP Import Options"; Integer)
        {
            Caption = '--- MSP Import Options';
            Enabled = false;
        }
        field(1710; "Import Comp. Type"; Option)
        {
            Caption = 'Import Comp. Type';
            Description = ' ,Service,Item,General';
            OptionCaption = ' ,Service,Item,General';
            OptionMembers = " ",Service,Item,General;
        }
        field(1711; "Import Comp. No."; Code[20])
        {
            Caption = 'Import Comp. No.';
            Description = 'MTR Type';
            TableRelation = IF ("Import Comp. Type" = CONST (Service)) Resource
            ELSE
            IF ("Import Comp. Type" = CONST (Item)) Item
            ELSE
            IF ("Import Comp. Type" = CONST (General)) "PR - General Component";
        }
        field(1720; "New Planning Resources"; Boolean)
        {
            Caption = 'New Planning Resources';
        }
        field(1725; "Import Assignments with Res."; Boolean)
        {
            Caption = 'Import Assignments with Res.';
        }
        field(1730; "Import Calendar Entries"; Boolean)
        {
            Caption = 'Import Calendar Entries';
        }
        field(1740; "Import Standard Calendar"; Boolean)
        {
            Caption = 'Import Standard Calendar';
        }
        field(1741; "Std. Calendar Name"; Code[10])
        {
            Caption = 'Std. Calendar Name';
        }
        field(5292332; "Job No. Filter"; Code[20])
        {
            Caption = 'Job No. Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
            TableRelation = Job;
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
    }
}

