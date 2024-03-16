ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :image
  remove_filter :image_attachment, :image_blob

  show do
    attributes_table do
      row :id
      row :full_name
      row :phone_number
      row :email
      row :notes
      row :image do |customer|
        if customer.image.attached?
          image_tag customer.image
        else
          "No Image"
        end
      end
    end
  end

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do 
      f.input :image, as: :file
    end
    f.actions
  end
end
