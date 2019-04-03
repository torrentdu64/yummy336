class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_locale
  before_action :default_url

  #before_action :redirect_subdomain

  def redirect_subdomain
    if request.host == 'pinkygirls.co.nz'
      redirect_to 'https://www.pinkygirls.co.nz' + request.fullpath, :status => 301
    end
  end

  private

  def set_locale
    I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  end

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  def default_url
    { host: ENV["HOST"] || "localhost:3000" }
  end

end
