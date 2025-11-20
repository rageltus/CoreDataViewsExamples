@AbapCatalog.sqlViewName: 'YBBEEROOTV'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root view'
@Metadata.ignorePropagatedAnnotations: true
define root view Y_BBEE_CompositionRootView_2   as select distinct from /dmo/flight

  composition [0..*] of Y_BBEE_CompositionChildView_2 as _ChildView

{

  key 'R' as RootKeyField,

  _ChildView
}
