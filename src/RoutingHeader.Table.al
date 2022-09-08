table 99000763 "Routing Header"
{
    // #PMW16.00.00.02:T522 14.09.09 DEMSR.IST
    //   Check usage in production structure
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW18.00.00.01:T500 11.06.15 DEMSR.BKR
    //   Local and Global Variable had the same name

    Caption = 'Routing Header';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(4; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(10; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(12; Comment; Boolean)
        {
            CalcFormula = Exist ("Manufacturing Comment Line" WHERE ("Table Name" = CONST ("Routing Header"),
                                                                    "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
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
        field(50; "Version Nos."; Code[10])
        {
            Caption = 'Version Nos.';
            TableRelation = "No. Series";
        }
        field(51; "No. Series"; Code[10])
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
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; Description)
        {
        }
        key(Key4; Status)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, Status)
        {
        }
    }
}

