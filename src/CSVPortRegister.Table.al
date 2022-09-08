table 5157807 "CSV Port Register"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'CSV Port Register';

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
        }
        field(4; Direction; Option)
        {
            Caption = 'Direction';
            OptionCaption = 'Import,Export,Datapool';
            OptionMembers = Import,Export,Datapool;
        }
        field(5; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(6; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (Object.Caption WHERE (Type = CONST (Table),
                                                       ID = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "File Name"; Text[250])
        {
            Caption = 'Filename';
        }
        field(8; "Records Total"; Integer)
        {
            Caption = 'Total';
        }
        field(9; "Records Inserted"; Integer)
        {
            Caption = 'Inserted';
        }
        field(10; "Records Modified"; Integer)
        {
            Caption = 'Modified Records';
        }
        field(11; "Records Skipped"; Integer)
        {
            Caption = 'Skipped';
        }
        field(12; Time; Time)
        {
            Caption = 'Time';
        }
        field(13; "User ID"; Code[50])
        {
            Caption = 'User';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(14; "Port Code"; Code[20])
        {
            Caption = 'CSV Port';
            TableRelation = "CSV Port";
        }
        field(15; "Port Description"; Text[50])
        {
            CalcFormula = Lookup ("CSV Port".Description WHERE (Code = FIELD ("Port Code")));
            Caption = 'Port Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

