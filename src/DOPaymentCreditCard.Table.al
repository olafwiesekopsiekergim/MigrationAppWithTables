table 827 "DO Payment Credit Card"
{
    Caption = 'Dynamics Online Payment Credit Card';
    Permissions = TableData "DO Payment Credit Card Number" = rimd;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Type; Code[20])
        {
            Caption = 'Type';
            NotBlank = true;
            TableRelation = "DO Payment Card Type".Name;
        }
        field(3; "Credit Card Number"; Text[20])
        {
            Caption = 'Credit Card Number';
        }
        field(4; "Expiry Date"; Code[4])
        {
            Caption = 'Expiry Date';
            NotBlank = true;
        }
        field(5; "Card Holder Name"; Text[50])
        {
            Caption = 'Card Holder Name';
            NotBlank = true;
        }
        field(6; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            NotBlank = true;
            TableRelation = Customer;
        }
        field(7; "Contact No."; Code[20])
        {
            AccessByPermission = TableData Contact = R;
            Caption = 'Contact No.';
            NotBlank = true;
        }
        field(8; "Cvc No."; Text[4])
        {
            Caption = 'Cvc No.';
        }
        field(10; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Customer No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Type, "Expiry Date")
        {
        }
    }
}

