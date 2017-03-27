ActiveAdmin.register Video do
  permit_params :title,
                :plateform,
                :photo,
                :photo_cache,
                :user_id,
                :channel,
                :is_published,
                :category_id

      form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Videos" do
      f.input :photo, as: :file
      f.input :title, :label => "Titre de la vidéo"
      f.input :plateform
      f.input :category, :label => "Catégorie de la vidéo",
                            as: :check_boxes,
                            checked: Category.pluck(&:id)
      f.input :user_id, :label => 'User',
                        :as => :select,
                        :collection => User.all.map{ |s| [ s.id ]}
      f.input :is_published, :label => "Publié",
                            as: :boolean
    end
    f.actions
  end
end