@AbapCatalog.sqlViewName: 'YIBBEPROD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interface for YBBEE_PRODUCT'
@Metadata.ignorePropagatedAnnotations: true
define view YI_BBEE_PRODUCT as select from ybbee_product
{
    key product as Product,
    product_type as ProductType,
    creation_data_time as CreationDataTime
}
