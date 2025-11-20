@AbapCatalog.sqlViewName: 'YCBEESALPR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consumption salesorderitem with product'
@Metadata.ignorePropagatedAnnotations: true
define view YC_BBEE_SALESORDERI_PRODCT as select from YI_BBEE_SALESORDERITEM as ITEM left outer to one join YI_BBEE_PRODUCT as PROD
on PROD.Product = ITEM.Product
{
    key ITEM.Salesorder,
    key ITEM.Salesorderitem,
    PROD.ProductType,
    PROD.CreationDataTime,
    ITEM.Product,
    ITEM.Orderquantity,
    ITEM.Orderquantityunit,
    ITEM.Netamount,
    ITEM.Transactioncurrency,
    ITEM.Creationdate,
    ITEM.Createdbyusesr,
    ITEM.Creationdatetime,
    ITEM.Lastchangedbyuser,
    ITEM.Lastchangeddatetime,
    
    /* Associations */
    ITEM._Product
}
