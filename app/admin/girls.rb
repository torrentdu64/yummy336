ActiveAdmin.register Girl do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :shop_id,
              :name,
              :description,
              :age,
              :photo_one,
              :photo_two,
              :photo_three,
              :photo_four,
              :photo_five,
              :photo_six,
              :photo_seven,
              :photo_eight,
              :photo_nine,
              :photo_ten,
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
