table 5171691 "CMNM Entry Buffer"
{
    // CMNM6.02.16 - Div. neue Felder für temporäre Daten

    Caption = 'Entry Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = "CMNM Entry"."Entry No." WHERE("Entry No." = FIELD("Entry No."));
        }
        field(5; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(7; "Temp Guid"; Guid)
        {
            Caption = 'Temp. Guid';
        }
        field(10; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(11; Text; Text[250])
        {
            Caption = 'Text';
        }
        field(12; HTML; Text[250])
        {
            Caption = 'HTML';
        }
        field(13; "Code"; Code[20])
        {
            Caption = 'Code';
            Description = 'res. für User';
        }
        field(15; "DateTime Created"; DateTime)
        {
            Caption = 'Created';
            Description = 'Datum des Eintrags';
        }
        field(16; "User Created"; Code[50])
        {
            Caption = 'User';
        }
        field(17; Blob; BLOB)
        {
        }
        field(20; Int1; Integer)
        {
        }
        field(21; Int2; Integer)
        {
        }
        field(22; Int3; Integer)
        {
        }
        field(23; Code1; Code[200])
        {
        }
        field(24; Code2; Code[200])
        {
        }
        field(25; Code3; Code[200])
        {
        }
        field(26; Bool1; Boolean)
        {
        }
        field(27; Bool2; Boolean)
        {
        }
        field(28; Bool3; Boolean)
        {
        }
        field(29; Text1; Text[200])
        {
        }
        field(30; Text2; Text[200])
        {
        }
        field(31; Text3; Text[30])
        {
        }
        field(32; Dec1; Decimal)
        {
        }
        field(33; Dec2; Decimal)
        {
        }
        field(34; Dec3; Decimal)
        {
        }
        field(35; Date1; Date)
        {
        }
        field(36; Date2; Date)
        {
        }
        field(37; Date3; Date)
        {
        }
        field(38; Time1; Time)
        {
        }
        field(39; Time2; Time)
        {
        }
        field(40; Time3; Time)
        {
        }
        field(41; RecordID1; RecordID)
        {
        }
        field(42; RecordID2; RecordID)
        {
        }
        field(43; RecordID3; RecordID)
        {
        }
        field(50; "Report ID"; Integer)
        {
        }
        field(51; "Table ID"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Language Code", "Temp Guid", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

