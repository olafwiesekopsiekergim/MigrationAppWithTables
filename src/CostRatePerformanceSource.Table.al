table 5000020 "Cost Rate Performance Source"
{
    Caption = 'Cost Rate Performance Source';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'GCode';
            TableRelation = IF (Type = CONST ("Cost Account")) "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1))
            ELSE
            IF (Type = CONST ("Work Type")) "Work Type".Code
            ELSE
            IF (Type = CONST (Resource)) Resource."No."
            ELSE
            IF (Type = FILTER ("Work Center Setup Time" .. "Work Center")) "Work Center"."No.";
        }
        field(2; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = IF ("Ref. Unit Type" = CONST ("Reference Unit")) "Reference Unit";
        }
        field(3; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            NotBlank = true;
            TableRelation = "Accounting Period";
            ValidateTableRelation = false;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            InitValue = "Cost Account";
            OptionCaption = ',Work Type,Resource,,,,,,,,,,Work Center Setup Time,Work Center Run Time,Work Center,,Cost Account,All';
            OptionMembers = ,"Work Type",Resource,,,,,,,,,,"Work Center Setup Time","Work Center Run Time","Work Center",,"Cost Account",All;
        }
        field(5; "Ref. Unit Type"; Option)
        {
            Caption = 'Reference Unit Tyoe';
            OptionCaption = 'Reference Unit,,All';
            OptionMembers = "Reference Unit",,All;
        }
        field(10; "Project Account Direct Cost"; Code[20])
        {
            Caption = 'Project Account Direct Cost';
            TableRelation = "Project Account";
        }
        field(11; "Cost Type Direct Cost"; Option)
        {
            Caption = 'Cost Type Direct Cost';
            InitValue = Variable;
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(12; "Fix % Direct Cost"; Integer)
        {
            Caption = 'Fix % Direct Cost';
            MaxValue = 100;
            MinValue = 0;
        }
        field(15; "Project Account Overhead Cost"; Code[20])
        {
            Caption = 'Project Account Overhead Cost';
            TableRelation = "Project Account";
        }
        field(16; "Cost Type Overhead Cost"; Option)
        {
            Caption = 'Cost Type Overhead Cost';
            OptionCaption = 'Fix,Variable,Mixed %';
            OptionMembers = Fix,Variable,"Mixed %";
        }
        field(17; "Fix % Overhead Cost"; Integer)
        {
            Caption = 'Fix % Overhead Cost';
            MaxValue = 100;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Ref. Unit Type", "Reference Unit Code", Type, "Code", "Starting Date")
        {
            Clustered = true;
        }
        key(Key2; Type, "Code", "Ref. Unit Type", "Reference Unit Code", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

