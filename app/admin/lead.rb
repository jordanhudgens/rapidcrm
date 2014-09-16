ActiveAdmin.register Lead do

  permit_params :name, :location, :company, :phone, :date

  index do
    column :name
    column :location
    actions
  end
  
end