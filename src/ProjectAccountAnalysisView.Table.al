table 5000235 "Project Account Analysis View"
{
    Caption = 'Project Account Analysis View';
    DataCaptionFields = "Code", Name;
    Permissions = TableData "Proj. Acc. Analysis View Entry" = rimd,
                  TableData "PA Analysis View Budget Entry" = rimd;

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
        field(4; "Last Entry No."; Integer)
        {
            Caption = 'Last Entry No.';
        }
        field(5; "Last Budget Entry No."; Integer)
        {
            Caption = 'Last Budget Entry No.';
        }
        field(6; "Last Date Updated"; Date)
        {
            Caption = 'Last Date Updated';
        }
        field(7; "Update on Posting"; Boolean)
        {
            Caption = 'Update on Posting';
        }
        field(8; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(9; "Project Account Filter"; Code[250])
        {
            Caption = 'Project Account Filter';
            TableRelation = "Project Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Business Unit Filter"; Code[250])
        {
            Caption = 'Business Unit Filter';
            TableRelation = "Business Unit";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(12; "Date Compression"; Option)
        {
            Caption = 'Date Compression';
            InitValue = Day;
            OptionCaption = 'None,Day,Week,Month,Quarter,Year,Period';
            OptionMembers = "None",Day,Week,Month,Quarter,Year,Period;
        }
        field(13; "Dimension 1 Code"; Code[20])
        {
            Caption = 'Dimension 1 Code';
            TableRelation = Dimension;
        }
        field(14; "Dimension 2 Code"; Code[20])
        {
            Caption = 'Dimension 2 Code';
            TableRelation = Dimension;
        }
        field(15; "Dimension 3 Code"; Code[20])
        {
            Caption = 'Dimension 3 Code';
            TableRelation = Dimension;
        }
        field(16; "Dimension 4 Code"; Code[20])
        {
            Caption = 'Dimension 4 Code';
            TableRelation = Dimension;
        }
        field(17; "Include Budgets"; Boolean)
        {
            AccessByPermission = TableData "Cost Accounting Budget Name" = R;
            Caption = 'Include Budgets';
        }
        field(18; "Refresh When Unblocked"; Boolean)
        {
            Caption = 'Refresh When Unblocked';
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

