@EndUserText.label: 'RAP UI Hierarchy consumption view'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZRAPUI_C_HEADER
  as projection on ZRAPUI_I_HEADER
{
  key HeaderUuid,
      Namespace,
      Datasourcetype,
      ImplementType,
      BindType,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      @Search.ranking: #HIGH
      RapPackage,
      DraftEnable,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      @Search.ranking: #HIGH
      Entityname,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      @Search.ranking: #HIGH
      Description,
      LastChangeby,
      LastChangeat,
      /* Associations */
      _hierarchy : redirected to composition child ZRAPUI_C_HIERARCHY
}
