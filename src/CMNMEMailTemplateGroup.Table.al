table 5171693 "CMNM E-Mail Template Group"
{
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'E-Mail Template Group';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Group Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(100; "User Filter"; Code[50])
        {
            Caption = 'User Filter';
            FieldClass = FlowFilter;
            TableRelation = "CMNM User Setup";
        }
        field(105; "User Access"; Boolean)
        {
            CalcFormula = Exist ("CMNM User Permission" WHERE ("User ID" = FIELD ("User Filter"),
                                                              Type = CONST (Group),
                                                              "No." = FIELD (Code),
                                                              "Dispatch Type" = FILTER (Smtp | Outlook)));
            Caption = 'User Permission';
            FieldClass = FlowField;
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

