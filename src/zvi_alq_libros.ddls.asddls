@AbapCatalog.sqlViewName: 'ZV_ALQ_LIBROS_L'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Alquiler de Libros - Clientes'
@Metadata.allowExtensions: true
define view zvi_alq_libros
  as select from zvb_libros_eb as Libros
  association [0..*] to zvb_cli_lib      as _CliLib   on Libros.IdLibro = _CliLib.IdLibro
  association [0..*] to zvb_det_clientes as _Clientes on _CliLib.IdCliente = _Clientes.IdCliente
{
  key IdLibro,
  key Categoria,
      Titulo,
      Autor,
      Editorial,
      Idioma,
      Paginas,
      Precio,
      Moneda,
      Formato,
      _CliLib.IdCliente,
//      // 0 neutral grey
//      // 1 negative red
//      // 2 critical yellow
//      // 3 positive green
      case
      when _CliLib.Cantidad <= 0 then 0
      when _CliLib.Cantidad between 1 and 30 then 2
      when _CliLib.Cantidad between 31 and 100 then 1
      when _CliLib.Cantidad > 100 then 3
      else 0
      end as Ventas,
      ' ' as CantVend,
      _Clientes

}
