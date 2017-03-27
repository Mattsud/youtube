ActiveAdmin.register Category do
  permit_params :title,
                :description,
                :logo


      form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Categories" do
      f.input :title
      f.input :description, :as => :text
      f.input :logo, as: :file

    end
    f.actions
  end
end