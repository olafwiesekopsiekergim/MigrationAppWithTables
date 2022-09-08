table 5395820 "Standard Cost Error Log"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T105 06.10.14 DEMSR.KHS
    //   Use Error log for Cost rollup
    //     Object created


    fields
    {
        field(2; "Standard Cost Worksheet Name"; Code[10])
        {
            Caption = 'Standard Cost Worksheet Name';
            TableRelation = "Standard Cost Worksheet Name";
        }
        field(5; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Routing,Production BOM';
            OptionMembers = Routing,"Production BOM";
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(40; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(50; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(60; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(70; "Last Modified By"; Code[50])
        {
            Caption = 'Last Modified by';
        }
    }

    keys
    {
        key(Key1; "Standard Cost Worksheet Name", "Item No.", Type, "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

