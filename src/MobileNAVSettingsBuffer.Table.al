table 42012823 "MobileNAV Settings Buffer"
{
    // 2015-08-11 MNAD4.5.0.0 SZT
    //   - Added functionality to hide caption prefixes of card pages.
    //   - Added new mobiletypes: CacheablePDF, CacheableFile, CacheableExcel.
    //   - Added functionality to show filter panel automatically.
    //   - Added functionality to hide standard buttons.
    // 
    // 2016-07-20 MNAD4.5.0.31 TSZ
    //   - Added new mobiletype: CustomerNo
    // 
    // 2016-08-23 MNAD4.6.0.0 SZT
    //   - Added mobile type: NFC.
    // 
    // 2016-10-20 MNAD4.6.0.4 SZT
    //   - Renamed fields:
    //     "Background Refresh Period" to "Check for Changes Period"
    //   - New fields: "Check Type", "Initial Check for Changes".
    //   - Added ney key: "Service Name", "Line Type".
    //   - Added new key: "Line Type", "Page Type", "Check Type".
    //   - Added new key: "Line Type", "Check Type", Cacheable.
    //   - Added new key: "DisplayInMenu", "Page Type".
    //   - Added new key: "Page Type".
    //   - Added new key: "Line Type", "MobileType", "Field No.", "DisplayInMenu", "FieldClass", "JS OnValidate Defined", "JS OnPressed Defined".
    //   - Added new key: "Line Type", "System Object".
    // 
    // 2016-12-13 MNAD 4.6.0.7 SZT,MAJORT
    //   New fields: "Visible on Page", "Editable on Page", "Field Category", Skip for JavaScript.
    // 
    // 2017-05-30 MNAD4.7.0.0 SZT
    //   - Added new mobiletype: ZPLTemplate.
    //   - Added new field: RegExResults.
    //   - Added new key: "User ID", "Line Type", "Page Type".
    // 
    // 2017-07-06 MNAD4.7.0.2 SZT
    //   Implemented staging (wizard/workflow).
    // 
    // 2017-08-28 MNAD4.7.0.4 SZT
    //   Schema change detection:
    //     - New field: "Source Expression";
    //     - New field type: None.
    //     - New key: "Line Type", "Page Type"
    //     - New key: "Key Field"
    //     - New key: FieldName
    //     - New key: FieldType
    // 
    // 2017-10-11 MNAD4.7.0.9 SZT
    //   #6320: New field: Category.
    // 
    // 2017-11-06 MAND4.7.0.11 SZT
    //   Added new field: "Enable Staging".
    // 
    // 2018-01-19 MNAD4.8.0.0 SZT
    //   New field: "Decimal Places".
    // 
    // 2018-01-25 MNAD4.8.0.2 SZT
    //   Implemented "Quantity Increment".
    // 
    // 2018-01-26 MNAD4.8.0.5 SZT
    //   Implemented "Chunk Size" for offline pages.
    // 
    // 2018-05-15 MNAD4.8.0.16 SZT
    //   Fixed "Field Level Operations" flow field expression.
    // 
    // 2018-05-28 MNAD4.8.0.19 SZT
    //   - New validation behaviors: MandatoryToValidate, MandatoryWithChangeConfirm.
    //   - New field: "Staging Restart From".
    // 
    // 2018-06-06 MNAD4.8.0.20 SZT
    //   New field: "Show Source Field Name".
    // 
    // 2018-07-30 MNAD4.8.0.24 SZT
    //   New field: "Main Menu Action".
    // 
    // 2018-10-11 MNAD4.8.0.32 SZT
    //   New field: "Refreshable Offline".
    // 
    // 2018-10-24 BC HZS
    //   - Caption field "Page Type" change ENI to ENU


    fields
    {
        field(1; "Query ID"; Integer)
        {
        }
        field(2; "Page Line No."; Integer)
        {
        }
        field(3; "Line Type"; Option)
        {
            OptionMembers = Main,"Field","Filter",Condition,Relation,Operation,Stage,Category;
        }
        field(4; DisplayInMenu; Boolean)
        {
        }
        field(5; Name; Text[75])
        {
        }
        field(6; LocalizedName; Text[75])
        {
            Caption = 'Name';
        }
        field(8; FieldName; Text[75])
        {
        }
        field(9; LocalizedFieldName; Text[75])
        {
        }
        field(10; FieldType; Option)
        {
            OptionMembers = Text,"Code","Integer",Decimal,Date,Boolean,Blob,Option,Time,DateTime,"None";
        }
        field(11; MobileType; Option)
        {
            OptionMembers = Normal,Image,PDF,Hyperlink,Barcode,Email,PhoneNumber,Address1,Address2,AddressCountry,AddressRegion,AddressCity,AddressPostCode,Refresh,Close,"Filter",PhoneNumberMobile,Signature,ContactName,SalesPersonCode,UnitPrice,Quantity,"Discount%",LineAmount,CurrencyCode,Excel,FieldControl,ServiceResourceFilter,LocationCode,UserID,CalendarStart,CalendarEnd,CacheableImage,File,MultilineText,HTMLTemplate,NoSeries,CacheablePDF,CacheableFile,CacheableExcel,CustomerNo,NFC,ZPLTemplate;
        }
        field(12; RelatedPageName; Text[75])
        {
        }
        field(13; RelatedPgCodeFldName; Text[75])
        {
        }
        field(14; RelatedPgDescFldName; Text[75])
        {
        }
        field(15; OptionValues; Text[250])
        {
        }
        field(16; OptionCaptions; Text[250])
        {
        }
        field(17; FieldClass; Option)
        {
            OptionMembers = Normal,FlowField,FlowFilter;
        }
        field(18; "Default DrillDown"; Text[75])
        {
        }
        field(19; FilterType; Option)
        {
            OptionMembers = "Field","Filter","Const";
        }
        field(20; DestFieldName; Text[75])
        {
        }
        field(21; SourceFieldName; Text[75])
        {
        }
        field(22; FilterValue; Text[250])
        {
        }
        field(23; "First Line Format"; Text[100])
        {
        }
        field(24; "Second Line Format"; Text[100])
        {
        }
        field(25; "Service Name"; Text[100])
        {
        }
        field(26; "Menu Picture Version"; Integer)
        {
        }
        field(27; "Key Field"; Boolean)
        {
        }
        field(28; "Page Insert"; Boolean)
        {
        }
        field(29; "Page Update"; Boolean)
        {
        }
        field(30; "Page Delete"; Boolean)
        {
        }
        field(31; "Line No."; Integer)
        {
        }
        field(32; "Relation No."; Integer)
        {
        }
        field(33; "User ID"; Code[50])
        {
        }
        field(35; OptionValues2; Text[250])
        {
            Editable = false;
        }
        field(36; OptionCaptions2; Text[250])
        {
            Editable = false;
        }
        field(80; DataLength; Integer)
        {
        }
        field(90; "Check for Changes Period"; Decimal)
        {
            Caption = 'Check for Changes Period (Hours)';
            DecimalPlaces = 1 : 1;
        }
        field(92; Cacheable; Boolean)
        {
        }
        field(93; "System Object"; Boolean)
        {
            Caption = 'Sytem Object';
        }
        field(94; "Operation Type"; Option)
        {
            Caption = 'Operation Type';
            OptionMembers = PosAdjmt,NegAdjmt,Transferfields_Creating,Transferfields_Lookup,Multiplication,Transferfields_Min,Transferfields_Max,Transferfields_Avg,Transferfields_Sum,Transferfields_Count,Modification;
        }
        field(95; "Check for Synchronization"; Text[75])
        {
            Caption = 'Check for Synchronization';
        }
        field(96; "Page Type"; Option)
        {
            Caption = 'Page Type';
            OptionMembers = ListCard,List,Card,"Report",Offline,OfflineCard;
        }
        field(129; "Related Pages"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("MobileNAV Settings Buffer" WHERE ("Query ID" = FIELD ("Query ID"),
                                                                   "User ID" = FIELD ("User ID"),
                                                                   "Service Name" = FIELD ("Service Name"),
                                                                   "Line Type" = CONST (Relation),
                                                                   "Page Line No." = FIELD ("Page Line No.")));
            Caption = 'Related Pages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; "Function Name"; Text[50])
        {
        }
        field(131; Editable; Boolean)
        {
            Editable = false;
            InitValue = true;
        }
        field(132; Visible; Boolean)
        {
            Editable = false;
            InitValue = true;
        }
        field(135; CategoryLocalizedName; Text[50])
        {
            Editable = false;
        }
        field(137; "Required for Insert"; Boolean)
        {
        }
        field(138; "Order"; Integer)
        {
            MinValue = 1;
        }
        field(139; "Table No."; Integer)
        {
            Caption = 'Table No.';
            Editable = false;
        }
        field(140; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(141; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(142; "Default Key No."; Integer)
        {
            Caption = 'Default Key No.';
            InitValue = 1;
        }
        field(143; "Default Key Ascending"; Boolean)
        {
            Caption = 'Default Key Ascending';
            InitValue = true;
        }
        field(147; "Tablets Only DrillDown"; Boolean)
        {
            Caption = 'Default DrillDown on Tablets only';
        }
        field(148; AutoRefreshOnOpen; Boolean)
        {
        }
        field(149; "Filter Comparison Type"; Option)
        {
            OptionCaption = '=,<>,<,<=,>,>=';
            OptionMembers = Equal,NotEqual,Less,LessOrEqual,Greater,GreaterOrEqual;
        }
        field(152; "Field Level Operations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("MobileNAV Settings Buffer" WHERE ("Query ID" = FIELD ("Query ID"),
                                                                   "User ID" = FIELD ("User ID"),
                                                                   "Service Name" = FIELD ("Service Name"),
                                                                   "Line Type" = CONST (Operation),
                                                                   "Relation No." = CONST (0),
                                                                   FieldName = FIELD (FieldName)));
            Caption = 'Field Level Operations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(153; "OnOpen Function Name"; Text[50])
        {
            Editable = false;
        }
        field(154; "OnClose Function Name"; Text[50])
        {
            Editable = false;
        }
        field(155; RegExText; Text[250])
        {
        }
        field(156; RegExResult; Integer)
        {
        }
        field(157; RegExResults; Text[50])
        {
            Caption = 'RegEx Results';
        }
        field(160; UploadOperationResult; Boolean)
        {
        }
        field(170; Template; BLOB)
        {
            Caption = 'Template';
        }
        field(171; "Template Version"; Integer)
        {
            BlankZero = true;
            Caption = 'Template Version';
            Editable = false;
        }
        field(173; "Upload Insertion Operation"; Boolean)
        {
            Caption = 'Upload Insertion Operation';
        }
        field(174; "Upload Deletion Operation"; Boolean)
        {
            Caption = 'Upload Deletion Operation';
        }
        field(175; "JS OnInsert Defined"; Boolean)
        {
            Caption = 'JS OnInsert Defined';
        }
        field(176; "JS OnDelete Defined"; Boolean)
        {
            Caption = 'JS OnDelete Defined';
        }
        field(177; "JS OnOpen Defined"; Boolean)
        {
            Caption = 'JS OnOpen Defined';
        }
        field(178; "JS OnClose Defined"; Boolean)
        {
            Caption = 'JS OnClose Defined';
        }
        field(179; "JS OnValidate Defined"; Boolean)
        {
            Caption = 'JS OnValidate Defined';
            Editable = false;
        }
        field(180; "Temporary Offline Key"; Text[75])
        {
        }
        field(181; ShortPageName; Code[10])
        {
        }
        field(182; "Temp. Offline Key Separator"; Code[3])
        {
            Caption = 'Temp. Offline Key Separator';
        }
        field(184; "JS OnPressed Defined"; Boolean)
        {
            Caption = 'JS OnPressed Defined';
            Editable = false;
        }
        field(200; StopCollection; Boolean)
        {
        }
        field(201; HidePrefixNew; Boolean)
        {
            Caption = 'Hide "New" Prefix';
        }
        field(202; HidePrefixPageNameOnCard; Boolean)
        {
            Caption = 'Hide Page Name Prefix';
        }
        field(203; HidePrefixParentOnDrillDown; Boolean)
        {
            Caption = 'Hide Parent Page Title on Drill-Down List';
        }
        field(204; ShowFilterPanelAutomatically; Boolean)
        {
            Caption = 'Show Filter Panel Instead of "To display data..."';
        }
        field(205; HideBtnCardRefresh; Boolean)
        {
            Caption = 'Hide Card Refresh';
        }
        field(206; HideBtnCardHideFields; Boolean)
        {
            Caption = 'Hide Card Hide Fields';
        }
        field(207; HideBtnCardFlowFilters; Boolean)
        {
            Caption = 'Hide Card Flow Filters';
        }
        field(208; HideBtnCardNavigate; Boolean)
        {
            Caption = 'Hide Card Navigate';
        }
        field(209; HideBtnListSort; Boolean)
        {
            Caption = 'Hide List Sort';
        }
        field(210; HideBtnListRefresh; Boolean)
        {
            Caption = 'Hide List Refresh';
        }
        field(211; HideBtnListFilter; Boolean)
        {
            Caption = 'Hide List Filter';
        }
        field(212; HideBtnListFlowFilters; Boolean)
        {
            Caption = 'Hide List Flow Filters';
        }
        field(213; "Check Type"; Option)
        {
            Caption = 'Type of Check for Changes';
            OptionCaption = 'By NAS,By Client';
            OptionMembers = "By NAS","By Client";
        }
        field(214; "Initial Check for Changes"; DateTime)
        {
            Caption = 'Initial Check for Changes';
        }
        field(215; "Visible on Page"; Boolean)
        {
            Caption = 'Visible on Page';
        }
        field(216; "Editable on Page"; Boolean)
        {
            Caption = 'Editable on Page';
        }
        field(217; "Field Category"; Option)
        {
            Caption = 'Field Category';
            OptionCaption = 'Other,VariantCode,UnitOfMeasureCode,BinCode,ZoneCode,CurrencyCode,SerialNo,LotNo';
            OptionMembers = Other,VariantCode,UnitOfMeasureCode,BinCode,ZoneCode,CurrencyCode,SerialNo,LotNo;
        }
        field(218; "Skip for JavaScript"; Boolean)
        {
            Caption = 'Skip for JavaScript';
        }
        field(219; "Validation Behavior"; Option)
        {
            Caption = 'Validation Behavior';
            OptionCaption = ' ,ScanToValidate,ScanWithChangeConfirm,Scan,Mandatory,MandatoryToValidate,MandatoryWithChangeConfirm';
            OptionMembers = " ",ScanToValidate,ScanWithChangeConfirm,Scan,Mandatory,MandatoryToValidate,MandatoryWithChangeConfirm;
        }
        field(220; Stage; Code[100])
        {
            Caption = 'Stage';
        }
        field(221; "Auto Next Stage"; Boolean)
        {
            Caption = 'Auto Next Stage';
        }
        field(222; "Back-Next Visible"; Boolean)
        {
            Caption = 'Back-Next Visible';
        }
        field(223; "Source Expression"; Text[75])
        {
            Caption = 'Source Expression';
        }
        field(224; DBSchemaQueryID; Integer)
        {
            Caption = 'Database Schema Query ID';
        }
        field(225; Category; Code[20])
        {
            Caption = 'Category';
        }
        field(226; "Enable Staging"; Boolean)
        {
            Caption = 'Enable Staging';
        }
        field(227; "Decimal Places"; Text[5])
        {
            Caption = 'Decimal Places';
        }
        field(228; "Quantity Increment"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity Increment';
            DecimalPlaces = 0 : 6;
            MinValue = 0.000001;
        }
        field(229; "Chunk Size"; Integer)
        {
            BlankZero = true;
            Caption = 'Chunk Size';
            MinValue = 0;
        }
        field(231; "Staging Restart From"; Boolean)
        {
            Caption = 'Restart From Here';
        }
        field(232; "Show Source Field Name"; Boolean)
        {
            Caption = 'Show Source Field Name';
        }
        field(233; "Main Menu Action"; Option)
        {
            Caption = 'Main Menu Action';
            OptionMembers = Create,Open;
        }
        field(234; "Refreshable Offline"; Boolean)
        {
            Caption = 'Refreshable Offline';
        }
    }

    keys
    {
        key(Key1; "User ID", "Query ID", "Service Name", "Line Type", "Page Line No.", "Relation No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Line Type")
        {
        }
        key(Key3; LocalizedName)
        {
        }
        key(Key4; CategoryLocalizedName)
        {
        }
        key(Key5; "Service Name", "Line Type")
        {
        }
        key(Key6; "Line Type", "Page Type")
        {
        }
        key(Key7; "Line Type", "Page Type", "Check Type")
        {
        }
        key(Key8; "Line Type", "Check Type", Cacheable)
        {
        }
        key(Key9; DisplayInMenu, "Page Type")
        {
        }
        key(Key10; "Page Type")
        {
        }
        key(Key11; "Line Type", MobileType, "Field No.", DisplayInMenu, FieldClass, "JS OnValidate Defined", "JS OnPressed Defined")
        {
        }
        key(Key12; "Line Type", "System Object")
        {
        }
        key(Key13; "User ID", "Line Type", "Page Type")
        {
        }
        key(Key14; "Key Field")
        {
        }
        key(Key15; FieldName)
        {
        }
        key(Key16; FieldType)
        {
        }
        key(Key17; "Service Name", "Line Type", Category)
        {
        }
    }

    fieldgroups
    {
    }
}

