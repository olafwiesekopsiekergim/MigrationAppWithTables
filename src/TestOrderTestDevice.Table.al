table 5034576 "Test Order Test Device"
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
    //   Single Primary Key fields removed from TableRelation
    //   Change VAR name: UserID to UsersID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Order Test Device';

    fields
    {
        field(1; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Test Order";
        }
        field(5; "Propertyset Line No."; Integer)
        {
            Caption = 'Testing Type Line No.';
        }
        field(10; "Test Property Line No."; Integer)
        {
            Caption = 'Test Property Line No.';
        }
        field(15; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'Test Device No.';
            NotBlank = true;
            TableRelation = "Test Device";
        }
        field(20; "Test Propertyset Code"; Code[20])
        {
            Caption = 'Testing Type Code';
            TableRelation = "Test Property Set";
        }
        field(25; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
            TableRelation = "Test Property";
        }
        field(30; Description; Text[30])
        {
            CalcFormula = Lookup ("Test Device".Description WHERE ("No." = FIELD ("No.")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; Blocked; Boolean)
        {
            CalcFormula = Exist ("Test Device" WHERE ("No." = FIELD ("No."),
                                                     Status = CONST (Blocked)));
            Caption = 'Blocked';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Created at"; Date)
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
            Description = '#QMW17.00';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Test Order No.", "Propertyset Line No.", "Test Property Line No.", "No.")
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

