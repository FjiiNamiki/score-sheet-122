class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth
  before_action :authenticate_user!, only: [:edit, :new, :destroy]

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :name, :age, :gender_id, :handle, :rim, :bowstring, :arrow, :other, :introduction])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:nickname, :name, :age, :gender_id, :handle, :rim, :bowstring, :arrow, :other, :introduction])
                                    end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
