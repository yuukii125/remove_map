class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  PER_PAGE = 20
  def set_search
    @q = Salon.ransack(params[:q])
    @salons = @q.result(distinct: true).order(created_at: :desc).page(params[:page]).per(PER_PAGE)
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
  end
end
