class ProcedimientosController < ApplicationController
  active_scaffold :Procedimiento do |conf|
    #conf.modules.exclude :update
    conf.list.label = 'Procedimientos Y Consultas'
    #conf.list.sorting = [{:name => :ASC}, {:genero => :ASC}]
    conf.list.columns.exclude :updated_at
    conf.list.columns.exclude :created_at
  end


end
