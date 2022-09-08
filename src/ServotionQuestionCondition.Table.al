table 42014841 "Servotion Question Condition"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.

    Caption = 'Servotion Question Condition';

    fields
    {
        field(1; "Question No."; Code[20])
        {
            Caption = 'Question No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Condition Type"; Option)
        {
            Caption = 'Condition Type';
            OptionCaption = 'Service Item Group,Item,Item Category,Product Group,Service Item,Service Order Type,Customer,Customer Posting Group,Contact Business Relation';
            OptionMembers = ServiceItemGroup,Item,ItemCategory,ProductGroup,ServiceItem,ServiceOrderType,Customer,CustomerPostingGroup,ContactBusinessRelation;
        }
        field(4; "Condition Code"; Code[20])
        {
            Caption = 'Condition Code';
            TableRelation = IF ("Condition Type" = CONST (ServiceItemGroup)) "Service Item Group"
            ELSE
            IF ("Condition Type" = CONST (Item)) Item
            ELSE
            IF ("Condition Type" = CONST (ItemCategory)) "Item Category"
            ELSE
            IF ("Condition Type" = CONST (ProductGroup)) "Product Group"
            ELSE
            IF ("Condition Type" = CONST (ServiceItem)) "Service Item"
            ELSE
            IF ("Condition Type" = CONST (ServiceOrderType)) "Service Order Type"
            ELSE
            IF ("Condition Type" = CONST (Customer)) Customer
            ELSE
            IF ("Condition Type" = CONST (CustomerPostingGroup)) "Customer Posting Group"
            ELSE
            IF ("Condition Type" = CONST (ContactBusinessRelation)) "Contact Business Relation";
        }
    }

    keys
    {
        key(Key1; "Question No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

