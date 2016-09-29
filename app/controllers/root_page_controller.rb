class RootPageController < CmsController
  def index
    @root_page = true
    @homepages = Homepage.all.to_a

    if request.post?
      redirect_to scrivito_path Obj.find(params[:homepage])
    end

  end

end
