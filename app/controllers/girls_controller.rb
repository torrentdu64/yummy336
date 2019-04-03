class GirlsController < ApplicationController
  before_action :set_pinky, only: [:index, :show, :next, :prev]
  before_action :find_girl, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :next, :prev]


  def index
    @girls = Girl.all
  end

  def show
    # @shops = Shop.where.not(latitude: nil, longitude: nil)

    # @markers = @shops.map do |shop|
    #   {
    #     lng: shop.longitude,
    #     lat: shop.latitude,
    #     infoWindow: render_to_string(partial: "/shops/map_info", locals: { shop: shop })
    #   }
    # end

  end

  def next
    @girl = Girl.where("id > ?", id_params ).first

    if @girl == nil
      id_params
      redirect_to shop_girl_path( @shop ,@girl)
    else
      redirect_to shop_girl_path( @shop ,@girl)
    end
    raise
  end

  def prev
    @girl =  Girl.where("id < ?", id_params).last

    if @girl == nil
      id_params
      redirect_to shop_girl_path( @shop ,@girl)
    else
      redirect_to shop_girl_path( @shop ,@girl)
    end
    raise
  end

  private

  def id_params
   @girl = Girl.friendly.find(params[:girl_id])
  end



  def find_girl
    @girl = Girl.friendly.find(params[:id])
  end

  def set_pinky
   @shop =  Shop.friendly.find(params[:shop_id])
  end



end
