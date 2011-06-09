class DbTablesController < ApplicationController

  active_scaffold :DbTable do |conf|
    #conf.modules.exclude :update
    conf.list.label = 'Tablas de Almacenamiento de Datos de Apoyo'
    #conf.list.sorting = [{:name => :ASC}, {:genero => :ASC}]
    conf.list.columns.exclude :updated_at
    conf.list.columns.exclude :created_at
  end


end
