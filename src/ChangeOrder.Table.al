table 5013796 "Change Order"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders
    // #DMW18.00.00.01:T101 17.02.15 DEMSR.SSZ
    //   #New FlowFields 110 "Order Text"; 111 "Answer Text"

    Caption = 'Change Order';
    DataCaptionFields = "No.";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Editable = false;
            OptionCaption = 'Item,Production BOM,Document BOM,Planned Production Order,Firm Planned Production Order,Released Production Order';
            OptionMembers = Item,"Production BOM","Document BOM","Planned Production Order","Firm Planned Production Order","Released Production Order";
        }
        field(3; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
            TableRelation = IF ("Source Type" = CONST (Item)) Item
            ELSE
            IF ("Source Type" = CONST ("Production BOM")) "Production BOM Header"
            ELSE
            IF ("Source Type" = CONST ("Document BOM")) "Document BOM"
            ELSE
            IF ("Source Type" = CONST ("Planned Production Order")) "Production Order" WHERE (Status = CONST (Planned))
            ELSE
            IF ("Source Type" = CONST ("Firm Planned Production Order")) "Production Order" WHERE (Status = CONST ("Firm Planned"))
            ELSE
            IF ("Source Type" = CONST ("Released Production Order")) "Production Order" WHERE (Status = CONST (Released));
        }
        field(4; "Change Reason"; Text[50])
        {
        }
        field(5; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'New,Read,Accepted,Rejected';
            OptionMembers = New,Read,Accepted,Rejected;
        }
        field(10; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(11; "Created on"; Date)
        {
            Caption = 'Created on';
            Editable = false;
        }
        field(20; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(21; "Modified on"; Date)
        {
            Caption = 'Modified on';
            Editable = false;
        }
        field(30; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(110; "Order Text"; Boolean)
        {
            CalcFormula = Exist ("Change Order Text" WHERE ("Document No." = FIELD ("No."),
                                                           "Text Type" = CONST ("Order Text")));
            Caption = 'Order Text';
            Description = '#DMW18.00.00.01:T101';
            Editable = false;
            FieldClass = FlowField;
        }
        field(111; "Answer Text"; Boolean)
        {
            CalcFormula = Exist ("Change Order Text" WHERE ("Document No." = FIELD ("No."),
                                                           "Text Type" = CONST ("Answer Text")));
            Caption = 'Answer Text';
            Description = '#DMW18.00.00.01:T101';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

