table 5001926 "Payment Calendar Change"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'Payment Calendar Change';
    DataCaptionFields = "Paym. Calendar Code";

    fields
    {
        field(1; "Paym. Calendar Code"; Code[10])
        {
            Caption = 'Payment Calendar Code';
            Editable = false;
            TableRelation = "Payment Calendar";
        }
        field(2; "Recurring System"; Option)
        {
            Caption = 'Recurring System';
            OptionCaption = ' ,Annual Recurring,Weekly Recurring';
            OptionMembers = " ","Annual Recurring","Weekly Recurring";
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
        }
        field(4; Day; Option)
        {
            Caption = 'Day';
            OptionCaption = ' ,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday';
            OptionMembers = " ",Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday;
        }
        field(5; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(6; Nonworking; Boolean)
        {
            Caption = 'Nonworking';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Paym. Calendar Code", "Recurring System", Date, Day)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

