table 5000075 "Allocation Header"
{
    Caption = 'Allocation Header';
    DataCaptionFields = "Code", Name;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
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
            InitValue = 100;
            MaxValue = 100;
            MinValue = 0;
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
            CalcFormula = Exist ("Cost Accounting Comment Line" WHERE ("Table Name" = CONST (Allocation),
                                                                      "No." = FIELD (Code)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "No. of archived Versions"; Integer)
        {
            CalcFormula = Max ("Allocation Header Archive"."Version No." WHERE (Code = FIELD (Code)));
            Caption = 'No. of archived Versions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Allocation Occurence"; Integer)
        {
            Caption = 'Allocation Occurence';
        }
        field(1000; "Date Filter2"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Iteration Group Code", "Iteration Step")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Name, "Allocation Type", "Allocation Key", "Allocation Amount", "Iteration Group Code", "Iteration Step", "No. of archived Versions")
        {
        }
    }
}

