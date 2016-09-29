class LoginPageController < CmsController

  def redirect
    redirect_to scrivito_path(LoginPage.instance, status: 301)
  end
end
