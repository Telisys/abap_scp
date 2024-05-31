@AbapCatalog.sqlViewName: 'ZV_DET_LIBROS_L'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle de libros'
define view zvb_libros_eb
  as select from ztb_libros_eb
{
  key id_libro  as IdLibro,
  key categoria as Categoria,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url
}
