CLASS zfm__call_service_0044 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zfm__call_service_0044 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TRY.
        DATA(destination) = cl_soap_destination_provider=>create_by_url( i_url = 'https://sapes5.sapdevcenter.com/sap/bc/srt/xip/sap/zepm_product_soap/002/epm_product_soap/epm_product_soap').
        DATA(proxy) = NEW zfm_co_epm_product_soap(
                        destination = destination
                      ).
        DATA(request) = VALUE zfm_req_msg_type( req_msg_type-product = 'HT-1000' ).
        proxy->get_price(
          EXPORTING
            input = request
          IMPORTING
            output = DATA(response)
        ).
        out->write( |{ response-res_msg_type-price } { response-res_msg_type-currency }| ).

        "handle response
      CATCH cx_soap_destination_error.
        "handle error
      CATCH cx_ai_system_fault.
        "handle error
      CATCH zfm_cx_fault_msg_type.
        "handle error
    ENDTRY.


  ENDMETHOD.
ENDCLASS.
