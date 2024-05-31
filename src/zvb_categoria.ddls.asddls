@AbapCatalog.sqlViewName: 'ZV_CATEG_L'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view zvb_categoria
  as select from ztb_categ_eb
{
  key categoria as Categoria,
      descrip   as Descrip
}
