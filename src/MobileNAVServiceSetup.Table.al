table 42012822 "MobileNAV Service Setup"
{
    // 2015-08-04 MNAD4.5.0.0 SZT
    //   Now detects field type of referenced fields.
    // 
    // 2015-08-07 MNAD4.5.0.0 SZT
    //   Throws error if a referenced field type is BLOB (WS can not handle this).
    // 
    // 2015-08-11 MNAD4.5.0.0 SZT
    //   - Added functionality to hide caption prefixes of card pages.
    //   - Added new mobiletypes: CacheablePDF, CacheableFile, CacheableExcel.
    //   - Added functionality to show filter panel automatically.
    //   - Added functionality to hide standard buttons.
    // 
    // 2015-10-13 MNAD4.4.0.21 SZT
    //   Fixed a bug at validating "Check for Sinchronization" field name.
    // 
    // 2015-10-24 MNAD4.5.0.5 SZT
    //   Bugfix: Inserted missing cacheable mobiletypes into GetFuncNames().
    // 
    // 2015-10-24 MNAD4.5.0.6 SZT
    //   Bugfix: CacheableFile moved to another case in GetFuncNames().
    // 
    // 2015-10-24 MNAD4.5.0.8 MAJORT
    //   JavaScript: FieldControlAdd, FieldControlRefreshParent, FieldControlRefreshChild,
    //     FieldControlOpen, FieldControlSetProperties added
    // 
    // 2015-11-06 MNAD4.5.0.9 SZT
    //   - Refactored GetFuncNames();
    //   - More than one type of functions can be assigned to the following types:
    //       Excel, PDF, Image, File and cacheable alternatives.
    // 
    // 2015-11-12 MNAD4.5.0.10 MAJORT
    //   Coloring can be skipped in JS.
    // 
    // 2016-01-05 MNAD4.5.0.17 SZT
    //   #3164: GetFuncNames() now retrieves any functions with text type return value.
    // 
    // 2016-01-15 MNAD4.5.0.18 SZT
    //   Fixed a bug: If text constants stored in strings instead of byte arrays it can be determined and processed.
    // 
    // 2016-01-29 MNAD4.5.0.19 SZT
    //   Fixed a bug at parsing text constants.
    // 
    // 2016-01-29 MNAD4.5.0.21 SZT
    //   Fixed a bug at adding text constants to the downloadable JS template.
    // 
    // 2016-02-22 MNAD4.5.0.22 MAJORT, SZT
    //   Extending offline JS with schema version and separated handling of drill down filters -> introduced Init2().
    // 
    // 2016-03-02 MNAD4.5.0.24 SZT
    //   - Fixed DateTime handling bug in Date/Time format retrieval JS functions.
    //   - #3701: Replaced "$$$" to "$$$$$$" in the offline JS field control functions.
    //   - Minor refactoring around offline JS field control functions.
    // 
    // 2016-03-09 MNAD4.5.0.25 MAJORT
    //   #3732 - Introduced global JS schema version and nextChangeLogID.
    // 
    // 2016-05-03 MNAD4.5.0.27 SZT
    //   Fixed a typo at filtering field type in GetTempOfflineKey().
    // 
    // 2016-06-15 MNAD4.5.0.30 SZT
    //   Fixed a bug in GetFuncNames(): skip processing if one of supported func types does not exist in the codeunit.
    // 
    // 2016-07-20 MNAD4.5.0.31 TSZ
    //   - Added new mobiletype: CustomerNo
    // 
    // 2016-08-18 MNAD4.6.0.0 SZT
    //   - Implemented batch import/export for page and function icons.
    //   - Added mobile type: NFC.
    // 
    // 2016-09-20 MNAD4.6.0.1 SZT
    //   Fixed a bug in ExportIcon().
    // 
    // 2016-09-23 MNAD4.6.0.2 SZT
    //   Skip MobileType::HTMLTemplate at function icon export.
    // 
    // 2016-10-20 MNAD4.6.0.4 SZT
    //   - Renamed fields:
    //     "Background Refresh Period" to "Check for Changes Period"
    //     "Init Next Refresh DateTime" to "Init Earliest Check for Changes"
    //   - New field: "Check Type"
    //   - "Check for Changes Period".OnValidate(): 0 is allowed if the "Check Type" is "By Client".
    //   - "Check Type" will be "By Client" on all inserted new page ("Object ID".OnValidate).
    //   - Extended GetWaitingForRefresh() with "Check Type" filter.
    //   - Added key: "Key Field".
    //   - Added key: "Key Field, "FieldName".
    //   - Added key: "Line Type", "System Object".
    // 
    // 2016-11-30 MNAD4.6.0.5 SZT
    //   - #4692: Replaced caption of "Initial Check for Changes" field.
    //   - #4690: The initial value of "Check Type" is now "By Client".
    // 
    // 2016-12-02 MNAD4.6.0.6 SZT
    //   - Automatically refreshes check type and other related data in MobileNAV Offline Admin table.
    //   - #4704: Fixed a formatting issue in a confirmation dialog.
    // 
    // 2016-12-13 MNAD 4.6.0.7 SZT,MAJORT
    //   - New fields: "Visible on Page", "Editable on Page", "Field Category", "Skip for JavaScript".
    //   - Editable and Visible fields are now editable.
    //   - #4749: Automatically update Offline Adm. and Settings Buffer if check type or check period has changed.
    //   - New key: "Field Category", "Line Type".
    //   - #4287: The related page is now also refreshed by selecting code field from list.
    //   - GetLookupCode returns the FieldValue instead of Field if any relation is defined fot the field.
    // 
    // 2017-02-03 MNAD4.6.0.10 SZT
    //   - #4640: NoSeries fields canot be editable.
    //   - Added new key: "Line Type", MobileType.
    // 
    // 2017-03-28 MNAD4.6.0.12 SZT, TSZ
    //   - #4946: The License Setup table is extended with Company. (SZT)
    //   - In the JS compares the results of .getTime() at Date type variables. (SZT)
    //   - Implemented profile configurator related functionality. (TSZ)
    // 
    // 2017-05-30 MNAD4.7.0.0 SZT
    //   - Added new mobiletype: ZPLTemplate.
    //   - Added new field: RegExResults.
    //   - Added new functions: JSGetTemplateText() and JSClearTemplateText().
    //   - Added new key: "Object Type", "Service Name", "Line Type", FieldName.
    // 
    // 2017-06-22 MNAD4.7.0.1 MAJORT
    //   - FieldControl RemoveParentFilters1, RemoveParentFilters2, RemoveParentFilters3, RemoveParentFilters20 added to JavaScript
    //   - FieldControl CloseParent, SetFirstLineColor, SetSecondLineColor, SetBackgroundColor, SetRowIcon, SetFocus added to JavaScript
    // 
    // 2017-07-06 MNAD4.7.0.2 SZT
    //   Implemented staging (wizard/workflow).
    // 
    // 2017-08-17 MNAD4.6.0.22 SZT
    //   Fixed OnLookup on the "Object ID" field (WebService -> WebServiceAggregate) (NAV2017 only).
    // 
    // 2017-08-17 MNAD4.7.0.3 SZT
    //   Refactored XML and file handling and variable scope.
    // 
    // 2017-08-28 MNAD4.7.0.4 SZT
    //   Schema change detection:
    //     - New field: "Source Expression";
    //     - New field type: None.
    // 
    // 2017-10-11 MNAD4.7.0.9 SZT
    //   #6025: fixed a typo in JS. (FieldControlRemoveParentFilters20() function name)
    //   New Key: FieldClass.
    // 
    // 2017-11-06 MAND4.7.0.11 SZT
    //   - Added new field: "Enable Staging".
    //   - #6295: Fixed dialog typo.
    //   - #6310: ScanToValidate can be set only to "Read Only" fields.
    //   - #6010: Refactored FilterValue.OnLookup().
    // 
    // 2017-10-20 MNAD4.7.0.13 SZT
    //   Replaced inline string constants to global TextConsts.
    // 
    // 2017-11-24 MNAD4.7.0.14 SZT
    //   Refactoring: moved some functions from Service Functions to Object Functions.
    // 
    // 2017-12-19 MNAD4.7.0.18 SZT
    //   - Fixed a progress dialog bug.
    //   - Added some utility functions for staging.
    //   - Skip page refresh ad validating RelatedPgCodeFieldName if the owner and related page are same.
    // 
    // 2018-01-11 MNAD4.7.0.19 SZT
    //   Fixed 2009R2 and 2013 related bugs around determinig SourceExpressin and FieldClass in GetPageFieldsRTC() function.
    // 
    // 2018-01-19 MNAD4.8.0.0 SZT
    //   Implemented "Decimal Places".
    // 
    // 2018-01-25 MNAD4.8.0.2 SZT
    //   Implemented "Quantity Increment".
    // 
    // 2018-01-26 MNAD4.8.0.5 SZT
    //   - Implemented "Chunk Size" for offline pages.
    //   - Fixed a NAV2009R2 related bug in GetDefaultStagingForFields() function.
    // 
    // 2018-02-01 MNAD4.8.0.6 SZT
    //   Fixed staging related bug (skip validation on staging temporary data).
    // 
    // 2018-02-12 MNAD4.8.0.10 SZT
    //   Implemented RefreshDrillDown() field control function.
    // 
    // 2018-02-13 MNAD4.8.0.12 SZT
    //   - New key: "Service Name", "Line Type", "ControlID".
    //   - Report function with FileName parameter can be selected on a Report page.
    //   - New function: CloneRecordSet().
    // 
    // 2018-05-14 MNAD4.8.0.16 MAJORT
    //   Init3 JS function implemented.
    // 
    // 2018-05-16 MNAD4.8.0.18 SZT
    //   Fixed search expression FindReportWithFileName (FileName has to be VAR parameter in report functions).
    // 
    // 2018-05-28 MNAD4.8.0.19 MAJORT, SZT
    //   - FieldControl RefreshGrandParent implemented
    //   - FieldControl CloseAllAndOpenCard1, CloseAllAndOpenCard2, CloseAllAndOpenCard3, CloseAllAndOpenCard20 implemented
    //   - FieldControl SetToastMessage implemented
    //   - FieldControl SetStageValidated, ResetStageValidation, SetFieldValidated, ResetFieldValidation, FinishStaging, ResetStaging implemented
    //   - New validation behaviors: MandatoryToValidate, MandatoryWithChangeConfirm.
    //   - Update "Page Insert", "Page Update", "Page Delete", "Page Type" and related properties in the profile setup
    //   when these fields has changed in the configuration.
    //   - New field: "Staging Restart From".
    // 
    // 2018-06-06 MNAD4.8.0.20 SZT
    //   New field: "Show Source Field Name".
    // 
    // 2018-06-14 MNAD4.8.0.22 SZT, MAJORT
    //   - Changing offline refresh settings does not modify the "configuration changed" flag.
    //   - at integer field, the quantity increment can be only integer value.
    //   - JS: fixed Init3.
    // 
    // 2018-06-28 MNAD4.8.0.23 MAJORT
    //   - JS: fixed Init3.
    // 
    // 2018-07-05 MNAD4.8.0.24 SZT, MAJORT
    //   - Refactoring caused by JS merge.
    //   - JS: fixed Init3. (MAJORT)
    //   - New field: "Main Menu Action".
    //   - Implemented transformation functions for some option fields.
    //   - New key: "Object ID", "Line Type"
    //   - Added parameter _Force to ValidateFieldNo() function.
    //   - Uses string builder during JS generation. (MAJORT)
    // 
    // 2018-09-11 MNAD4.8.0.27 SZT
    //   - Fixed checking available JS before deleting JS template.
    //   - Fixed increasing JS version number during rebuild template.
    // 
    // 2018-09-28 MNAD4.8.0.28 SZT
    //   Fixed JSGenerateLookup() function (key field).
    // 
    // 2018-10-09 MNAD4.8.0.30 SZT
    //   - At "Page Type" validation RelatedPageName filled only on new config page.
    //   - Implemented IsListOnly() function.
    // 
    // 2018-10-10 MNAD4.8.0.31 SZT
    //   Implemented JSGenerateTemplateForXml() function.
    // 
    // 2018-10-11 MNAD4.8.0.32 SZT
    //   Minor refactoring in ValidateFieldNo() function.
    // 
    // 2018-10-24 MNAD4.8.0.35 HZS
    //   - "Web Service" record references changed to "Web Service Aggregate" in Object ID OnValidate and function GetFuncNames().
    //   - Unused local text const. (F_LocallText001) deleted form GetLocalizedUTFBytes.
    //   - Caption field "Page Type" change ENI to ENU
    // 
    // 2019-02-12 MNAD4.8.0.42 SZT
    //   Minor refactoring.

    Caption = 'Configuration Setup';
    DataCaptionFields = Name;

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            Editable = false;
            InitValue = "Page";
            OptionMembers = ,,,,,"Codeunit",,,"Page";
        }
        field(2; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(3; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(4; "Service Name"; Text[100])
        {
            Caption = 'Service Name';
            Description = 'key size 240 -> 235 -> 100';
            Editable = false;
        }
        field(5; "System Object"; Boolean)
        {
            Caption = 'System Object';
        }
        field(6; DisplayInMenu; Boolean)
        {
            Caption = 'Display In Menu';
        }
        field(7; "Table No."; Integer)
        {
            Caption = 'Table No.';
            Editable = false;
        }
        field(35; OptionValues2; Text[250])
        {
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
        field(91; "Initial Check for Changes"; DateTime)
        {
            Caption = 'Initial Check for Changes (date && time)';
        }
        field(92; Cacheable; Boolean)
        {
        }
        field(94; "Operation Type"; Option)
        {
            Caption = 'Operation Type';
            OptionCaption = 'Pos. Adjmt,Neg. Adjmt,Transferfields (Creating),Transferfields (Lookup),Multiplication,Transferfields (Min),Transferfields (Max),Transferfields (Avg),Transferfields (Sum),Transferfields (Count),Modification';
            OptionMembers = PosAdjmt,NegAdjmt,Transferfields_Creating,Transferfields_Lookup,Multiplication,Transferfields_Min,Transferfields_Max,Transferfields_Avg,Transferfields_Sum,Transferfields_Count,Modification;
        }
        field(95; "Check for Synchronization"; Text[75])
        {
            Caption = 'Check for Synchronization';
        }
        field(96; "Page Type"; Option)
        {
            Caption = 'Page Type';
            OptionCaption = 'List and Card,List,Card,Report,Offline,Offline Card';
            OptionMembers = ListCard,List,Card,"Report",Offline,OfflineCard;
        }
        field(97; ControlID; Integer)
        {
            Caption = 'ControlID';
        }
        field(98; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(99; "Page Line No."; Integer)
        {
            Caption = 'Page Line No.';
        }
        field(100; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionMembers = Main,"Field","Filter",Condition,Relation,Operation,Stage,Category;
        }
        field(101; Name; Text[75])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(102; LocalizedName; Text[75])
        {
            Caption = 'Localized Name';
            Editable = false;
        }
        field(104; FieldName; Text[75])
        {
            Caption = 'Field Name';
            Editable = false;
        }
        field(105; LocalizedFieldName; Text[75])
        {
            Caption = 'Localized Field Name';
            Editable = false;
        }
        field(106; FieldType; Option)
        {
            Caption = 'Field Type';
            OptionMembers = Text,"Code","Integer",Decimal,Date,Boolean,Blob,Option,Time,DateTime,"None";
        }
        field(107; MobileType; Option)
        {
            Caption = 'Mobile Type';
            OptionCaption = 'Normal,Image,PDF,Hyperlink,Barcode,Email,PhoneNumber,Address1,Address2,AddressCountry,AddressRegion,AddressCity,AddressPostCode,Refresh,Close,Filter,PhoneNumberMobile,Signature,ContactName,SalesPersonCode,UnitPrice,Quantity,Discount%,LineAmount,CurrencyCode,Excel,FieldControl,ServiceResourceFilter,LocationCode,UserID,CalendarStart,CalendarEnd,CacheableImage,File,MultilineText,HTMLTemplate,NoSeries,CacheablePDF,CacheableFile,CacheableExcel,CustomerNo,NFC,ZPLTemplate';
            OptionMembers = Normal,Image,PDF,Hyperlink,Barcode,Email,PhoneNumber,Address1,Address2,AddressCountry,AddressRegion,AddressCity,AddressPostCode,Refresh,Close,"Filter",PhoneNumberMobile,Signature,ContactName,SalesPersonCode,UnitPrice,Quantity,"Discount%",LineAmount,CurrencyCode,Excel,FieldControl,ServiceResourceFilter,LocationCode,UserID,CalendarStart,CalendarEnd,CacheableImage,File,MultilineText,HTMLTemplate,NoSeries,CacheablePDF,CacheableFile,CacheableExcel,CustomerNo,NFC,ZPLTemplate;
        }
        field(108; RelatedPageName; Text[75])
        {
            Caption = 'Related Page Name';
        }
        field(109; RelatedPgCodeFldName; Text[75])
        {
            Caption = 'Related Page Code Field Name';
        }
        field(110; RelatedPgDescFldName; Text[75])
        {
            Caption = 'Related Page Desc. Field Name';
        }
        field(111; OptionValues; Text[250])
        {
            Caption = 'Option Values';
            Editable = false;
        }
        field(112; OptionCaptions; Text[250])
        {
            Caption = 'Option Captions';
            Editable = false;
        }
        field(113; FieldClass; Option)
        {
            Caption = 'Field Class';
            Editable = false;
            OptionMembers = Normal,FlowField,FlowFilter;
        }
        field(114; "Default DrillDown"; Text[75])
        {
            Caption = 'Default DrillDown';
        }
        field(115; FilterType; Option)
        {
            Caption = 'Filter Type';
            OptionMembers = "FIELD","FILTER","CONST";
        }
        field(116; DestFieldName; Text[75])
        {
            Caption = 'Dest. Field Name';
        }
        field(117; SourceFieldName; Text[75])
        {
            Caption = 'Source Field Name';
        }
        field(118; FilterValue; Text[250])
        {
            Caption = 'Filter Value';
        }
        field(119; "Related Field No."; Integer)
        {
            Caption = 'Related Field No.';
        }
        field(120; "First Line Format"; Text[100])
        {
            Caption = 'First Line Format';
        }
        field(121; "Second Line Format"; Text[100])
        {
            Caption = 'Second Line Format';
        }
        field(122; "Menu Picture"; BLOB)
        {
            Caption = 'Menu Picture';
            SubType = UserDefined;
        }
        field(123; "Menu Picture Version"; Integer)
        {
            BlankZero = true;
            Caption = 'Menu Picture Version';
            Editable = false;
        }
        field(124; "Key Field"; Boolean)
        {
            Caption = 'Key Field';
            Editable = false;
        }
        field(125; "Page Insert"; Boolean)
        {
            Caption = 'Page Insert';
        }
        field(126; "Page Update"; Boolean)
        {
            Caption = 'Page Update';
        }
        field(127; "Page Delete"; Boolean)
        {
            Caption = 'Page Delete';
        }
        field(128; "Related Page Filters"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("MobileNAV Service Setup" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                 "Service Name" = FIELD ("Service Name"),
                                                                 "Line Type" = CONST (Filter),
                                                                 "Page Line No."=FIELD("Page Line No."),
                                                                 "Relation No."=FIELD("Relation No.")));
            Caption = 'Filters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(129;"Related Table No.";Integer)
        {
            Caption = 'Related Table No.';
        }
        field(130;"Function Name";Text[50])
        {
            Caption = 'Function Name';
            Editable = false;
        }
        field(131;Editable;Boolean)
        {
            Caption = 'Editable';
            Editable = true;
            InitValue = true;
        }
        field(132;Visible;Boolean)
        {
            Caption = 'Visible';
            Editable = true;
            InitValue = true;
        }
        field(133;"Caption ML";Text[250])
        {
            Caption = 'Caption ML';
        }
        field(134;Category;Code[20])
        {
            Caption = 'Category';
            TableRelation = "MobileNAV Master Data".Code WHERE (Type=CONST(Category));
        }
        field(137;"Required for Insert";Boolean)
        {
            Caption = 'Required for Insert';
        }
        field(138;"Order";Integer)
        {
            BlankZero = true;
            Caption = 'Order';
            Editable = false;
            MinValue = 0;
        }
        field(139;"Related Pages";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("MobileNAV Service Setup" WHERE ("Object Type"=FIELD("Object Type"),
                                                                 "Service Name"=FIELD("Service Name"),
                                                                 "Line Type"=CONST(Relation),
                                                                 "Page Line No."=FIELD("Page Line No.")));
            Caption = 'Related Pages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140;"Related Page Conditions";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("MobileNAV Service Setup" WHERE ("Object Type"=FIELD("Object Type"),
                                                                 "Service Name"=FIELD("Service Name"),
                                                                 "Line Type"=CONST(Condition),
                                                                 "Page Line No."=FIELD("Page Line No."),
                                                                 "Relation No."=FIELD("Relation No.")));
            Caption = 'Conditions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(141;"Relation No.";Integer)
        {
            Caption = 'Relation No.';
        }
        field(142;"Menu Picture Extension";Text[10])
        {
            Caption = 'Menu Picture Extension';
        }
        field(143;"Option Caption ML";Text[250])
        {
            Caption = 'Option Caption ML';
        }
        field(144;"Related Page Operations";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("MobileNAV Service Setup" WHERE ("Object Type"=FIELD("Object Type"),
                                                                 "Service Name"=FIELD("Service Name"),
                                                                 "Line Type"=CONST(Operation),
                                                                 "Page Line No."=FIELD("Page Line No."),
                                                                 "Relation No."=FIELD("Relation No.")));
            Caption = 'Operations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(145;"Default Key No.";Integer)
        {
            Caption = 'Default Key No.';
        }
        field(146;"Default Key Ascending";Boolean)
        {
            Caption = 'Default Key Ascending';
        }
        field(147;"Tablets Only DrillDown";Boolean)
        {
            Caption = 'Default DrillDown on Tablets only';
        }
        field(148;AutoRefreshOnOpen;Boolean)
        {
            Caption = 'Auto Refresh On Open';
        }
        field(149;"Page Level Operations";Integer)
        {
            CalcFormula = Count("MobileNAV Service Setup" WHERE ("Object Type"=FIELD("Object Type"),
                                                                 "Service Name"=FIELD("Service Name"),
                                                                 "Line Type"=CONST(Operation),
                                                                 "Relation No."=CONST(0),
                                                                 FieldName=FIELD(FieldName)));
            Caption = 'Page Level Operations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(150;"Filter Comparsion Type";Option)
        {
            Caption = 'Filter Comparsion Type';
            OptionCaption = '=,<>,<,<=,>,>=';
            OptionMembers = Equal,NotEqual,Less,LessOrEqual,Greater,GreaterOrEqual;
        }
        field(151;"Profile";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("MobileNAV Profile Setup" WHERE ("Profile Type"=CONST(Page),
                                                                 ID=FIELD("Service Name"),
                                                                 "Display in Menu"=CONST(true)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(152;"Field Level Operations";Integer)
        {
            BlankZero = true;
            CalcFormula = Count("MobileNAV Service Setup" WHERE ("Object Type"=FIELD("Object Type"),
                                                                 "Service Name"=FIELD("Service Name"),
                                                                 "Line Type"=CONST(Operation),
                                                                 "Relation No."=CONST(0),
                                                                 FieldName=FIELD(FieldName)));
            Caption = 'Field Level Operations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(153;"OnOpen Function Name";Text[50])
        {
            Caption = 'OnOpen Function Name';
            Editable = false;
        }
        field(154;"OnClose Function Name";Text[50])
        {
            Caption = 'OnClose Function Name';
            Editable = false;
        }
        field(155;RegExText;Text[250])
        {
            Caption = 'RegEx Text';
        }
        field(156;RegExResult;Integer)
        {
            BlankZero = true;
            Caption = 'RegEx Result';
        }
        field(157;RegExResults;Text[50])
        {
            Caption = 'RegEx Results';
        }
        field(159;"Page Level Filters";Integer)
        {
            CalcFormula = Count("MobileNAV Service Setup" WHERE ("Object Type"=FIELD("Object Type"),
                                                                 "Service Name"=FIELD("Service Name"),
                                                                 "Line Type"=CONST(Filter),
                                                                 "Relation No."=CONST(0),
                                                                 "Page Line No."=CONST(0)));
            Caption = 'Page Level Filters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160;UploadOperationResult;Boolean)
        {
            Caption = 'Upload Operation Result';
        }
        field(170;Template;BLOB)
        {
            Caption = 'Template';
        }
        field(171;"Template Version";Integer)
        {
            BlankZero = true;
            Caption = 'Template Version';
            Editable = false;
        }
        field(172;"Template Extension";Text[10])
        {
            Caption = 'Template Extension';
        }
        field(173;"Upload Insertion Operation";Boolean)
        {
            Caption = 'Upload Insertion Operation';
        }
        field(174;"Upload Deletion Operation";Boolean)
        {
            Caption = 'Upload Deletion Operation';
        }
        field(175;"JS OnInsert Defined";Boolean)
        {
            Caption = 'JS OnInsert Defined';
            Editable = false;
        }
        field(176;"JS OnDelete Defined";Boolean)
        {
            Caption = 'JS OnDelete Defined';
            Editable = false;
        }
        field(177;"JS OnOpen Defined";Boolean)
        {
            Caption = 'JS OnOpen Defined';
            Editable = false;
        }
        field(178;"JS OnClose Defined";Boolean)
        {
            Caption = 'JS OnClose Defined';
            Editable = false;
        }
        field(179;"JS OnValidate Defined";Boolean)
        {
            Caption = 'JS OnValidate Defined';
            Editable = false;
        }
        field(180;"Temporary Offline Key";Text[75])
        {
            Caption = 'Temporary Offline Key';
        }
        field(181;ShortPageName;Code[10])
        {
        }
        field(182;"Temp. Offline Key Separator";Code[3])
        {
            Caption = 'Temp. Offline Key Separator';
        }
        field(183;TemplateForEditing;BLOB)
        {
            Caption = 'TemplateForEditing';
        }
        field(184;"JS OnPressed Defined";Boolean)
        {
            Caption = 'JS OnPressed Defined';
            Editable = false;
        }
        field(199;"Function Type";Option)
        {
            OptionMembers = Normal,"Generated BLOB",BLOB;
        }
        field(200;HidePrefixNew;Boolean)
        {
            Caption = 'Hide "New" Prefix';
        }
        field(201;HidePrefixPageNameOnCard;Boolean)
        {
            Caption = 'Hide Page Name Prefix on Card';
        }
        field(202;HidePrefixParentOnDrillDown;Boolean)
        {
            Caption = 'Hide Parent Page Title on Drill-Down List';
        }
        field(203;ShowFilterPanelAutomatically;Boolean)
        {
            Caption = 'Show Filter Panel Instead of "To display data..."';
        }
        field(204;HideBtnCardRefresh;Boolean)
        {
            Caption = 'Hide Card Refresh';
        }
        field(205;HideBtnCardHideFields;Boolean)
        {
            Caption = 'Hide Card Hide Fields';
        }
        field(206;HideBtnCardFlowFilters;Boolean)
        {
            Caption = 'Hide Card Flow Filters';
        }
        field(207;HideBtnCardNavigate;Boolean)
        {
            Caption = 'Hide Card Navigate';
        }
        field(208;HideBtnListSort;Boolean)
        {
            Caption = 'Hide List Sort';
        }
        field(209;HideBtnListRefresh;Boolean)
        {
            Caption = 'Hide List Refresh';
        }
        field(210;HideBtnListFilter;Boolean)
        {
            Caption = 'Hide List Filter';
        }
        field(211;HideBtnListFlowFilters;Boolean)
        {
            Caption = 'Hide List Flow Filters';
        }
        field(212;"Check Type";Option)
        {
            Caption = 'Type of Check for Changes';
            OptionCaption = 'By NAS,By Client';
            OptionMembers = "By NAS","By Client";
        }
        field(213;"Visible on Page";Boolean)
        {
            Caption = 'Visible on Page';
        }
        field(214;"Editable on Page";Boolean)
        {
            Caption = 'Editable on Page';
        }
        field(215;"Field Category";Option)
        {
            Caption = 'Field Category';
            OptionCaption = ' ,Variant Code,Unit of Measure Code,Bin Code,Zone Code,Currency Code,Serial No.,Lot No.';
            OptionMembers = Other,VariantCode,UnitOfMeasureCode,BinCode,ZoneCode,CurrencyCode,SerialNo,LotNo;
        }
        field(216;"Skip for JavaScript";Boolean)
        {
            Caption = 'Skip for JavaScript';
        }
        field(217;"Assign to Profile TEMP";Boolean)
        {
            Caption = 'Assigned';
        }
        field(219;"Validation Behavior";Option)
        {
            Caption = 'Validation Behavior';
            OptionCaption = ' ,ScanToValidate,ScanWithChangeConfirm,Scan,Mandatory,MandatoryToValidate,MandatoryWithChangeConfirm';
            OptionMembers = " ",ScanToValidate,ScanWithChangeConfirm,Scan,Mandatory,MandatoryToValidate,MandatoryWithChangeConfirm;
        }
        field(220;Stage;Code[100])
        {
            Caption = 'Stage';
        }
        field(221;"Auto Next Stage";Boolean)
        {
            Caption = 'Auto Next Stage';
        }
        field(222;"Back-Next Visible";Boolean)
        {
            Caption = 'Back-Next Visible';
        }
        field(223;"Source Expression";Text[75])
        {
            Caption = 'Source Expression';
        }
        field(226;"Enable Staging";Boolean)
        {
            Caption = 'Enable Staging';
        }
        field(227;"Decimal Places";Text[5])
        {
            Caption = 'Decimal Places';
        }
        field(228;"Quantity Increment";Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity Increment';
            DecimalPlaces = 0:6;
            MinValue = 0.000001;
        }
        field(229;"Chunk Size";Integer)
        {
            BlankZero = true;
            Caption = 'Chunk Size';
            MinValue = 0;
        }
        field(230;"Related PageType";Option)
        {
            CalcFormula = Lookup("MobileNAV Service Setup"."Page Type" WHERE ("Service Name"=FIELD(RelatedPageName),
                                                                              "Line Type"=CONST(Main)));
            FieldClass = FlowField;
            OptionCaption = 'ListCard,List,Card,Report,Offline,OfflineCard';
            OptionMembers = ListCard,List,Card,"Report",Offline,OfflineCard;
        }
        field(231;"Staging Restart From";Boolean)
        {
            Caption = 'Restart From Here';
        }
        field(232;"Show Source Field Name";Boolean)
        {
            Caption = 'Show Source Field Name';
        }
        field(233;"Main Menu Action";Option)
        {
            Caption = 'Main Menu Action';
            OptionCaption = 'Create,Open';
            OptionMembers = Create,Open;
        }
    }

    keys
    {
        key(Key1;"Service Name","Line Type","Page Line No.","Relation No.","Line No.")
        {
            Clustered = true;
        }
        key(Key2;"Service Name","Page Line No.","Relation No.","Line Type","Line No.")
        {
        }
        key(Key3;"Order")
        {
        }
        key(Key4;ShortPageName)
        {
        }
        key(Key5;"Field No.",FieldClass)
        {
        }
        key(Key6;"Key Field")
        {
        }
        key(Key7;"Key Field",FieldName)
        {
        }
        key(Key8;"Line Type","System Object")
        {
        }
        key(Key9;"Field Category","Line Type")
        {
        }
        key(Key10;"Line Type",MobileType)
        {
        }
        key(Key11;"Object Type","Service Name","Line Type",FieldName)
        {
        }
        key(Key12;FieldClass)
        {
        }
        key(Key13;"Service Name","Line Type",ControlID)
        {
        }
        key(Key14;"Object ID","Line Type")
        {
        }
    }

    fieldgroups
    {
    }
}

