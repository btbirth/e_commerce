class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  before_action :categories, :brands

	def categories
  		@categories = Category.all
  	end
  	def brands
  	@brands = Product.pluck(:brand).sort.uniq!
  		if @brands == nil
  			@brands = Product.pluck(:brand).sort
 		end
	end

	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
	end
end
