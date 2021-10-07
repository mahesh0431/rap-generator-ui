@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'RAP UI Header Interface view'
define root view entity ZRAPUI_I_HEADER
  as select from zrapui_header
   composition [1..*] of ZRAPUI_I_HIERARCHY  as _hierarchy
{
  key header_uuid    as HeaderUuid,
      namespace      as Namespace,
      datasourcetype as Datasourcetype,
      implement_type as ImplementType,
      bind_type      as BindType,
      rap_package    as RapPackage,
      draft_enable   as DraftEnable,
      entityname     as Entityname,
      description    as Description,
      last_changeby  as LastChangeby,
      last_changeat  as LastChangeat,

      _hierarchy // Make association public

}
