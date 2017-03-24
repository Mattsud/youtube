ActiveAdmin.register Video do
  permit_params :title,
                :description,
                :photo,
                :user_id,
                category_ids:[]

      form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Videos" do
      f.input :picture, as: :file
      f.input :title, :label => "Titre de la vidéo"
      f.input :description, :as => :text
      f.input :categories, :label => "Catégorie de la vidéo",
                            as: :check_boxes,
                            checked: Category.pluck(&:id)
      f.input :user_id, :label => 'User',
                        :as => :select,
                        :collection => User.all.map{ |s| [ s.username, s.id ]}
    end
    f.actions
  end
end