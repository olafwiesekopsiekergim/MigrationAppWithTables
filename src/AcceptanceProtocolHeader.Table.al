table 50052 "Acceptance Protocol Header"
{
    // P0036 06.04.16 CCBIE.ARE New object

    Caption = 'Acceptance Protocol Header';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; Type; Option)
        {
            Caption = 'Protocol Type';
            OptionCaption = 'Test certificate,Inspection certificate';
            OptionMembers = "Test Certificate","Inspection certificate";
        }
        field(100; "Report Cert Name"; Text[100])
        {
            Caption = 'offizieller Zertifkatsname';
            Description = 'Überschrift des Zert. im Report';
        }
        field(101; "Report Cert Name 2"; Text[50])
        {
            Caption = 'offizieller Zertifkatsname Zeile 2';
            Description = 'Überschrift des Zert. im Report Zeile 2';
        }
    }

    keys
    {
        key(Key1; "Code", Type)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

