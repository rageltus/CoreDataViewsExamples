@AbapCatalog.sqlViewName: 'YBEECHILD2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'child view'
@Metadata.ignorePropagatedAnnotations: true
define view Y_BBEE_CompositionChildView_2   as select distinct from /dmo/flight

  association to parent Y_BBEE_CompositionRootView_2 as _RootView

    on $projection.RootKeyField = _RootView.RootKeyField

  composition [0..*] of Y_BBEE_CompositionGradChldVw_2 as _GrandchildView

{

  key 'R' as RootKeyField,

  key 'C' as ChildKeyField,

  _RootView,

  _GrandchildView
}
