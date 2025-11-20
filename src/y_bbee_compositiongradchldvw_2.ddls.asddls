@AbapCatalog.sqlViewName: 'YBEEGRANDC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'grand child view'
@Metadata.ignorePropagatedAnnotations: true
define view Y_BBEE_CompositionGradChldVw_2   as select distinct from /dmo/flight

  association [1..1] to Y_BBEE_CompositionRootView_2 as _RootView

    on $projection.RootKeyField = _RootView.RootKeyField

  association to parent Y_BBEE_CompositionChildView_2 as _ChildView

    on  $projection.RootKeyField  = _ChildView.RootKeyField

    and $projection.ChildKeyField = _ChildView.ChildKeyField

{

  key 'R' as RootKeyField,

  key 'C' as ChildKeyField,

  key 'G' as GrandchildKeyField,

  _RootView,

  _ChildView
}
