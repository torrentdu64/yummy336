class GirlsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_girl, only: :show

  def index
    @girls = Girl.all
  end

  def show
  end

  private

  def find_girl
    @girl = Girl.find(params[:id])
  end



end
