table 5000065 "Allocation Header Archive"
{
    Caption = 'Allocation Header Archiv';
    DataCaptionFields = "Code", Name, "Version No.";

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Allocation Header";
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Allocation Type"; Option)
        {
            Caption = 'Allocation Type';
            OptionCaption = 'Step-by-Step Approximation,Quantity*Cost Rate';
            OptionMembers = "Step-by-Step Approximation","Quantity*Cost Rate";
        }
        field(4; "Allocation Key"; Option)
        {
            Caption = 'Allocation Key';
            OptionCaption = ' ,Performance,Cost Account,Percentage,Project Account,Project Performance';
            OptionMembers = " ",Performance,"Cost Account",Percentage,"Project Account","Project Performance";
        }
        field(5; "Allocation Amount"; Option)
        {
            Caption = 'Allocation Amount';
            OptionCaption = ' ,Cost Account,Fixed Amount';
            OptionMembers = " ","Cost Account","Fixed Amount";
        }
        field(6; "Fixed Amount"; Decimal)
        {
            Caption = 'Fixed Amount';
        }
        field(7; "Allocation Value"; Option)
        {
            Caption = 'Allocation Value';
            OptionCaption = 'Total,Fix,Variable';
            OptionMembers = Total,Fix,Variable;
        }
        field(8; "Allocation Base"; Option)
        {
            Caption = 'Allocation Base';
            OptionCaption = ' ,Actual,Budget';
            OptionMembers = " ",Actual,Budget;
        }
        field(9; "Allocation Share %"; Decimal)
        {
            Caption = 'Allocation Share %';
        }
        field(10; "Iteration Group Code"; Code[10])
        {
            Caption = 'Iteration Group Code';
            TableRelation = "Iteration Group";
        }
        field(11; "Iteration Step"; Integer)
        {
            Caption = 'Iteration Step';
        }
        field(12; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(13; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(14; Comment; Boolean)
        {
            CalcFormula = Exist ("Cost Accounting Comment Line" WHERE ("Table Name" = CONST ("Allocation Archive"),
                                                                      "No." = FIELD (Code),
                                                                      "Version No." = FIELD ("Version No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Version No."; Integer)
        {
            Caption = 'No. of archived Versions';
            Editable = false;
        }
        field(16; "Allocation Occurence"; Integer)
        {
            Caption = 'Allocation Occurence';
        }
        field(17; "Time Archived"; Time)
        {
            Caption = 'Time Archived';
        }
        field(18; "Date Archived"; Date)
        {
            Caption = 'Date Archived';
        }
        field(19; "Archived By"; Code[50])
        {
            Caption = 'Archived By';
        }
    }

    keys
    {
        key(Key1; "Code", "Allocation Occurence", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Name, "Version No.", "Allocation Type", "Allocation Key", "Allocation Amount", "Iteration Group Code", "Iteration Step")
        {
        }
    }
}

