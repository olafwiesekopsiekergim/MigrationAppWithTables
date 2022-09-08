table 5309007 "Interface Field"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #IFW18.00:T100 10.08.15 DEMSR.BKR
    //   create module cc|interface

    Caption = 'Field';

    fields
    {
        field(1; "Transaction ID"; Integer)
        {
            Caption = 'Transaction ID';
            TableRelation = Transaction.ID;
        }
        field(2; "Transaction Entry ID"; Integer)
        {
            Caption = 'Transaction Entry ID';
            TableRelation = "Transaction Entry".ID WHERE ("Transaction ID" = FIELD ("Transaction ID"));
        }
        field(3; "Record ID"; Integer)
        {
            Caption = 'Record ID';
            TableRelation = "Interface Record"."Record ID" WHERE ("Transaction ID" = FIELD ("Transaction ID"),
                                                                  "Transaction Entry ID" = FIELD ("Transaction Entry ID"));
        }
        field(4; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
        }
        field(5; "Field Value"; Text[250])
        {
            Caption = 'Field Value';
        }
        field(6; "Field Sequence"; Integer)
        {
            Caption = 'Field Sequence';
        }
    }

    keys
    {
        key(Key1; "Transaction ID", "Transaction Entry ID", "Record ID", "Field Name")
        {
            Clustered = true;
        }
        key(Key2; "Transaction ID", "Transaction Entry ID", "Record ID", "Field Sequence")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Field Sequence", "Field Name", "Field Value")
        {
        }
    }
}

