class ShopsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show , :get_random_girl ]

   before_action :find_pinky, only: [ :show, :get_random_girl ]

  def show
    @shops = Shop.where.not(latitude: nil, longitude: nil)

    @markers = @shops.map do |shop|
      {
        lng: shop.longitude,
        lat: shop.latitude,
        infoWindow: render_to_string(partial: "/shops/map_info", locals: { shop: shop })
      }
    end

  end

  def get_random_girl
    @girl = Girl.order("RANDOM()").first
    redirect_to shop_girl_path( @shop ,@girl)
  end


  private





  def find_pinky
    # slug name for the shop
    @shop =  Shop.friendly.find_by( title: "Pinky Girls")
  end


end
