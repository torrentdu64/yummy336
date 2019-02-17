ActiveAdmin.register Shop do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id ,:title, :description, :photo_one, :phone, :address
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#
  # form photo_one: 'photo' do |f|
  #    f.input :photo_one
  #   actions
  # end

  # show do
  #   render "shops/admin_show"
  # end



  # index do
  #     selectable_column
  #     column :id
  #     column :title
  #     column :description
  #     column :photo_one do |photo|

  #       image_tag(photo.photo_one_url)
  #     end
  #     column :phone
  #     column :address
  #     column :created_at
  #     actions
  # end

end
