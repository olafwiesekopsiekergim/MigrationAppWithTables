table 349 "Dimension Value"
{
    Caption = 'Dimension Value';
    Permissions = TableData "Cost Acc. Analysis View Entry" = rimd,
                  TableData "CA Analysis View Budget Entry" = rimd,
                  TableData "Proj. Acc. Analysis View Entry" = rimd,
                  TableData "PA Analysis View Budget Entry" = rimd;

    fields
    {
        field(1; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "Dimension Value Type"; Option)
        {
            Caption = 'Dimension Value Type';
            OptionCaption = 'Standard,Heading,Total,Begin-Total,End-Total';
            OptionMembers = Standard,Heading,Total,"Begin-Total","End-Total";
        }
        field(5; Totaling; Text[250])
        {
            Caption = 'Totaling';
            TableRelation = IF ("Dimension Value Type" = CONST (Total)) "Dimension Value"."Dimension Code" WHERE ("Dimension Code" = FIELD ("Dimension Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(6; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(7; "Consolidation Code"; Code[20])
        {
            AccessByPermission = TableData "Business Unit" = R;
            Caption = 'Consolidation Code';
        }
        field(8; Indentation; Integer)
        {
            Caption = 'Indentation';
        }
        field(9; "Global Dimension No."; Integer)
        {
            Caption = 'Global Dimension No.';
        }
        field(10; "Map-to IC Dimension Code"; Code[20])
        {
            Caption = 'Map-to IC Dimension Code';
        }
        field(11; "Map-to IC Dimension Value Code"; Code[20])
        {
            Caption = 'Map-to IC Dimension Value Code';
            TableRelation = "IC Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Map-to IC Dimension Code"));
        }
        field(12; "Dimension Value ID"; Integer)
        {
            AutoIncrement = true;
            Caption = 'Dimension Value ID';
            Editable = false;
        }
        field(5000000; "Default Cost Account Schedule"; Code[10])
        {
            AccessByPermission = TableData "Cost Account Schedule Name" = R;
            Caption = 'Default Cost Account Schedule';
            TableRelation = "Cost Account Schedule Name";
        }
        field(5000001; "Reference Unit Code"; Code[10])
        {
            AccessByPermission = TableData "Reference Unit" = R;
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(5000010; "Assigned User ID"; Code[50])
        {
            AccessByPermission = TableData "Cost Account Setup" = R;
            Caption = 'Assigned User ID';
            TableRelation = "User Setup";
        }
        field(5000020; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5000021; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
    }

    keys
    {
        key(Key1; "Dimension Code", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Code", "Global Dimension No.")
        {
        }
        key(Key3; Name)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Dimension Code", Name)
        {
        }
    }
}

