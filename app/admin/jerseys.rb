# frozen_string_literal: true

ActiveAdmin.register Jersey do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :price, :team_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:fullName, :description, :price, :image, :team_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    column :image do |jersey|
      image_tag url_for(jersey.image), class: 'image-preview' if jersey.image.present?
    end
    actions
  end

  form do |f| # This is a formtastic form builder.
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
