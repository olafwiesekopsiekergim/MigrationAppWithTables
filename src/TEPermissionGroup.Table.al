table 5050267 "TE-Permission Group"
{
    Caption = 'TE-Permission Group';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "TE-Permission Group";
            ValidateTableRelation = false;
        }
        field(11; "Group Description"; Text[30])
        {
            Caption = 'Group Description';
        }
        field(13; "Distance Without Permission"; Decimal)
        {
            Caption = 'Distance Without Permission';
        }
        field(14; "Days Without Permission"; Integer)
        {
            Caption = 'Days Without Permission';
        }
        field(15; "Costs Without Permission"; Decimal)
        {
            Caption = 'Costs Without Permission';
        }
        field(16; Range; Option)
        {
            Caption = 'Range';
            OptionCaption = 'Both,Grant,Proof';
            OptionMembers = Both,Grant,Proof;
        }
        field(17; Permissions; Option)
        {
            Caption = 'Permissions';
            OptionCaption = 'Unrestricted,,,Posting,,,,No Posting';
            OptionMembers = Unrestricted,,,Posting,,,,"No Posting";
        }
        field(18; Authorization; Option)
        {
            Caption = 'Authorization Main';
            OptionCaption = 'Undefined,Main,Vice,Human Resources,Trade Union';
            OptionMembers = Undefined,Main,Vice,"Human Resources","Trade Union";
        }
        field(19; "Viewing Right"; Boolean)
        {
            Caption = 'Viewing Right';
        }
        field(20; "Maximum Permission"; Decimal)
        {
            Caption = 'Maximum Permission';
        }
        field(101; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(102; "Last Time Modified"; Time)
        {
            Caption = 'Last Time Modified';
            Editable = false;
        }
        field(103; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
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

