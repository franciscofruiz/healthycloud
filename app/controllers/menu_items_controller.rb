class MenuItemsController < ApplicationController
  active_scaffold :MenuItem do |conf|
    #conf.modules.exclude :update
    conf.list.label = 'Items del Menu'
    #conf.list.sorting = [{:name => :ASC}, {:genero => :ASC}]
    conf.list.columns.exclude :updated_at
    conf.list.columns.exclude :created_at
  end
end
