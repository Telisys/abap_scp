@AbapCatalog.sqlViewName: 'ZV_ACC_CATEG_L'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Acceso Categoría'
define view ZVB_acc_categ as select from ztb_acc_categ_eb
{
    key categoria as Categoria,
    key tipo_acceso as TipoAcceso
}
