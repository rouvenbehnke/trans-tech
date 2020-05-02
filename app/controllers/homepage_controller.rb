class HomepageController < CmsController

def default 
  redirect_to scrivito_path(Homepage.default)
end

end
