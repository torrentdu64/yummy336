ActiveAdmin.register Girl do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :shop_id,:name,:description,:age,:photo_one,:photo_two,:photo_three,:photo_four,:photo_five,:photo_six,:photo_seven,:photo_eight,:photo_nine,:photo_ten,:origin,:service,:phone,:size,:height,:weight,:bust,:hair, :slug

  form girl: 'girl' do  |f|
    f.inputs 'messages' do
       f.semantic_errors *f.object.errors.keys

    end

    f.input :shop_id, :input_html => { :value => 1 }, as: :hidden
    f.inputs 'Organization Settings' do
     f.input :name

      f.input  :slug, label: ' Slug => Copy and paste Lady name no space no emoji !! '



     f.input :description
     f.input :age
     f.input :origin
     f.input :service
     f.input :phone
     f.input :size
     f.input :height
     f.input :weight
     f.input :bust
     f.input :hair
  end
  f.inputs 'Organization Settings' do
     f.input :photo_one
  end
  f.inputs 'Organization Settings' do
     f.input :photo_two
  end
  f.inputs 'Organization Settings' do
     f.input :photo_three
  end
  f.inputs 'Organization Settings' do
     f.input :photo_four
  end
  f.inputs 'Organization Settings' do
     f.input :photo_five
  end
  f.inputs 'Organization Settings' do
     f.input :photo_six
  end
  f.inputs 'Organization Settings' do
     f.input :photo_seven
  end
  f.inputs 'Organization Settings' do
     f.input :photo_eight
  end
  f.inputs 'Organization Settings' do
     f.input :photo_nine
  end
  f.inputs 'Organization Settings' do
     f.input :photo_ten
  end


    actions
  end











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
        image_tag(photo.photo_one.url , size: "200x300") if photo.photo_one.present?
      end
      actions
  end

  show do

    attributes_table do

      row "Index" do link_to " <==  back", admin_girls_path end
      row :name
      row :description
      row :age
      row :photo_one
      row :photo_two
      row :photo_three
      row :photo_four
      row :photo_five
      row :photo_six
      row :photo_seven
      row :photo_eight
      row :photo_nine
      row :photo_ten
      row :origin
      row :service
      row :phone
      row :size
      row :height
      row :weight
      row :bust
      row :hair
      row :photo_one do |photo|
        image_tag photo.photo_one_url , size: "200x300" if photo.photo_one.present?
      end
      row :photo_two do |photo|
        image_tag photo.photo_two_url , size: "200x300" if photo.photo_two.present?
      end
      row :photo_three do |photo|
        image_tag photo.photo_three_url , size: "200x300" if photo.photo_three.present?
      end
      row :photo_four do |photo|
        image_tag photo.photo_four_url , size: "200x300" if photo.photo_four.present?
      end
      row :photo_five do |photo|
        image_tag photo.photo_five_url , size: "200x300" if photo.photo_five.present?
      end
      row :photo_six do |photo|
        image_tag photo.photo_six_url , size: "200x300" if photo.photo_six.present?
      end
      row :photo_seven do |photo|
        image_tag photo.photo_seven_url , size: "200x300" if photo.photo_seven.present?
      end
      row :photo_eight do |photo|
        image_tag photo.photo_eight_url , size: "200x300" if photo.photo_eight.present?
      end
      row :photo_nine do |photo|
        image_tag photo.photo_nine_url , size: "200x300" if photo.photo_nine.present?
      end
      row :photo_ten do |photo|
        image_tag photo.photo_ten_url , size: "200x300" if photo.photo_ten.present?
      end
    end

 end



end
