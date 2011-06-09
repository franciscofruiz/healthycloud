class EntidadsController < ApplicationController

  active_scaffold :Entidads do |conf|
    #conf.modules.exclude :update
    conf.list.label = 'Entidades Administradoras'
    #conf.list.sorting = [{:name => :ASC}, {:genero => :ASC}]
    conf.list.columns.exclude :updated_at
    conf.list.columns.exclude :created_at
    
  end


end
