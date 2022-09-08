table 5072658 "Rental Cue"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001 04.05.09 DEMSR.KHS
    //   Object created
    // 
    // #RENW16.00.00.01:T505 09.07.09 DEMSR.KHS
    //   Add ML Captions
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   captions of flowfields 30,40,50 added and editable change to No
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(3; "Rental Contracts - Open"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Order),
                                                      Status = FILTER (Open),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Rental Contracts - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Ready to Ship"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Order),
                                                      Status = FILTER (Released),
                                                      Ship = FILTER (false),
                                                      "Shipment Date" = FIELD ("Date Filter2"),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Ready to Ship';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Delayed; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Order),
                                                      Status = FILTER (Released),
                                                      "Shipment Date" = FIELD ("Date Filter"),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Delayed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Rental Invoices - All"; Integer)
        {
            CalcFormula = Count ("Service Header" WHERE ("Document Type" = CONST (Invoice),
                                                        "Rental Mgt. Document" = CONST (true),
                                                        Status = CONST (Pending)));
            Caption = 'Rental Invoices - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Rental Credit Memos - All"; Integer)
        {
            CalcFormula = Count ("Service Header" WHERE ("Document Type" = CONST ("Credit Memo"),
                                                        "Rental Mgt. Document" = CONST (true),
                                                        Status = CONST (Pending)));
            Caption = 'Rental Credit Memos - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Partially Shipped"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Order),
                                                      Status = FILTER (Released),
                                                      Ship = FILTER (true),
                                                      "Completely Shipped" = FILTER (false),
                                                      "Shipment Date" = FIELD ("Date Filter2"),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Partially Shipped';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(21; "Date Filter2"; Date)
        {
            Caption = 'Date Filter2';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(30; "Rental Quotes"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Quote),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Rental Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Rental Reservations - Open"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Reservation),
                                                      Status = FILTER (Open),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Rental Reservations - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Rental Reservations - Released"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Reservation),
                                                      Status = FILTER (Released),
                                                      "Rental Contract" = CONST (true)));
            Caption = 'Rental Reservations - Released';
            Editable = false;
            FieldClass = FlowField;
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

