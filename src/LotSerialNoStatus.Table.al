table 5034621 "Lot-/ Serial No. Status"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management - Object created
    // 
    // #QMW16.00.02.03:T511 04.01.11 DEMSR.KHS
    //   Customer Group Filter deleted
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   remove single primary key fields from TableRelation
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW16.00.02.02:T502 04.01.11 DEMSR.IST
    //   New field 5012580 "Customer Group Filter"
    // 
    // #PMW16.00.02.03:T510 27.01.11 DEMSR.IST
    //   Missing relation for field "Customer Group Filter" added

    Caption = 'Lot-/ Serial No. Status';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(5; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(10; "Pick - Sales"; Boolean)
        {
            Caption = 'Pick - Sales';
        }
        field(15; "Pick - Manufacturing"; Boolean)
        {
            Caption = 'Pick - Manufacturing';
        }
        field(20; "Pick - Transfer"; Boolean)
        {
            Caption = 'Pick - Transfer';
        }
        field(25; "Customer Filter"; Code[250])
        {
            Caption = 'Customer Filter';
            TableRelation = Customer;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(35; "Country Filter"; Code[250])
        {
            Caption = 'Country Filter';
            TableRelation = "Country/Region";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(45; "Prod. Rel. Comp. Check"; Boolean)
        {
            Caption = 'Prod. Rel. Comp. Check';
        }
        field(50; "Allowed at Prod. Rel. Cmp. Chk"; Boolean)
        {
            Caption = 'Allowed at Prod. Rel. Comp. Check';
        }
        field(55; "Reorder Point"; Boolean)
        {
            Caption = 'Reorder Point';
        }
        field(60; "Safety Stock"; Boolean)
        {
            Caption = 'Safety Stock';
        }
        field(65; "Available for Planning"; Boolean)
        {
            Caption = 'Available for Planning';
        }
        field(70; "Exprd. Invt. avail. for Plng."; Boolean)
        {
            Caption = 'Exprd. Invt. avail. for Plng.';
        }
        field(75; "Pick expir. Inv. - Sales"; Boolean)
        {
            Caption = 'Pick expir. Inv. - Sales';
        }
        field(80; "Pick expir. Inv. - Manuf."; Boolean)
        {
            Caption = 'Pick expir. Inv. - Manuf.';
        }
        field(85; "Pick expir. Inv. - Transfer"; Boolean)
        {
            Caption = 'Pick expir. Inv. - Transfer';
        }
        field(90; "Color Code"; Code[10])
        {
            Caption = 'Color Code';
            TableRelation = "Color Code";
        }
        field(95; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(100; "Status Type"; Option)
        {
            Caption = 'Status Type';
            OptionCaption = ' ,Released,Blocked,Conditionally Released';
            OptionMembers = " ",Released,Blocked,"Conditionally Released";
        }
        field(105; "Show in Inv. List / Item Card"; Boolean)
        {
            Caption = 'Show in Inv. List / Item Card';
        }
        field(110; "Test Order Check"; Boolean)
        {
            Caption = 'Test Order Check';
        }
        field(5012580; "Customer Group Filter"; Code[250])
        {
            Caption = 'Customer Group Filter';
            TableRelation = "Customer Group";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
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

