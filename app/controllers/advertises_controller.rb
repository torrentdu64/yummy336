class AdvertisesController < ApplicationController
  before_action :set_pinky, only: [:wechat, :website, :instagram]
  skip_before_action :authenticate_user!, only: [:wechat, :website, :instagram]

  def wechat
     @ads = Advertise.all
  end

  def website
  end

  def instagram
  end

  private

  def set_pinky
    @shop =  Shop.find(params[:shop_id])
  end

end


