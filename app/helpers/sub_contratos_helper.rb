module SubContratosHelper
  def contrato_form_column(record, field_name)
    # simple example that just hard codes two possible values
    select_tag field_name, options_from_collection_for_select(Contrato.find(:all),"id","name")
    #options_from_collection_for_select
  end

end
