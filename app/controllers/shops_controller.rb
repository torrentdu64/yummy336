class ShopsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show ]

   before_action :find_pinky, only: [ :show ]

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

  private



  def find_pinky
    # slug name for the shop
    @shop =  Shop.find_by( title: "Pinky Girls")
  end

end
