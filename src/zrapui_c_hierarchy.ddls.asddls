@EndUserText.label: 'RAP UI Hierarchy consumption view'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZRAPUI_C_HIERARCHY
  as projection on ZRAPUI_I_HIERARCHY
{
  key ItemUuid,
      HeaderUuid,
      LinkUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      @Search.ranking: #HIGH
      Entityname,
      Datasource,
      Objectid,
      ChildUuid,
      ParentUuid,
      Etagmaster,
      /* Associations */
      _header : redirected to parent ZRAPUI_C_HEADER
}
