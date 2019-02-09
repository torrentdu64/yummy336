class ShopsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show]

   before_action :find_pincky, only: [ :show ]

  def show

  end

  private

  def find_pincky
    @shop =  Shop.find(1)
  end

end
