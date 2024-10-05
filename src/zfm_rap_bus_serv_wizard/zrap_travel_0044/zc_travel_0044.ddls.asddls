@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_TRAVEL_0044
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_TRAVEL_0044
{
  key TravelUuid,
  TravelId,
  AgencyId,
  CustomerId,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  @Semantics.currencyCode: true
  CurrencyCode,
  Description,
  OverallStatus,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
