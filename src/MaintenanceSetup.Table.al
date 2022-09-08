table 5012501 "Maintenance Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PLANTMAIN:PMW15.00:19:1 # Object created
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Maintenance Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Machine Nos."; Code[10])
        {
            Caption = 'Machine Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Item Jnl. Template Name"; Code[10])
        {
            Caption = 'Item Jnl. Template Name';
            TableRelation = "Item Journal Template";
        }
        field(4; "Item Jnl. Batch Name"; Code[10])
        {
            Caption = 'Item Jnl. Batch Name';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Item Jnl. Template Name"));
        }
        field(5; "Res. Jnl. Template Name"; Code[10])
        {
            Caption = 'Res. Jnl. Template Name';
            TableRelation = "Res. Journal Template";
        }
        field(6; "Res. Jnl. Batch Name"; Code[10])
        {
            Caption = 'Res. Jnl. Batch Name';
            TableRelation = "Res. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Res. Jnl. Template Name"));
        }
        field(7; "Order Nos."; Code[10])
        {
            Caption = 'Order Nos.';
            TableRelation = "No. Series";
        }
        field(8; "Template Nos."; Code[10])
        {
            Caption = 'Template Nos.';
            TableRelation = "No. Series";
        }
        field(9; "Gen. Jnl. Template Name"; Code[10])
        {
            Caption = 'Gen. Jnl. Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(10; "Gen. Jnl. Batch Name"; Code[10])
        {
            Caption = 'Gen. Jnl. Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Gen. Jnl. Template Name"));
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

