CLASS zcl_esb_library_load_data_tabs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ESB_LIBRARY_LOAD_DATA_TABS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA:
      lt_acc_categ  TYPE STANDARD TABLE OF ztb_acc_categ_eb,
      lt_categoria  TYPE STANDARD TABLE OF ztb_categ_eb,
      lt_clientes   TYPE STANDARD TABLE OF ztb_clientes_eb,
      lt_cli_libros TYPE STANDARD TABLE OF ztb_cli_lib_eb,
      lt_libros     TYPE STANDARD TABLE OF ztb_libros_eb.


    lt_acc_categ = VALUE #(
                  ( categoria = '1' tipo_acceso = 'A' ) " En la Biblioteca
                  ( categoria = '2' tipo_acceso = 'B' ) " En linea
                          ).
    DELETE FROM ztb_acc_categ_eb.
    INSERT ztb_acc_categ_eb FROM TABLE @lt_acc_categ.
    SELECT * FROM ztb_acc_categ_eb INTO TABLE @lt_acc_categ.
    out->write( |ztb_acc_categ_eb registros creados: { sy-dbcnt }| ).
    CLEAR lt_acc_categ[].

    lt_categoria = VALUE #(
                  ( categoria = '1' descrip = 'En la Biblioteca' ) " En la Biblioteca
                  ( categoria = '2' descrip = 'En linea' )         " En linea
                          ).
    DELETE FROM ztb_categ_eb.
    INSERT ztb_categ_eb FROM TABLE @lt_categoria.
    SELECT * FROM ztb_categ_eb INTO TABLE @lt_categoria.
    out->write( |ztb_categ_eb registros creados: { sy-dbcnt }| ).
    CLEAR lt_categoria[].

    lt_clientes = VALUE #(
                  ( id_cliente = '001' tipo_acceso = 'A'
                    nombre = 'Estela' apellido = 'Lopez'
                    email = 'es_lopez@gmail.com' url = ' ' )
                  ( id_cliente = '002' tipo_acceso = 'A'
                    nombre = 'Susana' apellido = 'Perez'
                    email = 'su_perez@gmail.com' url = ' ' )
                  ( id_cliente = '003' tipo_acceso = 'B'
                    nombre = 'Roxana' apellido = 'Perez'
                    email = 'ro_perez@gmail.com' url = ' ' )
                          ).
    DELETE FROM ztb_clientes_eb.
    INSERT ztb_clientes_eb FROM TABLE @lt_clientes.
    SELECT * FROM ztb_clientes_eb INTO TABLE @lt_clientes.
    out->write( |ztb_clientes_eb registros creados: { sy-dbcnt }| ).
    CLEAR lt_clientes[].

    lt_libros = VALUE #(
                  ( id_libro = '00001' categoria = '1' titulo = 'Aladin'
                    autor = 'Andercen' editorial = 'Pepito' idioma = 'Español'
                    paginas = '25' precio = '2500.00' moneda = 'ARS'
                    formato = '1' url = ' ' )
                  ( id_libro = '00002' categoria = '2' titulo = 'Cenicienta'
                    autor = 'Andercen' editorial = 'Pepito' idioma = 'Español'
                    paginas = '30' precio = '2800.00' moneda = 'ARS'
                    formato = '1' url = ' ' )
                  ( id_libro = '00003' categoria = '1' titulo = 'La Bella durmiente'
                    autor = 'Andercen' editorial = 'Pepito' idioma = 'Español'
                    paginas = '28' precio = '2800.00' moneda = 'ARS'
                    formato = '1' url = ' ' )
                                            ).
    DELETE FROM ztb_libros_eb.
    INSERT ztb_libros_eb FROM TABLE @lt_libros.
    SELECT * FROM ztb_libros_eb INTO TABLE @lt_libros.
    out->write( |ztb_libros_eb registros creados: { sy-dbcnt }| ).
    CLEAR lt_libros[].

    lt_cli_libros = VALUE #(
                  ( id_cliente = '001' id_libro = '00002' )
                  ( id_cliente = '002' id_libro = '00001' )
                          ).
    DELETE FROM ztb_cli_lib_eb.
    INSERT ztb_cli_lib_eb FROM TABLE @lt_cli_libros.
    SELECT * FROM ztb_cli_lib_eb INTO TABLE @lt_cli_libros.
    out->write( |ztb_cli_lib_eb registros creados: { sy-dbcnt }| ).
    CLEAR lt_cli_libros[].


  ENDMETHOD.
ENDCLASS.
