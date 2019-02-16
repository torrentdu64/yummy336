class GirlsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_pinky, only: [:index, :show]
  before_action :find_girl, only: :show

  def index
    @girls = Girl.all
  end

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

  def find_girl
    @girl = Girl.find(params[:id])
  end

  def set_pinky
   @shop =  Shop.find_by( title: "Pinky Girls")
  end


end
