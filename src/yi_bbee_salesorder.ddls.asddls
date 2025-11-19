@AbapCatalog.sqlViewName: 'YIBBESALESO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interface for YBBEE_SALESORDTM'
@Metadata.ignorePropagatedAnnotations: true
define view YI_BBEE_SALESORDER as select from ybbee_salesordtm

association [0..1] to YI_BBEE_PRODUCT as _Product on $projection.Product = _Product.Product

{
    key salesorder as Salesorder,
    key salesorderitem as Salesorderitem,
    product as Product,
    orderquantity as Orderquantity,
    orderquantityunit as Orderquantityunit,
    netamount as Netamount,
    transactioncurrency as Transactioncurrency,
    creationdate as Creationdate,
    createdbyusesr as Createdbyusesr,
    creationdatetime as Creationdatetime,
    lastchangedbyuser as Lastchangedbyuser,
    lastchangeddatetime as Lastchangeddatetime,
    
    /** Assoz. */
    _Product
}
