Scrivito.configure do |config|
  config.editing_auth do |env|
    request = ActionDispatch::Request.new(env)
    if request.session[:user].present?
      Scrivito::User.system_user
    end
  end

  config.default_image_transformation = {
    quality: 35
  }
  config.inject_preset_routes = false
end
