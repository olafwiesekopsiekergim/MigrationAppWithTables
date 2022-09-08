table 8623 "Config. Package"
{
    Caption = 'Config. Package';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Package Name"; Text[50])
        {
            Caption = 'Package Name';
        }
        field(4; "Language ID"; Integer)
        {
            Caption = 'Language ID';
            TableRelation = "Windows Language";
        }
        field(5; "No. of Tables"; Integer)
        {
            CalcFormula = Count ("Config. Package Table" WHERE ("Package Code" = FIELD (Code)));
            Caption = 'No. of Tables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Product Version"; Text[80])
        {
            Caption = 'Product Version';
        }
        field(11; "Exclude Config. Tables"; Boolean)
        {
            Caption = 'Exclude Config. Tables';
        }
        field(12; "Processing Order"; Integer)
        {
            Caption = 'Processing Order';
        }
        field(13; "No. of Records"; Integer)
        {
            CalcFormula = Count ("Config. Package Record" WHERE ("Package Code" = FIELD (Code)));
            Caption = 'No. of Records';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "No. of Errors"; Integer)
        {
            CalcFormula = Count ("Config. Package Error" WHERE ("Package Code" = FIELD (Code)));
            Caption = 'No. of Errors';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Processing Order")
        {
        }
    }

    fieldgroups
    {
    }
}

