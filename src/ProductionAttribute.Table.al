table 5013812 "Production Attribute"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW16.00.01:70:01 #Created new object
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Production Attribute';
    DataCaptionFields = "Prod. Order Status", "Prod. Order No.";

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            Editable = false;
            NotBlank = true;
        }
        field(2; "Prod. Order Status"; Option)
        {
            Caption = 'Prod. Order Status';
            Editable = false;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished, ';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished," ";
        }
        field(3; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Editable = false;
        }
        field(4; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
            Editable = false;
        }
        field(5; "Component Line No."; Integer)
        {
            Caption = 'Component Line No.';
            Editable = false;
        }
        field(6; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Editable = false;
        }
        field(7; "Operation No./Version Code"; Code[10])
        {
            Caption = 'Operation No./Version Code';
            Editable = false;
        }
        field(8; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(50; Attribute; Code[30])
        {
            Caption = 'Attribute';
            TableRelation = "Variable/Attribute Type";
        }
        field(60; Description; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD (Attribute)));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(75; "Value (alphanum.)"; Text[50])
        {
            Caption = 'Value (alphanum.)';
        }
        field(80; "Formula Value"; Text[250])
        {
            Caption = 'Formula Value';
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Prod. Order Status", "Prod. Order No.", "Prod. Order Line No.", "Component Line No.", "Routing No.", "Operation No./Version Code", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Prod. Order No.", "Prod. Order Line No.", "Component Line No.", "Routing No.", "Operation No./Version Code", "Prod. Order Status", "Table ID", "Line No.";
        }
    }

    fieldgroups
    {
    }
}

