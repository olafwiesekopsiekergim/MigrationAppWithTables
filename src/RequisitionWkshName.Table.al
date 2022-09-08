table 245 "Requisition Wksh. Name"
{
    // P0016 01.03.16 DEBIE.NNE New fields 50001 "Lagerortfilter", 50002 "Produktbuchungsgruppenfilter", 50003 "Kreditorenfilter",
    //                          50004 "Enddatum Formel", 50005 "Direktlieferungen", 50010 "Lagerbuchungsgruppenfilter", 50011 "Automatisch",
    //                          50012 "Artikelkategorienfilter".
    // #DMW16.00.03:T007 15.09.11 DEMSR.SSZ
    //  #New field 5013400 "Prod. Order No." and new key with this field

    Caption = 'Requisition Wksh. Name';
    DataCaptionFields = Name, Description;

    fields
    {
        field(1; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            NotBlank = true;
            TableRelation = "Req. Wksh. Template";
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(21; "Template Type"; Option)
        {
            CalcFormula = Lookup ("Req. Wksh. Template".Type WHERE (Name = FIELD ("Worksheet Template Name")));
            Caption = 'Template Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Req.,For. Labor,Planning';
            OptionMembers = "Req.","For. Labor",Planning;
        }
        field(22; Recurring; Boolean)
        {
            CalcFormula = Lookup ("Req. Wksh. Template".Recurring WHERE (Name = FIELD ("Worksheet Template Name")));
            Caption = 'Recurring';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50000; Lagerortfilter; Code[100])
        {
            Description = 'P0016';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(50001; Produktbuchungsgruppenfilter; Code[100])
        {
            Description = 'P0016';
        }
        field(50002; Kreditorenfilter; Code[100])
        {
            Description = 'P0016';
        }
        field(50003; "Enddatum Formel"; DateFormula)
        {
            Description = 'P0016';
        }
        field(50004; Direktlieferungen; Boolean)
        {
            Description = 'P0016 holt Direktlieferungen';
        }
        field(50005; Lagerbuchungsgruppenfilter; Code[100])
        {
            Description = 'P0016';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(50010; Automatisch; Boolean)
        {
            Description = 'P0016 steuert ob über Nachtlauf gestartet';
        }
        field(50011; Direktlieferungsfilter; Code[100])
        {
            Description = 'P0016';
            FieldClass = FlowFilter;
        }
        field(50012; Artikelkategorienfilter; Code[100])
        {
            Description = 'P0016';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(50013; Gesperrtfilter; Code[10])
        {
            Description = 'P0016';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(5013400; "Prod. Order No."; Code[20])
        {
            Description = '#DMW16.00.03:T007';
            TableRelation = "Production Order"."No." WHERE (Status = CONST (Released));
        }
    }

    keys
    {
        key(Key1; "Worksheet Template Name", Name)
        {
            Clustered = true;
        }
        key(Key2; "Prod. Order No.")
        {
            MaintainSIFTIndex = false;
        }
    }

    fieldgroups
    {
    }
}

