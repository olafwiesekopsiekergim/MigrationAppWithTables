table 5034551 "Quality Control Cue"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00 07.01.13 DEMSR.KHS
    //   Caption changed: Test Orders - Created
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.01:T101 30.03.15 DEMSR.KHS
    //   Add 8D Report fields

    Caption = 'Quality Control Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Test Orders - Created"; Integer)
        {
            CalcFormula = Count ("Test Order" WHERE (Status = CONST (Created)));
            Caption = 'Test Orders - Created';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Test Orders - Value Recording"; Integer)
        {
            CalcFormula = Count ("Test Order" WHERE (Status = CONST ("Value Recording")));
            Caption = 'Test Orders - Value Recording';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Test Orders - Finished"; Integer)
        {
            CalcFormula = Count ("Test Order" WHERE (Status = CONST (Finished)));
            Caption = 'Test Orders - Finished';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Test Orders - Testing Finished"; Integer)
        {
            CalcFormula = Count ("Test Order" WHERE (Status = CONST ("Testing Finished")));
            Caption = 'Test Orders - Testing Finished';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Test Orders - Cancelled"; Integer)
        {
            CalcFormula = Count ("Test Order" WHERE (Status = CONST (Cancelled)));
            Caption = 'Test Orders - Cancelled';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "To Send or Confirm"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER (Order),
                                                         Status = FILTER (Open)));
            Caption = 'To Send or Confirm';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Upcoming Orders"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER (Order),
                                                         Status = FILTER (Released),
                                                         "Expected Receipt Date" = FIELD ("Date Filter")));
            Caption = 'Upcoming Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Outstanding Purchase Orders"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER (Order),
                                                         Status = FILTER (Released),
                                                         Receive = FILTER (true),
                                                         "Completely Received" = FILTER (false)));
            Caption = 'Outstanding Purchase Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Purchase Return Orders - All"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER ("Return Order")));
            Caption = 'Purchase Return Orders - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Not Invoiced"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER (Order),
                                                         "Completely Received" = FILTER (true),
                                                         Invoice = FILTER (false)));
            Caption = 'Not Invoiced';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Partially Invoiced"; Integer)
        {
            CalcFormula = Count ("Purchase Header" WHERE ("Document Type" = FILTER (Order),
                                                         "Completely Received" = FILTER (true),
                                                         Invoice = FILTER (true)));
            Caption = 'Partially Invoiced';
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
        field(50; "8D Reports - Created"; Integer)
        {
            CalcFormula = Count ("8D Report Header" WHERE (Status = FILTER (Created)));
            Caption = '8D Reports - Created';
            FieldClass = FlowField;
        }
        field(51; "8D Reports - Analysis"; Integer)
        {
            CalcFormula = Count ("8D Report Header" WHERE (Status = FILTER (Analysis)));
            Caption = '8D Reports - Analysis';
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

