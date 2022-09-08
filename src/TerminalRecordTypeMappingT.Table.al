table 5056439 "Terminal Record Type Mapping/T"
{
    Caption = 'Terminal Record Type Mapping';
    Description = 'GrTermRecTypeMap';

    fields
    {
        field(1; "Terminal No."; Code[10])
        {
            Caption = 'Terminal No.';
        }
        field(2; "Record Type"; Code[2])
        {
            Caption = 'Record Type';
        }
        field(3; "Terminal Entry"; Code[10])
        {
            Caption = 'Terminal Entry';
        }
        field(4; "Terminal Entry Length"; Integer)
        {
            Caption = 'Terminal Entry Length';
        }
        field(5; "Org-Form"; Option)
        {
            Caption = 'Org-Form';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(6; "Org-Value from"; Code[20])
        {
            Caption = 'Org-Value from';
        }
        field(7; "Org-Value to"; Code[20])
        {
            Caption = 'Org-Value to';
        }
        field(8; "Org-Group No."; Code[20])
        {
            Caption = 'Org-Group No.';
        }
        field(9; "Org-Form NOT"; Boolean)
        {
            Caption = 'Org-Form NOT';
        }
        field(10; "Record Type Result"; Code[2])
        {
            Caption = 'Record Type Result';
        }
        field(11; "Terminal Entry Result"; Code[10])
        {
            Caption = 'Terminal Entry Result';
        }
        field(12; "Clockings sequential"; Boolean)
        {
            Caption = 'Clockings sequentiell';
        }
        field(13; "Clockings sequential/Break"; Boolean)
        {
            Caption = 'Clockings sequential/Break';
        }
        field(14; "Clockings sequential/Access"; Boolean)
        {
            Caption = 'Clockings sequential/Access';
        }
        field(20; "If Last Clocking"; Code[2])
        {
            Caption = 'If Last Clocking';
        }
        field(21; "Then Additional Record Type"; Code[2])
        {
            Caption = 'Then Additional Record Type';
        }
        field(22; "Then Additional Terminal Entry"; Code[10])
        {
            Caption = 'Then Additional Terminal Entry';
        }
    }

    keys
    {
        key(Key1; "Terminal No.", "Record Type", "Terminal Entry")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

