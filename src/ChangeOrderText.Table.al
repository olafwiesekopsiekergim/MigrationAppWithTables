table 5013797 "Change Order Text"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders
    // #DMW18.00.00.01:T101 17.02.15 DEMSR.SSZ
    //   #Inserted LookUpPageID and DrillDownPageID

    Caption = 'Change Order Text';
    DataCaptionFields = "Text Type", "Document No.";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
            TableRelation = "Change Order";
        }
        field(2; "Text Type"; Option)
        {
            Caption = 'Text Type';
            Editable = false;
            OptionCaption = 'Order Text,Answer Text';
            OptionMembers = "Order Text","Answer Text";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(4; Text; Text[250])
        {
            Caption = 'Text';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Text Type", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

