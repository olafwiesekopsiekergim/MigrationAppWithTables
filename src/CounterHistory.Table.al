table 5072667 "Counter History"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   option caption for Source Subtype added
    //   indentation corrected^
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Counter History';

    fields
    {
        field(10; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item";
        }
        field(20; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(30; "Source Action"; Option)
        {
            Caption = 'Source Action';
            OptionCaption = ' ,Update,Shipment,Return,Service';
            OptionMembers = " ",Update,Shipment,Return,Service;
        }
        field(40; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Description = 'TableNo';
        }
        field(50; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Description = 'DocType';
            OptionCaption = '1,2,3,4,5,6,7,8,9';
            OptionMembers = "1","2","3","4","5","6","7","8","9";
        }
        field(60; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = 'DocNo';
        }
        field(70; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
            Description = 'DocLineNo';
        }
        field(80; "Recording Date"; Date)
        {
            Caption = 'Recording Date';
        }
        field(90; "Recording Time"; Time)
        {
            Caption = 'Recording Time';
        }
        field(100; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(110; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(200; "Counter Value Hours"; Integer)
        {
            Caption = 'Counter Value Hours';
        }
        field(210; "Counter Value Miles"; Integer)
        {
            Caption = 'Counter Value Miles';
        }
    }

    keys
    {
        key(Key1; "Service Item No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Action", "Source Type", "Source Subtype", "Source No.", "Source Ref. No.", "Serial No.")
        {
        }
    }

    fieldgroups
    {
    }
}

