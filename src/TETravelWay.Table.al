table 5050274 "TE-Travel Way"
{
    Caption = 'TE-Travel Way';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Departure-Place"; Text[80])
        {
            Caption = 'Departure-Place';
            Editable = false;
        }
        field(3; Destination; Text[80])
        {
            Caption = 'Destination';
            Editable = false;
        }
        field(4; Routing; Text[80])
        {
            Caption = 'Routing';
        }
        field(5; Kilometer; Decimal)
        {
            Caption = 'Kilometer';
        }
        field(6; "Kilometers Balanced"; Option)
        {
            Caption = 'Kilometers Balanced';
            InitValue = Bidirectional;
            OptionCaption = 'Single,Bidirectional,Daily';
            OptionMembers = Single,Bidirectional,Daily;
        }
        field(7; "Fixed Amount"; Decimal)
        {
            Caption = 'Fixed Amount';
        }
        field(8; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(9; "Job/ Customer"; Code[20])
        {
            Caption = 'Job/ Customer';
            TableRelation = IF ("Job Integration" = CONST (JOB)) Job
            ELSE
            IF ("Job Integration" = CONST (Customer)) Customer;
        }
        field(10; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            InitValue = 'DE';
            TableRelation = "TE-Country";
        }
        field(11; "Departure-Place Code"; Code[20])
        {
            Caption = 'Departure-Place Code';
            NotBlank = false;
            TableRelation = "TE-Destination" WHERE (State = FILTER (Both | "Place of Departure"));
        }
        field(12; "Destination Code"; Code[20])
        {
            Caption = 'Destination Code';
            NotBlank = false;
            TableRelation = "TE-Destination" WHERE (State = FILTER (Both | Destination));
        }
        field(13; "Purpose Code"; Code[20])
        {
            Caption = 'Purpose Code';
            TableRelation = "TE-Travel-Purpose";
        }
        field(14; Purpose; Text[80])
        {
            Caption = 'Purpose';
        }
        field(15; User; Code[50])
        {
            Caption = 'User';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(16; Range; Option)
        {
            Caption = 'Range';
            OptionCaption = 'All,User';
            OptionMembers = All,User;
        }
        field(17; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(18; "Search Word"; Code[30])
        {
            Caption = 'Search Word';
        }
        field(19; Comment; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = CONST (5050274),
                                                         "Account No." = FIELD ("No."),
                                                         "Part Account No." = CONST (0),
                                                         "Part Account Line No." = CONST (0)));
            Caption = 'Comment';
            FieldClass = FlowField;
        }
        field(20; "Job Amount"; Decimal)
        {
            Caption = 'Job Amount';
        }
        field(21; "Job Amount Option"; Option)
        {
            Caption = 'Job Amount Option';
            OptionCaption = 'Travel Expenses,Complete Amount,Daily Amount';
            OptionMembers = "Travel Expenses","Complete Amount","Daily Amount";
        }
        field(22; "Voucher Type Daily Amount"; Code[20])
        {
            Caption = 'Voucher Type Daily Amount';
            TableRelation = "TE-Voucher Type";
        }
        field(23; "Voucher Type Fixed Amount"; Code[20])
        {
            Caption = 'Voucher Type Fixed Amount';
            TableRelation = "TE-Voucher Type";
        }
        field(24; "Job Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer,Work Order';
            OptionMembers = JOB,Customer,"Work Order";
        }
        field(25; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(26; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(27; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(28; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job/ Customer"));
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Departure-Place", Destination)
        {
        }
        key(Key3; "Search Word")
        {
        }
        key(Key4; "Departure-Place", "Departure-Place Code")
        {
        }
    }

    fieldgroups
    {
    }
}

