@AbapCatalog.sqlViewName: 'YIBBESALESO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interface for YBBEE_SALESOORDER'
@Metadata.ignorePropagatedAnnotations: true
define view YI_BBEE_SALESORDER as select from ybbee_salesorder
association [0..*] to YI_BBEE_SALESORDERITEM as _Item on $projection.Salesorder = _Item.Salesorder

{
    key salesorder as Salesorder,
    salesordertype as Salesordertype,
    soldtoparty as Soldtoparty,
    salesorganization as Salesorganization,
    distributionchannel as Distributionchannel,
    organizationdivision as Organizationdivision,
    deliverystatus as Deliverystatus,
    deletionindicator as Deletionindicator,
    createdbyuser as Createdbyuser,
    creationdatetime as Creationdatetime,
    lastchangedbyuser as Lastchangedbyuser,
    lastchangedatetime as Lastchangedatetime,
    
    _Item
}
