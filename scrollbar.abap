report z_report.

class material definition.
  public section.
    data: if_val type char50.
    methods: set_val importing i_val type char50.
endclass.

class material implementation.
  method set_val.
    if_val = i_val.
  endmethod.
endclass.

parameters: p_name type char50 default 'World'.


start-of-selection.
  data gr_obj type REF TO material.
  CREATE OBJECT gr_obj.
  gr_material->SET_VAL( I_VAL = p_name  ).*
  write: / 'Hello',
           gr_material->if_val.