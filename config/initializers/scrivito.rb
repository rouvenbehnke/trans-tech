Scrivito.configure do |config|
  config.editing_auth do |env|
    request = ActionDispatch::Request.new(env)
    if request.session[:user].present?
      Scrivito::User.system_user
    end
  end

  config.default_image_transformation = {
    width: 2000, height: 2000
  }
  config.inject_preset_routes = false
end
