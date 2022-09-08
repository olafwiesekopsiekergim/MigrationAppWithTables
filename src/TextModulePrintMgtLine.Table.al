table 5060615 "Text Module Print Mgt Line"
{
    // Copyright (Exclusive Rights): Cosmo Consult Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW17.10.01:T100 12.09.14 DEMSR.SSZ
    //   #Created Table
    // #TMW19.00:T500 05.11.15 DEMSR.SSZ
    //   Field 1 "Print Mgt. Code": set property ValidateTableRelation back to default Yes

    Caption = 'Text Module - Print Mgt Line';
    DataCaptionFields = "Print. Mgt. Code", "Output Type";

    fields
    {
        field(1; "Print. Mgt. Code"; Code[10])
        {
            Caption = 'Print. Mgt. Code';
            NotBlank = true;
            TableRelation = "Text Module Print Management".Code;
        }
        field(2; "Output Type"; Option)
        {
            Caption = 'Output Type';
            OptionCaption = 'Report,,Table';
            OptionMembers = "Report",,"Table";
        }
        field(3; "Output ID"; Integer)
        {
            Caption = 'Output ID';
            NotBlank = true;
            TableRelation = "Text Module Predefined Object"."Object ID" WHERE ("Object Type" = FIELD ("Output Type"));
        }
        field(4; "Output Document Type"; Integer)
        {
            Caption = 'Output Document Type';
        }
        field(10; "Output Name"; Text[100])
        {
            Caption = 'Output Name';
            Editable = false;
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Print. Mgt. Code", "Output Type", "Output ID", "Output Document Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

