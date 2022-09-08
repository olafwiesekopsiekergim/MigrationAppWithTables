table 5351553 "CESS - AdHoc-Screen Address"
{
    Caption = 'SanScreen AdHoc-Screen Address';

    fields
    {
        field(1; "Entry No."; Code[20])
        {
            Caption = 'Entry No.';
        }
        field(20; "Creation Timestamp"; DateTime)
        {
            Caption = 'Creation Timestamp';
            Editable = false;
        }
        field(21; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(26; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(100; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(101; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(102; "Name 3"; Text[50])
        {
            Caption = 'Name 3';
        }
        field(103; "Name 4"; Text[50])
        {
            Caption = 'Name 4';
        }
        field(110; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(111; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(112; "Address 3"; Text[50])
        {
            Caption = 'Address 3';
        }
        field(113; "Address 4"; Text[50])
        {
            Caption = 'Address 4';
        }
        field(120; City; Text[50])
        {
            Caption = 'City';
        }
        field(121; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(122; County; Text[30])
        {
            Caption = 'County';
        }
        field(123; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

