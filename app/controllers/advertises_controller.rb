class AdvertisesController < ApplicationController
  before_action :set_pinky, only: [:wechat]
  skip_before_action :authenticate_user!, only: [:wechat]

  def wechat
     @ads = Advertise.all
  end

  private

  def set_pinky
    @shop =  Shop.find(params[:shop_id])
  end

end


