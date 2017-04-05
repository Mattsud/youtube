ActiveAdmin.register Video do
  controller do
  def find_resource
    scoped_collection.where(slug: params[:id]).first!
  end
end
  permit_params :title,
                :description,
                :plateform,
                :photo,
                :photo_cache,
                :user_id,
                :link,
                :is_published,
                :category_title,
                :language

      form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "Videos" do
      f.input :photo, as: :file
      f.input :description, as: :text
      f.input :title, :label => "Titre de la vidéo"
      f.input :plateform
      f.input :link
      f.input :language
      f.input :category_title
      f.input :user_id, :label => 'User',
                        :as => :select,
                        :collection => User.all.map{ |s| [ s.id ]}
      f.input :is_published, :label => "Publié",
                            as: :boolean
    end
    f.actions
  end
end