table 11102093 "OM - Branch"
{
    Caption = 'Branch';
    DataCaptionFields = "No.", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
        }
        field(4; "No. of Comments"; Integer)
        {
            CalcFormula = Count ("OM - Comment" WHERE ("Table Name" = CONST (Branch),
                                                      "No." = FIELD ("No.")));
            Caption = 'No. of Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "No. of Documents"; Integer)
        {
            CalcFormula = Count ("OM - Document Line" WHERE ("Table Name" = CONST (Project),
                                                            "No." = FIELD ("No.")));
            Caption = 'No. of Documents';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(7; User; Code[50])
        {
            Caption = 'User';
            TableRelation = "OM - User";
        }
        field(8; "No. of History Objects"; Integer)
        {
            CalcFormula = Count ("OM - C/AL History Object" WHERE ("Branch No." = FIELD ("No.")));
            Caption = 'No. of History Objects';
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

