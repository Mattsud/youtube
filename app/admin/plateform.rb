ActiveAdmin.register Plateform do
  permit_params :title,
                :description,
                :photo


      form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Categories" do
      f.input :title
      f.input :description, :as => :text
      f.input :photo, as: :file

    end
    f.actions
  end
end