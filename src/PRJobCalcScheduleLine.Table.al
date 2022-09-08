table 5292352 "PR - Job Calc. Schedule Line"
{
    Caption = 'Job Calc. Schedule Line';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            Description = 'Template,Job Line';
            OptionCaption = 'Template,Job Line';
            OptionMembers = Template,"Job Line";
        }
        field(2; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            NotBlank = true;
        }
        field(3; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
        }
        field(4; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(20; "Row No."; Code[10])
        {
            Caption = 'Row No.';
        }
        field(25; "Amount Type"; Option)
        {
            Caption = 'Amount Type';
            Description = ' ,Total Direct Cost,Total Cost,Total Price';
            OptionCaption = ' ,Total Direct Cost,Total Cost,Total Price';
            OptionMembers = " ","Total Direct Cost","Total Cost","Total Price";
        }
        field(26; "Include Remaining"; Boolean)
        {
            Caption = 'Include Remaining';
        }
        field(30; "Totaling Type"; Option)
        {
            Caption = 'Totaling Type';
            Description = ' ,Calculation Group,Extra Charge,Formula,Value,Rounding';
            OptionCaption = ' ,Calculation Group,Extra Charge,Formula,Value,Rounding';
            OptionMembers = " ","Calculation Group","Extra Charge",Formula,Value,Rounding;
        }
        field(31; Totaling; Text[250])
        {
            Caption = 'Totaling';
            Description = 'MTR 30';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(100; "Link Row No."; Code[10])
        {
            Caption = 'Link Row No.';
        }
        field(110; "Special Format"; Option)
        {
            Caption = 'Special Format';
            Description = ' ,Bold,Gray,Light Gray';
            OptionCaption = ' ,Bold,Gray,Light Gray';
            OptionMembers = " ",Bold,Gray,"Light Gray";
        }
        field(120; Indent; Integer)
        {
            Caption = 'Indent';
        }
        field(1000; "Quote Calculation"; Decimal)
        {
            Caption = 'Quote Calculation';
            Editable = false;
        }
        field(1100; "Order Calculation"; Decimal)
        {
            Caption = 'Order Calculation';
            Editable = false;
        }
        field(1200; Procurement; Decimal)
        {
            Caption = 'Procurement';
            Editable = false;
        }
        field(1300; Actual; Decimal)
        {
            Caption = 'Actual';
            Editable = false;
        }
        field(1900; "Error Found"; Boolean)
        {
            Caption = 'Error';
        }
    }

    keys
    {
        key(Key1; Type, "Job No.", "Job Line Unique No.", "Version No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "Job No.", "Job Line Unique No.", "Version No.", "Row No.")
        {
        }
        key(Key3; Type, "Job No.", "Job Line Unique No.", "Version No.", "Link Row No.")
        {
        }
        key(Key4; Type, "Job No.", "Job Line Unique No.", "Version No.", "Totaling Type")
        {
        }
        key(Key5; "Totaling Type")
        {
        }
    }

    fieldgroups
    {
    }
}

