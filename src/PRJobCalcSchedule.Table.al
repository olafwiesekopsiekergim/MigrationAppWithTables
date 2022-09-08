table 5292351 "PR - Job Calc. Schedule"
{
    Caption = 'Job Calc. Schedule';
    DataCaptionFields = Type;

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            Description = 'Pattern,JobLine';
            OptionCaption = 'Template,Job Line';
            OptionMembers = Template,"Job Line";
        }
        field(2; "Job No."; Code[20])
        {
            Caption = 'Job No.';
        }
        field(3; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
        }
        field(4; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(15; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(20; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Description = 'TR "No. Series"';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(100; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(101; "Created Date"; Date)
        {
            Caption = 'Created Date';
            Description = 'ne';
            Editable = false;
        }
        field(102; "Created Time"; Time)
        {
            Caption = 'Created Time';
            Description = 'ne';
            Editable = false;
        }
        field(120; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = 'ne';
            Editable = false;
        }
        field(121; "Last Modified Date"; Date)
        {
            Caption = 'Last Modified Date';
            Description = 'ne';
            Editable = false;
        }
        field(122; "Last Modified Time"; Time)
        {
            Caption = 'Last Modified Time';
            Description = 'ne';
            Editable = false;
        }
        field(130; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(131; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(1000; "Calculation Value"; Decimal)
        {
            Caption = 'Calculation Value';
        }
        field(1010; "Calculation Line No."; Integer)
        {
            Caption = 'Calculation Line No.';
        }
        field(1011; "Calculation Row No."; Code[10])
        {
            Caption = 'Calculation Row No.';
            Description = 'LU Job Calculation Schedule Line';
        }
        field(1100; "Calculation Status"; Option)
        {
            Caption = 'Calculation Status';
            Description = ' ,Quote Calculation,Order Calculation,Procurement+Actual';
            OptionCaption = ' ,Quote Calculation,Order Calculation,Procurement+Actual';
            OptionMembers = " ","Quote Calculation","Order Calculation","Procurement+Actual";
        }
        field(1900; "Error Found"; Boolean)
        {
            Caption = 'Error';
        }
        field(2000; "Pass Amount Type"; Option)
        {
            Caption = 'Pass Amount Type';
            Description = ' ,Total Direct Cost,Total Cost,Total Price';
            OptionCaption = ' ,Total Direct Cost,Total Cost,Total Price';
            OptionMembers = " ","Total Direct Cost","Total Cost","Total Price";
        }
        field(2001; "Pass Automatic"; Boolean)
        {
            Caption = 'Pass Automatic';
        }
        field(5292332; WBS; Code[20])
        {
            Caption = 'WBS';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Type, "Job No.", "Job Line Unique No.", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

