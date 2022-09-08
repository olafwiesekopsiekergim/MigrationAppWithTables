table 5056424 "JobAdvertisement/TM"
{
    Caption = 'Job Advertisement';
    Description = 'GrJobAdvert';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(5020; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5021; Description2; Text[30])
        {
            Caption = 'Description2';
        }
        field(6100; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(6101; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode),
                                                                      DimensionValue = FIELD (DimensionValue));
        }
        field(6103; DimensionValueDescription; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode),
                                                                                 DimensionValue = FIELD (DimensionValue)));
            Caption = 'DimensionValueDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6104; DimensionFromDate; Date)
        {
            Caption = 'DimensionFromDate';
        }
        field(6105; DimensionToDate; Date)
        {
            Caption = 'DimensionToDate';
        }
        field(8000; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Internal/External,Internal,External,Internal/External finished,Internal finished,External finished';
            OptionMembers = " ","Internal/External",Internal,External,"Internal/External finished","Internal finished","External finished";
        }
        field(8001; WithArchivedAppl; Boolean)
        {
            Caption = 'WithArchivedAppl';
        }
        field(8010; PeriodFromDate; Date)
        {
            Caption = 'PeriodFromDate';
        }
        field(8011; PeriodToDate; Date)
        {
            Caption = 'PeriodToDate';
        }
        field(8012; EmploymentFromDate; Date)
        {
            Caption = 'EmploymentFromDate';
        }
        field(8013; EmploymentToDate; Date)
        {
            Caption = 'EmploymentToDate';
        }
        field(8020; JobNo; Code[20])
        {
            Caption = 'JobNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Job));
        }
        field(8021; JobLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (JobNo));
        }
        field(8023; JobDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (JobNo),
                                                                          "Line No." = FIELD (JobLineNo)));
            Caption = 'JobDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8200; PlaceNo; Code[20])
        {
            Caption = 'PlaceNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST (Location));
        }
        field(8201; PlaceLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'PlaceLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (PlaceNo));
        }
        field(8203; PlaceDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (PlaceNo),
                                                                          "Line No." = FIELD (PlaceLineNo)));
            Caption = 'PlaceDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8210; PlaceCosts; Decimal)
        {
            Caption = 'PlaceCosts';
        }
        field(8220; ReceivedApplications; Decimal)
        {
            Caption = 'Received Applications';
        }
        field(8221; CostsperApplication; Decimal)
        {
            Caption = 'CostsperApplication';
        }
        field(9990; RecordDateModify; Date)
        {
            Caption = 'RecordDateModify';
            Editable = false;
        }
        field(9991; RecordTimeModify; Time)
        {
            Caption = 'RecordTimeModify';
            Editable = false;
        }
        field(9992; RecordUserNoModify; Code[50])
        {
            Caption = 'RecordUserNoModify';
            Editable = false;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

