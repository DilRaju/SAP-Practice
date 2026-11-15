@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Freight Order and Carrier Join'

define view entity Z_I_FREIGHT_ORDER_CARRIER
  as select from zfreight_order as FO
    inner join zcarrier_new as C
      on FO.carrier_id = C.carrier_id
{
  key FO.freight_order_id,
      FO.carrier_id,
      C.carrier_name,
      C.country
}
