table 5034562 "Test Plan Property Set"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.01.01:T503 02.09.10 DEMSR.KHS
    //   Error using Data Migration Tool
    // 
    // #QMW16.00.02.06:T504 28.02.11 DEMSR.KHS
    //   Correct filter for Test Plan Properties delete
    // 
    // #QMW16.00.03:01:T514 25.04.12 DEMSR.KHS
    //   Option Caption of "Testing Method" changed (starting with capital letters)
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

    Caption = 'Test Plan Property Set';
    DataCaptionFields = "Test Property Set Code";

    fields
    {
        field(1; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Editable = false;
            TableRelation = "Test Plan";
        }
        field(2; "Test Property Set Code"; Code[20])
        {
            Caption = 'Test Property Set Code';
            TableRelation = "Test Property Set";
        }
        field(3; Version; Code[20])
        {
            Caption = 'Version';
        }
        field(6; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(9; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034562),
                                                         "No." = FIELD ("Test Plan No."),
                                                         "Version No." = FIELD (Version),
                                                         "Int 1" = FIELD ("Line No."),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034562),
                                                         "No." = FIELD ("Test Plan No."),
                                                         "Version No." = FIELD (Version),
                                                         "Int 1" = FIELD ("Line No."),
                                                         Internal = CONST (false)));
            Caption = 'External Comment';
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
        field(400; "AQL-Value Zero Defect"; Decimal)
        {
            Caption = 'ZD';
            DecimalPlaces = 0 : 5;
            TableRelation = "Allowed AQL Value";
        }
        field(405; "AQL-Value Severe"; Decimal)
        {
            Caption = 'S';
            DecimalPlaces = 0 : 5;
            TableRelation = "Allowed AQL Value";
        }
        field(410; "AQL-Value Critical"; Decimal)
        {
            Caption = 'C';
            DecimalPlaces = 0 : 5;
            TableRelation = "Allowed AQL Value";
        }
        field(415; "AQL-Value Major"; Decimal)
        {
            Caption = 'Ma';
            DecimalPlaces = 0 : 5;
            TableRelation = "Allowed AQL Value";
        }
        field(420; "AQL-Value Minor"; Decimal)
        {
            Caption = 'Mi';
            DecimalPlaces = 0 : 5;
            TableRelation = "Allowed AQL Value";
        }
        field(430; "Testing Method"; Option)
        {
            Caption = 'Testing Method';
            Description = '#QMW16.00.03:01:T514';
            OptionCaption = ' ,Counting (AQL),Measuring';
            OptionMembers = " ","Counting (AQL)",Measuring;
        }
    }

    keys
    {
        key(Key1; "Test Plan No.", Version, "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Property Set Code")
        {
        }
    }

    fieldgroups
    {
    }
}

