class ShopsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show ]

   before_action :find_pinky, only: [ :show ]

  def show
  end

  private



  def find_pinky
    # slug name for the shop
    @shop =  Shop.find_by( title: "Pinky Girls")
  end

end
