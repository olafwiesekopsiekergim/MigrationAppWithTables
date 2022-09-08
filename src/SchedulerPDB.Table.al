table 5013875 "Scheduler PDB"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Completed Captions
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Scheduler PDB';
    DataCaptionFields = "Entry No.", Description;

    fields
    {
        field(10; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(20; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(30; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(40; "Start Time"; Time)
        {
            Caption = 'Start Time';
        }
        field(50; "Next Start Date"; Date)
        {
            Caption = 'Next Start Date';
        }
        field(60; "Next Start Time"; Time)
        {
            Caption = 'Next Start Time';
        }
        field(70; "Interval Days"; Code[10])
        {
            Caption = 'Interval Days';
        }
        field(80; "Interval Minutes"; Integer)
        {
            Caption = 'Interval Minutes';
        }
        field(90; "Action"; Option)
        {
            Caption = 'Action';
            OptionCaption = 'CodeUnit,Report';
            OptionMembers = "CodeUnit","Report";
        }
        field(120; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            TableRelation = Object.ID;
        }
        field(130; "Record"; Option)
        {
            Caption = 'Record';
            OptionCaption = ' ,Sales Header,Sales Shipment Header';
            OptionMembers = " ","Sales Header","Sales Shipment Header";
        }
        field(140; "Filter Group"; Integer)
        {
            Caption = 'Filter Group';
        }
        field(150; "Duration last Action"; Decimal)
        {
            Caption = 'Duration last Action';
        }
        field(160; Done; Boolean)
        {
            Caption = 'Done';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Next Start Date", "Next Start Time")
        {
        }
    }

    fieldgroups
    {
    }
}

