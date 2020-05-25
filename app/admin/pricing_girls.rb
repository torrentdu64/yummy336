ActiveAdmin.register PricingGirl do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :half, :forty_five, :hour, :outcall, :girl_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:half, :forty_five, :hour, :outcall, :girl_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #
  #
  # index do
  #     selectable_column

  #     column :girl do |photo|
  #       image_tag(photo.photo_one.url , size: "200x300") if photo.photo_one.present?
  #     end
  #     actions
  # end
  #@girl = Girl.find(id: )


end
