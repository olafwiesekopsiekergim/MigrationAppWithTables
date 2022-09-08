table 14123819 "ES User Filter"
{
    Caption = 'User Filter';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(11; "Customer No."; Code[80])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(12; "Vendor No."; Code[80])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(13; "Item No."; Code[80])
        {
            Caption = 'Item No.';
            TableRelation = Item;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(14; "G/L Account No."; Code[80])
        {
            Caption = 'G/L Account No.';
            TableRelation = "G/L Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(15; "Resource No."; Code[80])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(16; "Job No."; Code[80])
        {
            Caption = 'Job No.';
            TableRelation = Job;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(17; "Employee No."; Code[80])
        {
            Caption = 'Employee No.';
            TableRelation = Employee;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(18; "FA No."; Code[80])
        {
            Caption = 'FA No.';
            TableRelation = "Fixed Asset";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(21; "Salespers./Purch. Code"; Code[80])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(22; "Country/Region Code"; Code[80])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(23; "Location Code"; Code[80])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(24; "Global Dimension 1 Code"; Code[80])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(25; "Global Dimension 2 Code"; Code[80])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(26; "Sales Resp. Ctr. Filter"; Code[80])
        {
            Caption = 'Sales Resp. Ctr. Filter';
            TableRelation = "Responsibility Center";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(27; "Purchase Resp. Ctr. Filter"; Code[80])
        {
            Caption = 'Purchase Resp. Ctr. Filter';
            TableRelation = "Responsibility Center";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(28; "Service Resp. Ctr. Filter"; Code[80])
        {
            Caption = 'Service Resp. Ctr. Filter';
            TableRelation = "Responsibility Center";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(31; "Customer Posting Group"; Code[80])
        {
            Caption = 'Customer Posting Group';
            TableRelation = "Customer Posting Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(32; "Vendor Posting Group"; Code[80])
        {
            Caption = 'Vendor Posting Group';
            TableRelation = "Vendor Posting Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(33; "Inventory Posting Group"; Code[80])
        {
            Caption = 'Inventory Posting Group';
            TableRelation = "Inventory Posting Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(34; "Job Posting Group"; Code[80])
        {
            Caption = 'Job Posting Group';
            TableRelation = "Job Posting Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(35; "Gen. Bus. Posting Group"; Code[80])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(36; "Gen. Prod. Posting Group"; Code[80])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(41; "Work Center No."; Code[80])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(42; "Work Center Group Code"; Code[80])
        {
            Caption = 'Work Center Group Code';
            TableRelation = "Work Center Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(43; Amount; Code[80])
        {
            Caption = 'Amount';
        }
        field(44; "Date Filter"; Code[80])
        {
            Caption = 'Date Filter';
        }
        field(45; "Posting Date Filter"; Code[80])
        {
            Caption = 'Posting Date Filter';
        }
        field(46; "Shipment Date Filter"; Code[80])
        {
            Caption = 'Shipment Date Filter';
        }
        field(47; "Receipt Date Filter"; Code[80])
        {
            Caption = 'Receipt Date Filter';
        }
        field(48; "Lot No. Filter"; Code[80])
        {
            Caption = 'Lot No. Filter';
        }
        field(49; "Serial No. Filter"; Code[80])
        {
            Caption = 'Serial No. Filter';
        }
        field(50; "User ID Filter"; Code[80])
        {
            Caption = 'User ID Filter';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

