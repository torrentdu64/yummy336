ActiveAdmin.register Girl do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :shop_id,:name,:description,:age,:photo_one,:photo_two,:photo_three,:photo_four,:photo_five,:photo_six,:photo_seven,:photo_eight,:photo_nine,:photo_ten,{:services => [:bloodjob, :massage]}
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








  form do |f|
    f.input :shop_id, :input_html => {value: 3}, as: :hidden
    f.inputs "Girl Details" do
      f.input :name
      f.input :age
      f.input :description
      f.input :photo_one
      f.input :photo_two
      f.input :photo_three
      f.input :photo_four
      f.input :photo_five
      f.input :photo_six
      f.input :photo_seven
      f.input :photo_eight
      f.input :photo_nine
      f.input :photo_ten

    end

    f.inputs :name => "services", :for => :services do |g|
      g.input :bloodjob, as: :boolean , checked_value: 'true', unchecked_value: 'false'
      g.input :massage, as: :boolean, checked_value: 'true', unchecked_value: 'false'
    end

    f.actions
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
