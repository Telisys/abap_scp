@AbapCatalog.sqlViewName: 'ZV_DET_CLIENT_L'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle de Clientes'
@Metadata.allowExtensions: true
define view zvb_det_clientes as select from ztb_clientes_eb
{
  key id_cliente  as IdCliente,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellido    as Apellido,
      email       as Email,
      url         as Url

}
