table 13 "Salesperson/Purchaser"
{
    // #AT Unterschrift hinzugefügt

    Caption = 'Salesperson/Purchaser';
    DataCaptionFields = "Code", Name;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Commission %"; Decimal)
        {
            Caption = 'Commission %';
            DecimalPlaces = 2 : 2;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5050; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(5051; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(5052; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(5053; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(5054; "Next To-do Date"; Date)
        {
            CalcFormula = Min ("To-do".Date WHERE ("Salesperson Code" = FIELD (Code),
                                                  Closed = CONST (false),
                                                  "System To-do Type" = FILTER (Organizer | "Salesperson Attendee")));
            Caption = 'Next To-do Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5055; "No. of Opportunities"; Integer)
        {
            CalcFormula = Count ("Opportunity Entry" WHERE ("Salesperson Code" = FIELD (Code),
                                                           Active = CONST (true),
                                                           "Estimated Close Date" = FIELD ("Date Filter"),
                                                           "Action Taken" = FIELD ("Action Taken Filter"),
                                                           "Sales Cycle Code" = FIELD ("Sales Cycle Filter"),
                                                           "Sales Cycle Stage" = FIELD ("Sales Cycle Stage Filter"),
                                                           "Probability %" = FIELD ("Probability % Filter"),
                                                           "Completed %" = FIELD ("Completed % Filter")));
            Caption = 'No. of Opportunities';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5056; "Estimated Value (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Opportunity Entry"."Estimated Value (LCY)" WHERE ("Salesperson Code" = FIELD (Code),
                                                                                 Active = CONST (true),
                                                                                 "Estimated Close Date" = FIELD ("Date Filter"),
                                                                                 "Action Taken" = FIELD ("Action Taken Filter"),
                                                                                 "Sales Cycle Code" = FIELD ("Sales Cycle Filter"),
                                                                                 "Sales Cycle Stage" = FIELD ("Sales Cycle Stage Filter"),
                                                                                 "Probability %" = FIELD ("Probability % Filter"),
                                                                                 "Completed %" = FIELD ("Completed % Filter")));
            Caption = 'Estimated Value (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5057; "Calcd. Current Value (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Opportunity Entry"."Calcd. Current Value (LCY)" WHERE ("Salesperson Code" = FIELD (Code),
                                                                                      Active = CONST (true),
                                                                                      "Estimated Close Date" = FIELD ("Date Filter"),
                                                                                      "Action Taken" = FIELD ("Action Taken Filter"),
                                                                                      "Sales Cycle Code" = FIELD ("Sales Cycle Filter"),
                                                                                      "Sales Cycle Stage" = FIELD ("Sales Cycle Stage Filter"),
                                                                                      "Probability %" = FIELD ("Probability % Filter"),
                                                                                      "Completed %" = FIELD ("Completed % Filter")));
            Caption = 'Calcd. Current Value (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5058; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5059; "No. of Interactions"; Integer)
        {
            CalcFormula = Count ("Interaction Log Entry" WHERE ("Salesperson Code" = FIELD (Code),
                                                               Canceled = CONST (false),
                                                               Date = FIELD ("Date Filter"),
                                                               Postponed = CONST (false)));
            Caption = 'No. of Interactions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5060; "Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Interaction Log Entry"."Cost (LCY)" WHERE ("Salesperson Code" = FIELD (Code),
                                                                          Canceled = CONST (false),
                                                                          Date = FIELD ("Date Filter"),
                                                                          Postponed = CONST (false)));
            Caption = 'Cost (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5061; "Duration (Min.)"; Decimal)
        {
            CalcFormula = Sum ("Interaction Log Entry"."Duration (Min.)" WHERE ("Salesperson Code" = FIELD (Code),
                                                                               Canceled = CONST (false),
                                                                               Date = FIELD ("Date Filter"),
                                                                               Postponed = CONST (false)));
            Caption = 'Duration (Min.)';
            DecimalPlaces = 0 : 0;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5062; "Job Title"; Text[30])
        {
            Caption = 'Job Title';
        }
        field(5063; "Action Taken Filter"; Option)
        {
            Caption = 'Action Taken Filter';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Next,Previous,Updated,Jumped,Won,Lost';
            OptionMembers = " ",Next,Previous,Updated,Jumped,Won,Lost;
        }
        field(5064; "Sales Cycle Filter"; Code[10])
        {
            Caption = 'Sales Cycle Filter';
            FieldClass = FlowFilter;
            TableRelation = "Sales Cycle";
        }
        field(5065; "Sales Cycle Stage Filter"; Integer)
        {
            Caption = 'Sales Cycle Stage Filter';
            FieldClass = FlowFilter;
            TableRelation = "Sales Cycle Stage".Stage WHERE ("Sales Cycle Code" = FIELD ("Sales Cycle Filter"));
        }
        field(5066; "Probability % Filter"; Decimal)
        {
            Caption = 'Probability % Filter';
            DecimalPlaces = 1 : 1;
            FieldClass = FlowFilter;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5067; "Completed % Filter"; Decimal)
        {
            Caption = 'Completed % Filter';
            DecimalPlaces = 1 : 1;
            FieldClass = FlowFilter;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5068; "Avg. Estimated Value (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Average ("Opportunity Entry"."Estimated Value (LCY)" WHERE ("Salesperson Code" = FIELD (Code),
                                                                                     Active = CONST (true),
                                                                                     "Estimated Close Date" = FIELD ("Date Filter"),
                                                                                     "Action Taken" = FIELD ("Action Taken Filter"),
                                                                                     "Sales Cycle Code" = FIELD ("Sales Cycle Filter"),
                                                                                     "Sales Cycle Stage" = FIELD ("Sales Cycle Stage Filter"),
                                                                                     "Probability %" = FIELD ("Probability % Filter"),
                                                                                     "Completed %" = FIELD ("Completed % Filter")));
            Caption = 'Avg. Estimated Value (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5069; "Avg.Calcd. Current Value (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Average ("Opportunity Entry"."Calcd. Current Value (LCY)" WHERE ("Salesperson Code" = FIELD (Code),
                                                                                          Active = CONST (true),
                                                                                          "Estimated Close Date" = FIELD ("Date Filter"),
                                                                                          "Action Taken" = FIELD ("Action Taken Filter"),
                                                                                          "Sales Cycle Code" = FIELD ("Sales Cycle Filter"),
                                                                                          "Sales Cycle Stage" = FIELD ("Sales Cycle Stage Filter"),
                                                                                          "Probability %" = FIELD ("Probability % Filter"),
                                                                                          "Completed %" = FIELD ("Completed % Filter")));
            Caption = 'Avg.Calcd. Current Value (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5070; "Contact Filter"; Code[20])
        {
            Caption = 'Contact Filter';
            FieldClass = FlowFilter;
            TableRelation = Contact;
        }
        field(5071; "Contact Company Filter"; Code[20])
        {
            Caption = 'Contact Company Filter';
            FieldClass = FlowFilter;
            TableRelation = Contact WHERE (Type = CONST (Company));
        }
        field(5072; "Campaign Filter"; Code[20])
        {
            Caption = 'Campaign Filter';
            FieldClass = FlowFilter;
            TableRelation = Campaign;
        }
        field(5073; "Estimated Value Filter"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Estimated Value Filter';
            FieldClass = FlowFilter;
        }
        field(5074; "Calcd. Current Value Filter"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Calcd. Current Value Filter';
            FieldClass = FlowFilter;
        }
        field(5075; "Chances of Success % Filter"; Decimal)
        {
            Caption = 'Chances of Success % Filter';
            DecimalPlaces = 0 : 0;
            FieldClass = FlowFilter;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5076; "To-do Status Filter"; Option)
        {
            Caption = 'To-do Status Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Not Started,In Progress,Completed,Waiting,Postponed';
            OptionMembers = "Not Started","In Progress",Completed,Waiting,Postponed;
        }
        field(5077; "Closed To-do Filter"; Boolean)
        {
            Caption = 'Closed To-do Filter';
            FieldClass = FlowFilter;
        }
        field(5078; "Priority Filter"; Option)
        {
            Caption = 'Priority Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Low,Normal,High';
            OptionMembers = Low,Normal,High;
        }
        field(5079; "Team Filter"; Code[10])
        {
            Caption = 'Team Filter';
            FieldClass = FlowFilter;
            TableRelation = Team;
        }
        field(5082; "Opportunity Entry Exists"; Boolean)
        {
            CalcFormula = Exist ("Opportunity Entry" WHERE ("Salesperson Code" = FIELD (Code),
                                                           Active = CONST (true),
                                                           "Contact No." = FIELD ("Contact Filter"),
                                                           "Contact Company No." = FIELD ("Contact Company Filter"),
                                                           "Sales Cycle Code" = FIELD ("Sales Cycle Filter"),
                                                           "Sales Cycle Stage" = FIELD ("Sales Cycle Stage Filter"),
                                                           "Campaign No." = FIELD ("Campaign Filter"),
                                                           "Action Taken" = FIELD ("Action Taken Filter"),
                                                           "Estimated Value (LCY)" = FIELD ("Estimated Value Filter"),
                                                           "Calcd. Current Value (LCY)" = FIELD ("Calcd. Current Value Filter"),
                                                           "Completed %" = FIELD ("Completed % Filter"),
                                                           "Chances of Success %" = FIELD ("Chances of Success % Filter"),
                                                           "Probability %" = FIELD ("Probability % Filter"),
                                                           "Estimated Close Date" = FIELD ("Date Filter"),
                                                           "Close Opportunity Code" = FIELD ("Close Opportunity Filter")));
            Caption = 'Opportunity Entry Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5083; "To-do Entry Exists"; Boolean)
        {
            CalcFormula = Exist ("To-do" WHERE ("Salesperson Code" = FIELD (Code),
                                               "Contact No." = FIELD ("Contact Filter"),
                                               "Contact Company No." = FIELD ("Contact Company Filter"),
                                               "Campaign No." = FIELD ("Campaign Filter"),
                                               "Team Code" = FIELD ("Team Filter"),
                                               Status = FIELD ("To-do Status Filter"),
                                               Closed = FIELD ("Closed To-do Filter"),
                                               Priority = FIELD ("Priority Filter"),
                                               Date = FIELD ("Date Filter")));
            Caption = 'To-do Entry Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5084; "Close Opportunity Filter"; Code[10])
        {
            Caption = 'Close Opportunity Filter';
            FieldClass = FlowFilter;
            TableRelation = "Close Opportunity Code";
        }
        field(5085; "Search E-Mail"; Code[80])
        {
            Caption = 'Search E-Mail';
        }
        field(5086; "E-Mail 2"; Text[80])
        {
            Caption = 'E-Mail 2';
            ExtendedDatatype = EMail;
        }
        field(50001; Signature; BLOB)
        {
            Caption = 'Signature';
            SubType = Bitmap;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Search E-Mail")
        {
        }
    }

    fieldgroups
    {
    }
}

