# frozen_string_literal: true

ActiveAdmin.register Order do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :subtotal, :total
  #
  # or
  #
  # permit_params do
  #   permitted = [:subtotal, :total]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :subtotal
    column :total
    actions
  end

  show do
    # row :column_one
    # row :column_two
    # ...
    table_for model.categories.order('name ASC') do
      column 'Categories' do |category|
        link_to category.name, [:admin, category]
      end
    end
  end

  form do |f|
    f.inputs 'Add/Edit Model' do
      # f.input :column_one
      # f.input :column_two
      # ...
      f.input :categories, as: :check_boxes
    end
  end
end
