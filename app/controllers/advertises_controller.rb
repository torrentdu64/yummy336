class AdvertisesController < ApplicationController
  before_action :set_pinky, only: [:wechat, :website, :instagram, :job, :whatapp]
  skip_before_action :authenticate_user!, only: [ :whatapp, :wechat, :website, :instagram, :job]

  def job
    @shops = Shop.where.not(latitude: nil, longitude: nil)

    @markers = @shops.map do |shop|
      {
        lng: shop.longitude,
        lat: shop.latitude,
        infoWindow: render_to_string(partial: "/shops/map_info", locals: { shop: shop })
      }
    end
  end

  def wechat
     @ads = Advertise.all
  end

  def whatapp
     @ads = Advertise.all
  end

  def website
  end

  def instagram
  end

  private

  def set_pinky
    @shop =  Shop.friendly.find(params[:shop_id])
  end

end


