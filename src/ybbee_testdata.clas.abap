CLASS ybbee_testdata DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ybbee_testdata IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

    DATA ls_product   TYPE ybbee_product.
    DATA lv_timestamp TYPE timestampl.
    DATA lv_msg       TYPE string.

    lv_timestamp = cl_abap_context_info=>get_system_time( ).

    DO 10 TIMES.

      CLEAR ls_product.

      ls_product-client = sy-mandt.
      ls_product-product = |TEST{ sy-index + 1 }|.
      ls_product-product_type = 'FERT'.
      ls_product-creation_data_time = lv_timestamp.

      TRY.
          INSERT ybbee_product FROM @ls_product.

          lv_msg = |Inserted: { ls_product-product }|.
          out->write( lv_msg ).

        CATCH cx_sy_itab_duplicate_key INTO DATA(lx_dupl).
          lv_msg = |Skipped (duplicate): { ls_product-product }|.
          out->write( lv_msg ).

      ENDTRY.

    ENDDO.

    DATA ls_so       TYPE ybbee_salesordtm.
    DATA lv_ts       TYPE timestampl.

lv_ts = cl_abap_context_info=>get_system_time( ).

    DO 10 TIMES.

      CLEAR ls_so.

      ls_so-client = sy-mandt.

      ls_so-salesorder     = |50000{ sy-index + 1 }|.
      ls_so-salesorderitem = |000010|.
      ls_so-product        = |TEST{ sy-index + 1 }|.

      ls_so-orderquantity       = 10 * sy-index.
      ls_so-orderquantityunit   = 'PC'.

      ls_so-netamount = sy-index * 100.
      ls_so-transactioncurrency = 'EUR'.

      ls_so-creationdate     = sy-datum.
      ls_so-createdbyusesr   = sy-uname.
      ls_so-creationdatetime = lv_ts.

      ls_so-lastchangedbyuser   = sy-uname.
      ls_so-lastchangeddatetime = lv_ts.

      TRY.
          INSERT ybbee_salesordtm FROM @ls_so.
          out->write( |Inserted SO Item: { ls_so-salesorder }/{ ls_so-salesorderitem }| ).
        CATCH cx_sy_itab_duplicate_key.
          out->write( |Duplicate SO skipped: { ls_so-salesorder }/{ ls_so-salesorderitem }| ).
      ENDTRY.

    ENDDO.


    out->write( `--- Done ---` ).

  ENDMETHOD.
ENDCLASS.

