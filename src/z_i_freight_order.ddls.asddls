@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Freight order cds view'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_I_FREIGHT_ORDER
  as select from zfreight_order
{
  key freight_order_id,
      carrier_name,
      freight_amount,
      freight_status 
}


where carrier_name = 'FEDEX'
