table 6521 "Item Tracing History Buffer"
{
    // #QMW16.00.03:R449 11.07.11 DEMSR.KHS
    //   New fields:
    //     "Ext. Lot No. Filter"

    Caption = 'Item Tracing History Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; Level; Integer)
        {
            Caption = 'Level';
        }
        field(10; "Serial No. Filter"; Code[250])
        {
            Caption = 'Serial No. Filter';
        }
        field(11; "Lot No. Filter"; Code[250])
        {
            Caption = 'Lot No. Filter';
        }
        field(12; "Item No. Filter"; Code[250])
        {
            Caption = 'Item No. Filter';
        }
        field(13; "Variant Filter"; Code[250])
        {
            Caption = 'Variant Filter';
        }
        field(14; "Trace Method"; Option)
        {
            Caption = 'Trace Method';
            OptionCaption = 'Origin->Usage,Usage->Origin';
            OptionMembers = "Origin->Usage","Usage->Origin";
        }
        field(15; "Show Components"; Option)
        {
            Caption = 'Show Components';
            OptionCaption = 'No,Item-tracked only,All';
            OptionMembers = No,"Item-tracked only",All;
        }
        field(5034550; "Ext. Lot No. Filter"; Text[250])
        {
            Caption = 'Ext. Lot No. Filter';
            Description = '#QMW16.00.03:R449';
        }
    }

    keys
    {
        key(Key1; "Entry No.", Level)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

