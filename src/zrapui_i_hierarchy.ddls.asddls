@AbapCatalog.sqlViewName: 'ZRAPUIHIER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'RAP UI Hierarchy Interface view'
define view ZRAPUI_I_HIERARCHY
  as select from zrapui_hierarchy
  association to parent ZRAPUI_I_HEADER as _header on $projection.HeaderUuid = _header.HeaderUuid
{

  key zrapui_hierarchy.item_uuid   as ItemUuid,
      zrapui_hierarchy.header_uuid as HeaderUuid,
      zrapui_hierarchy.link_uuid   as LinkUuid,
      zrapui_hierarchy.entityname  as Entityname,
      zrapui_hierarchy.datasource  as Datasource,
      zrapui_hierarchy.objectid    as Objectid,
      zrapui_hierarchy.child_uuid  as ChildUuid,
      zrapui_hierarchy.parent_uuid as ParentUuid,
      zrapui_hierarchy.etagmaster  as Etagmaster,

      _header // Make association public
}
