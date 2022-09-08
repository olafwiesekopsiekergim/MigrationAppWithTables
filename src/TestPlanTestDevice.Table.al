table 5034565 "Test Plan Test Device"
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
    //   replace VAR UserID by UsersID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Plan Test Device';

    fields
    {
        field(5; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            NotBlank = true;
            TableRelation = "Test Plan";
        }
        field(6; Version; Code[20])
        {
            Caption = 'Version';
            TableRelation = "Test Plan".Version WHERE ("No." = FIELD ("Test Plan No."));
        }
        field(10; "Test Propertyset Line No."; Integer)
        {
            Caption = 'Test Propertyset Line No.';
            TableRelation = "Test Plan Property Set"."Line No." WHERE ("Test Plan No." = FIELD ("Test Plan No."),
                                                                       Version = FIELD (Version));
        }
        field(15; "Test Property Line No."; Integer)
        {
            Caption = 'Test Property Line No.';
            TableRelation = "Test Plan Property"."Line No." WHERE ("Test Plan No." = FIELD ("Test Plan No."),
                                                                   Version = FIELD (Version),
                                                                   "Property Set Line No." = FIELD ("Test Propertyset Line No."));
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'Test Device No.';
            NotBlank = true;
            TableRelation = "Test Device";
        }
        field(25; "Test Propertyset Code"; Code[20])
        {
            Caption = 'Test Propertyset Code';
        }
        field(30; "Test Property Code"; Code[20])
        {
            Caption = 'Test Property Code';
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
        key(Key1; "Test Plan No.", Version, "Test Propertyset Line No.", "Test Property Line No.", "No.")
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

