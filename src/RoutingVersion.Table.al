table 99000786 "Routing Version"
{
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    //    - Added field Last Modified by
    //    - Added Code
    // 
    // #PMW16.00.00.02:T522 14.09.09 DEMSR.IST
    //   Check usage in production structure
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW18.00.00.01:T500 11.06.15 DEMSR.BKR
    //   Local and Global Variable had the same name

    Caption = 'Routing Version';

    fields
    {
        field(1; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            NotBlank = true;
            TableRelation = "Routing Header";
        }
        field(2; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(20; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(21; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Serial,Parallel';
            OptionMembers = Serial,Parallel;
        }
        field(22; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(50; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5060455; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#RAW16.00:T100';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Routing No.", "Version Code")
        {
            Clustered = true;
        }
        key(Key2; "Routing No.", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

