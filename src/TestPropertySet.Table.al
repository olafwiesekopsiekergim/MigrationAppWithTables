table 5034580 "Test Property Set"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:T512 07.09.11 DEMSR.KHS
    //   Test Method option: Options capitalized
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

    Caption = 'Test Property Set';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(9; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(10; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
        }
        field(11; Comment; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (1),
                                                         "No." = FIELD (Code)));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(235; "Internal Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034580),
                                                         "No." = FIELD (Code),
                                                         Internal = CONST (true)));
            Caption = 'Internal Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(240; "External Comment"; Boolean)
        {
            CalcFormula = Exist ("QM Comment Line" WHERE (Type = CONST (5034580),
                                                         "No." = FIELD (Code),
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
            Description = '#QMW16.00.03:T512';
            OptionCaption = ' ,Counting (AQL),Measuring';
            OptionMembers = " ","counting (AQL)",measuring;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
    }

    fieldgroups
    {
    }
}

