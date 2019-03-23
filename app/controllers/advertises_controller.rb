class AdvertisesController < ApplicationController
  before_action :set_pinky, only: [:index]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @ads = Advertise.all
  end

  private

  def set_pinky
    @shop =  Shop.find(params[:shop_id])
  end

end


