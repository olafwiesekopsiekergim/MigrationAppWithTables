table 5050272 "TE-Destination"
{
    // Documentation()
    // ====================================================================================================================================
    // No.    Modul  Version    Fa.     Name  Date       Description
    // ====================================================================================================================================
    // 1.00   RK     4.00.01    BBO     GL    23.04.08   new FlowField 23 "Time at Destination (unposted)"

    Caption = 'TE-Destination';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Destination; Text[50])
        {
            Caption = 'Destination';
        }
        field(3; State; Option)
        {
            Caption = 'State';
            InitValue = Both;
            OptionCaption = 'Place of Departure,Destination,Both';
            OptionMembers = "Place of Departure",Destination,Both;
        }
        field(4; Employee; Code[20])
        {
            Caption = 'Employee';
            TableRelation = "TE-Employee";
        }
        field(5; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(6; User; Code[50])
        {
            Caption = 'User';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; Range; Option)
        {
            Caption = 'Range';
            OptionCaption = 'All,User';
            OptionMembers = All,User;
        }
        field(8; Country; Code[10])
        {
            Caption = 'Country';
            InitValue = 'DE';
            TableRelation = "TE-Country";
        }
        field(10; City; Text[50])
        {
            Caption = 'City';
        }
        field(11; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code".Code;
        }
        field(12; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(13; "External Work Place"; Boolean)
        {
            Caption = 'External Workplace';
        }
        field(20; "Employee Filter"; Code[20])
        {
            Caption = 'Employee Filter';
            FieldClass = FlowFilter;
        }
        field(21; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(22; "Time at Destination (posted)"; Decimal)
        {
            CalcFormula = Sum ("TE-Posted Part Account".Duration WHERE ("Destination Code" = FIELD (Code),
                                                                       "Employee No." = FIELD ("Employee Filter"),
                                                                       "Departure Date" = FIELD ("Date Filter")));
            Caption = 'Time at Destination (posted)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Time at Destination (unposted)"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account".Duration WHERE ("Destination Code" = FIELD (Code),
                                                                "Employee No." = FIELD ("Employee Filter"),
                                                                "Departure Date" = FIELD ("Date Filter")));
            Caption = 'Time at Destination (unposted)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Travel Type"; Code[20])
        {
            Caption = 'Travel Type';
            TableRelation = "TE-Travel-Type";
        }
        field(25; "Travel Type Check"; Option)
        {
            Caption = 'Travel Type Check';
            OptionCaption = ' ,Mandatory,Not Allowed';
            OptionMembers = " ",Mandatory,"Not Allowed";
        }
        field(26; "Type Extension"; Code[20])
        {
            Caption = 'Type Extension';
        }
        field(27; "Big City"; Boolean)
        {
            Caption = 'Big City';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; Destination)
        {
        }
        key(Key3; City)
        {
        }
    }

    fieldgroups
    {
    }
}

