table 5292362 "PR - Posted Inv. Request"
{
    // PR01 PRODUKT.01:P8013 10.03.15 DENUE.SKOL New Function "Navigate"

    Caption = 'Posted Inv. Request';
    DataCaptionFields = Name, Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(100; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Job Journal Template";
        }
        field(101; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(110; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(120; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(5292332; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292333; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292334; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(5292335; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            Description = 'TR Resource WHERE (Type=CONST(Person))';
            TableRelation = Resource WHERE (Type = CONST (Person));
        }
        field(5292336; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'ne TR Job';
            Editable = false;
            TableRelation = Job;
        }
        field(5292337; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5292338; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
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

