table 5012416 "Data Control Condition Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   Field 11 "Color", Name and ENU-Caption changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Data Control Condition Line';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
        }
        field(2; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Field No.';
        }
        field(6; "Field Name"; Text[50])
        {
            Caption = 'Field Name';
            Editable = false;
        }
        field(7; Operator; Option)
        {
            Caption = 'Operator';
            OptionCaption = ' ,=,<,>,<>,<=,>=';
            OptionMembers = " ","=","<",">","<>","<=",">=";
        }
        field(8; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Field,Value,Date Formula';
            OptionMembers = "Field",Value,"Date Formula";
        }
        field(9; Value; Code[50])
        {
            Caption = 'Value';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(11; Color; Code[10])
        {
            Caption = 'Color';
            TableRelation = "Data Control Colors";
        }
    }

    keys
    {
        key(Key1; "No.", "Table No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

