table 5034593 "Test Property Test Device"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00:104 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Change VAR name: UserID to UsersID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Property Test Device';

    fields
    {
        field(5; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            NotBlank = true;
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'Test Device No.';
            NotBlank = true;
            TableRelation = "Test Device";
        }
        field(30; "Test Property Description"; Text[30])
        {
            CalcFormula = Lookup ("Test Property".Description WHERE (Code = FIELD ("Test Property Code")));
            Caption = 'Test Property Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; Description; Text[30])
        {
            CalcFormula = Lookup ("Test Device".Description WHERE ("No." = FIELD ("No.")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(310; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(320; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(330; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Test Property Code", "No.")
        {
            Clustered = true;
        }
        key(Key2; "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

