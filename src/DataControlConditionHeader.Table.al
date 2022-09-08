table 5012415 "Data Control Condition Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02.01:5:1
    //   # Code Base Translation
    // 
    // :PMW16.00:113:1
    //   # FieldGroup DropDown added
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   Field 5 "Def. Color", Name and ENU-Caption changed
    //   Field 8 "Created by", Field Length, Name and Captions changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Data Control Condition Header';
    DataCaptionFields = "No.", "Table No.", "Table Name", Description;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
        }
        field(2; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(3; "Table Name"; Text[50])
        {
            Caption = 'Table Name';
            Editable = false;
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Def. Color"; Code[10])
        {
            Caption = 'Def. Color';
            TableRelation = "Data Control Colors";
        }
        field(6; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(7; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(8; "Created by"; Code[50])
        {
            Caption = 'Created by';
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
        fieldgroup(DropDown; "No.", Description)
        {
        }
    }
}

