@AbapCatalog.sqlViewName: 'ZV_CLI_LIB_L'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Analytics.query : true
@EndUserText.label: 'Clientes y Libros'
define view zvb_cli_lib
  as select from ztb_cli_lib_eb
{
  key id_cliente as IdCliente,
  key id_libro   as IdLibro,
      @DefaultAggregation: #SUM
      1          as Cantidad

}
