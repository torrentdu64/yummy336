ActiveAdmin.register Girl do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :shop_id,:name,:description,:age,:photo_one,:photo_two,:photo_three,:photo_four,:photo_five,:photo_six,:photo_seven,:photo_eight,:photo_nine,:photo_ten,:origin,:service,:phone,:size,:height,:weight,:bust,:hair















# #
# # or
# #
# # permit_params do
# #   permitted = [:permitted, :attributes]
# #   permitted << :other if params[:action] == 'create' && current_user.admin?
# #   permitted
# # end
# #
index do
      selectable_column
      column :shop_id
      column :name
      column :description
      column :photo_one do |photo|
        image_tag(photo.photo_one_url , size: "200x300")
      end
      actions
  end

#   show do

#     attributes_table do

#       row "Index" do link_to " <==  back", admin_girls_path end
#       row :name
#       row :photo_one do |photo|
#         image_tag photo.photo_one_url , size: "200x300"
#       end
#     end

#  end


end
