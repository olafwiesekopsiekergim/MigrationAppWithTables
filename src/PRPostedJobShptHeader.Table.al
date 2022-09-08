table 5292376 "PR - Posted Job Shpt. Header"
{
    // PR01 PRODUKT.01:AMP0015 12.06.15 DENUE.SKOL Integration Textmodule
    //                                             New Fields
    //                                             - 5060600 Text Set ID Header
    //                                             - 5060601 Text Set ID Footer
    // PR02 PRODUKT.01:AMP0016 12.06.15 DENUE.SKOL Increased Field 60 "External Document No." from 20 to 35

    Caption = 'Posted Job Shipment Header';
    DataCaptionFields = "No.";

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
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(51; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released';
            OptionMembers = Open,Released;
        }
        field(60; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(61; "Shipping No."; Code[20])
        {
            Caption = 'Shipping No.';
        }
        field(62; "Last Shipping No."; Code[20])
        {
            Caption = 'Last Shipping No.';
            Editable = false;
            TableRelation = "Posted Whse. Shipment Header";
        }
        field(63; "Shipping No. Series"; Code[10])
        {
            Caption = 'Shipping No. Series';
            TableRelation = "No. Series";
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(200; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(201; "Sell-to Customer Name"; Text[50])
        {
            CalcFormula = Lookup (Customer.Name WHERE ("No." = FIELD ("Sell-to Customer No.")));
            Caption = 'Sell-to Customer Name';
            Description = 'LU Customer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7000; "-- Shipment"; Integer)
        {
            Caption = '-- Shipment';
            Enabled = false;
        }
        field(7020; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(7030; "Shipment Contact No."; Code[20])
        {
            Caption = 'Shipment Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(7031; "Shipment Contact Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Shipment Contact No.")));
            Caption = 'Shipment Contact Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7100; "Shipment Direction"; Option)
        {
            Caption = 'Shipment Direction';
            Description = ' ,Inbound,Outbound';
            OptionCaption = ' ,Inbound,Outbound';
            OptionMembers = " ",Inbound,Outbound;
        }
        field(7200; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Sell-to Customer No."));
        }
        field(7201; "Ship-to Name"; Text[50])
        {
            Caption = 'Ship-to Name';
        }
        field(7202; "Ship-to Name 2"; Text[50])
        {
            Caption = 'Ship-to Name 2';
        }
        field(7203; "Ship-to Address"; Text[50])
        {
            Caption = 'Ship-to Address';
        }
        field(7204; "Ship-to Address 2"; Text[50])
        {
            Caption = 'Ship-to Address 2';
        }
        field(7205; "Ship-to City"; Text[50])
        {
            Caption = 'Ship-to City';
        }
        field(7206; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
        }
        field(7207; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(7208; "Ship-to County"; Text[50])
        {
            Caption = 'Ship-to County';
        }
        field(7209; "Ship-to Country Code"; Code[10])
        {
            Caption = 'Ship-to Country Code';
            TableRelation = "Country/Region";
        }
        field(7220; "Shipping Agent Code"; Code[10])
        {
            Caption = 'Shipping Agent Code';
            Description = 'TR "Shipping Agent"';
            TableRelation = "Shipping Agent";
        }
        field(7221; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            Description = 'TR "Shipping Agent Services"';
            TableRelation = "Shipping Agent Services".Code WHERE ("Shipping Agent Code" = FIELD ("Shipping Agent Code"));
        }
        field(7222; "Shipment Method Code"; Code[10])
        {
            Caption = 'Shipment Method Code';
            Description = 'TR "Shipment Method"';
            TableRelation = "Shipment Method";
        }
        field(7225; "Shipping Advice"; Option)
        {
            Caption = 'Shipping Advice';
            OptionCaption = 'Partial,Complete';
            OptionMembers = Partial,Complete;
        }
        field(5060600; "Text Set ID Header"; Integer)
        {
            Caption = 'Text Set ID Header';
            Description = 'PR01';
            Editable = false;
            TableRelation = "Text Module Header Document";
        }
        field(5060601; "Text Set ID Footer"; Integer)
        {
            Caption = 'Text Set ID Footer';
            Description = 'PR01';
            Editable = false;
            TableRelation = "Text Module Header Document";
        }
        field(5292332; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292333; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292334; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
        }
        field(5292335; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292336; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292337; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(5292338; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            Description = 'TR Resource WHERE (Type=CONST(Person))';
            TableRelation = Resource WHERE (Type = CONST (Person));
        }
        field(5292339; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5292340; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(5292341; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292342; "Posted Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Posted Job Comment Line" WHERE ("Table ID" = CONST (5292376),
                                                                      "Document No." = FIELD ("No.")));
            Caption = 'Posted Job Comment';
            Description = 'CF Posted Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292343; "Location Code"; Code[10])
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
        key(Key2; "Job No.")
        {
        }
    }

    fieldgroups
    {
    }
}

