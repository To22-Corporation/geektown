class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role,
                                                       :first_name,
                                                       :first_name_kana,
                                                       :last_name, :last_name_kana,
                                                       :age, :collage_id,
                                                       { language_ids: [] },
                                                       :avatar
    ])
  end
end