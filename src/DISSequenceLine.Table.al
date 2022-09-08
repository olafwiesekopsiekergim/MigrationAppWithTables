table 5100921 "DIS - Sequence Line"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Sequence Line';

    fields
    {
        field(1; "Sequence Code"; Code[20])
        {
            Caption = 'Sequence Code';
            TableRelation = "DIS - Sequence Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            NotBlank = true;
            TableRelation = "DIS - Mapping";
        }
        field(4; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            TableRelation = "DIS - Partner";
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; Active; Boolean)
        {
            Caption = 'Active';
            InitValue = true;
        }
        field(16; "Sorting Position"; Integer)
        {
            Caption = 'Sorting Position';
        }
        field(20; "Transport Type"; Option)
        {
            Caption = 'Transport Type';
            OptionCaption = 'Process Only,Receive,Send';
            OptionMembers = "None",Receive,Send;
        }
        field(90; "Error Handling"; Option)
        {
            Caption = 'Error Handling';
            OptionCaption = 'Disable Sequence,Disable Line Only,None';
            OptionMembers = DisableHeader,DisableLine,"None";
        }
    }

    keys
    {
        key(Key1; "Sequence Code", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
        }
        key(Key2; "Sequence Code", "Sorting Position")
        {
        }
    }

    fieldgroups
    {
    }
}

