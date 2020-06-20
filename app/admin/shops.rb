ActiveAdmin.register Shop do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id ,:title, :description, :photo_one, :phone, :address, :slug, :user_id

index do
  selectable_column
  column :id
  column :slug
  column :title
  column :description
  column :address
  column :phone
  # column :photo_one do |photo|
  #   image_tag(photo.photo_one_url , size: "200x300") if photo.photo_one.present?
  # end
  actions
end




# create_table "shops", force: :cascade do |t|
#     t.string "title"
#     t.text "description"
#     t.string "address"
#     t.string "phone"
#     t.bigint "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "photo_one"
#     t.float "latitude"
#     t.float "longitude"
#     t.index ["user_id"], name: "index_shops_on_user_id"
#   end












#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#

  form  shop: 'shop' do  |f|
    f.inputs 'Messages' do
      ul
        li f.semantic_errors
    end
    f.inputs 'setting info' do
      f.input :user_id, :as => :select, :collection => User.all
      f.input :title
      f.input :slug
      f.input :description
      f.input :address
      f.input :phone
    end
    # f.inputs 'photo' do
    #   f.input :photo_one
    # end
    actions
  end

  # controller do
  #   def new
  #     @girl = Shop.new
  #     super
  #   end

  #   def create
  #     @girl = Shop.new(params.require(:girl).permit(:id ,:title, :description, :photo_one, :phone, :address, :slug, :user_id))
  #     super
  #   end

  #   def edit
  #     @girl = Shop.find params[:id]
  #     super
  #   end

  #   def show
  #     @girl = Shop.find params[:id]
  #     super
  #   end

  #   def update
  #     @girl = Shop.find params[:id]
  #     super
  #   end
  # end

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
